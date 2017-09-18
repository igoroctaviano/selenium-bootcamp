require 'selenium-webdriver'

describe 'Login' do
  
  before :each do  
    @driver = Selenium::webdriver.for :firefox
  end

  after :each do
    @driver.quit
  end

  it 'succeeded' do
    @driver.get 'http://selenium-bootcamp.herokuapp.com/'
    @driver.find_element(id: 'username').send_keys 'username'
    @driver.find_element(id: 'password').send_kets 'password'
    @driver.find_element(id: 'login').submit
    @driver.find_element(css: '.flash.success').displayed?.should be_true
  end

end

