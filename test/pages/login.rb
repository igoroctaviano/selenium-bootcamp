class Login

  LOGIN_FORM = { id: 'login' }
  USERNAME_INPUT = { id: 'username' }
  PASSWORD_INPUT = { id: 'password' }
  SUCCESS_MESSAGE = { css: '.success' }

  def initialize(driver)
    @driver = driver
    @driver.get 'http://selenium-bootcamp.herokuapp.com'
  end

  def with(username, password)
    @driver.find_element(USERNAME_INPUT).send_keys username 
    @driver.find_element(PASSWORD_INPUT).send_keys password 
    @driver.find_element(LOGIN_FORM).submit
  end

  def success_message_present?
    @driver.find_element(SUCCESS_MESSAGE).displayed?
  end

end