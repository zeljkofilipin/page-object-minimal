require "watir-webdriver"

saucelabs_username = "zfilipin"
saucelabs_key = "" # secret

name = "firefox"
version = "36.0"
platform = "Linux"

caps = Selenium::WebDriver::Remote::Capabilities.send(name)
caps.version = version
caps.platform = platform
caps[:name] = "#{name} #{version} #{platform}"

browser = Watir::Browser.new(
  :remote,
  url: "http://#{saucelabs_username}:#{saucelabs_key}@ondemand.saucelabs.com:80/wd/hub",
  desired_capabilities: caps)
browser.goto "http://en.wikipedia.beta.wmflabs.org/wiki/Main_Page"
p browser.a(href: "/w/index.php?title=Main_Page&action=history").exist?
#p browser.a(href: /action=history/).exist?
browser.close
