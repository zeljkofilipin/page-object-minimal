require "page-object"
class HomePage
  include PageObject
  page_url "http://en.wikipedia.beta.wmflabs.org/wiki/Main_Page"
  #page_url "http://127.0.0.1:8080/wiki/Main_Page"
  a(:view_history, href: "/w/index.php?title=Main_Page&action=history")
  #a(:view_history, href: /action=history/)
end

require "selenium-webdriver"
profile = Selenium::WebDriver::Firefox::Profile.new
profile["webdriver.log.file"] = "~/Documents/github/zeljkofilipin/page-object-minimal/firefox.log"
@browser = Selenium::WebDriver.for :firefox, profile: profile
home_page = HomePage.new(@browser)

require 'page-object/page_factory'
include PageObject::PageFactory
visit HomePage
p on(HomePage).view_history_element.exists?
@browser.close
