require "selenium-webdriver"

profile = Selenium::WebDriver::Firefox::Profile.new
profile["webdriver.firefox.logfile"] = "/Users/z/Desktop/logfile/firefox.log"

driver = Selenium::WebDriver.for :firefox, profile: profile
driver.get "http://en.wikipedia.beta.wmflabs.org/wiki/Main_Page"
driver.quit
