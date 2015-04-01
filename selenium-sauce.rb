require "selenium-webdriver"

saucelabs_username = "zfilipin"
saucelabs_key = "" # secret

name = "firefox"
version = "36.0"
platform = "Linux"

caps = Selenium::WebDriver::Remote::Capabilities.send(name)
caps.version = version
caps.platform = platform
caps[:name] = "#{name} #{version} #{platform}"

driver = Selenium::WebDriver.for(
  :remote,
  url: "http://#{saucelabs_username}:#{saucelabs_key}@ondemand.saucelabs.com:80/wd/hub",
  desired_capabilities: caps)

driver.get "http://en.wikipedia.beta.wmflabs.org/wiki/Main_Page"
p driver.find_element(css: "a[href='/w/index.php?title=Main_Page&action=history']").displayed?
#p driver.find_element(css: "a[href*='action=history']").displayed?
driver.quit
