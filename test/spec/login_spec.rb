require 'selenium-webdriver'

describe 'Login' do
  
  before :each do
    chromedriver_path = File.join(File.absolute_path('../..', File.dirname(__FILE__)), "test", "browsers", "chromedriver")
    Selenium::WebDriver::Chrome.driver_path = chromedriver_path  
    @driver = Selenium::WebDriver.for :chrome
  end

  after :each do
    @driver.quit
  end

  it 'succeeded' do
    @driver.get 'http://selenium-bootcamp.herokuapp.com/'
    @driver.find_element(id: 'username').send_keys 'username'
    @driver.find_element(id: 'password').send_keys 'password'
    @driver.find_element(id: 'login').submit
    @driver.find_element(css: '.success').displayed?.should be_true
  end

end

