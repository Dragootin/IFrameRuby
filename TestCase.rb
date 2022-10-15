require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path ="C:/RubyProjects/IFrameProject/IFrame/chromeDriver/chromedriver.exe"
driver=Selenium::WebDriver.for :chrome
driver.get("https://www.google.com/")
driver.manage.window.maximize
sleep 2


driver.find_element(:id, "L2AGLb").click
driver.find_element(:xpath, "//div[@id='gbwa']//a[@role='button']").click
sleep 2

iframe=driver.find_element(:name, "app")
driver.switch_to.frame iframe
sleep 1
driver.find_element(:partial_link_text,"mail").click
driver.switch_to.default_content
sleep 2
driver.navigate.back
sleep 3
driver.title.include?('Google')
driver.find_element(:xpath, "//div[@id='gbwa']//a[@role='button']").click
sleep 3
driver.switch_to.frame iframe
sleep 3
driver.switch_to.default_content
driver.find_element(:name, "q").send_keys ('Milos Stolic LinkedIn')
sleep 2
driver.find_element(:xpath, "//div[@id='gbwa']//a[@role='button']").click
driver.switch_to.frame iframe
sleep 2
driver.find_element(:partial_link_text,"mail").click
driver.switch_to.default_content
driver.title.include?('Google Maps')



