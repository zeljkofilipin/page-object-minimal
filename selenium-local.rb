require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.get "http://en.wikipedia.beta.wmflabs.org/wiki/Main_Page"

p driver.find_element(css: "a[href='/w/index.php?title=Main_Page&action=history']").displayed?
#p driver.find_element(css: "a[href*='action=history']").displayed?

driver.quit
