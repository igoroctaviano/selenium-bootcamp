require 'selenium-webdriver'
require_relative '../pages/login'

describe 'Login' do

  before(:each) do
    chromedriver_path = File.join(File.absolute_path('../..', File.dirname(__FILE__)), "test", "browsers", "chromedriver")
    Selenium::WebDriver::Chrome.driver_path = chromedriver_path  
    @driver = Selenium::WebDriver.for :chrome
    @login = Login.new(@driver)
  end
  
  after(:each) do
    @driver.quit
  end
 
  it 'succeeded' do
    @login.with('igor', 'hahahaha')
    expect(@login.success_message_present?).to be(true)
  end

end