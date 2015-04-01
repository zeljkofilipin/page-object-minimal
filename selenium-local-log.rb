require "selenium-webdriver"

profile = Selenium::WebDriver::Firefox::Profile.new
profile["webdriver.log.file"] = "~/Documents/github/zeljkofilipin/page-object-minimal/firefox.log"

driver = Selenium::WebDriver.for :firefox, profile: profile
driver.get "http://en.wikipedia.beta.wmflabs.org/wiki/Main_Page"

p driver.find_element(css: "a[href='/w/index.php?title=Main_Page&action=history']").displayed?
#p driver.find_element(css: "a[href*='action=history']").displayed?

driver.quit
