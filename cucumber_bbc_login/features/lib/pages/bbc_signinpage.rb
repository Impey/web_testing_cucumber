require 'capybara/dsl'


class Bbcsigninpage
  include Capybara::DSL
  attr_accessor :error
  #Page objects
  USERNAME = 'user-identifier-input'
  PASSWORD = 'password-input'
  SIGNIN_BTN = 'submit-button'
  ERROR_MSG = 'form-message-username'

  def initialize
    self.error = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
  end
  
  
  def fill_in_username(user)
    fill_in(USERNAME, :with => user)
  end

  def fill_in_password(pass)
    fill_in(PASSWORD, :with => pass)
  end

  def click_sigin
    find(:id,SIGNIN_BTN).click
  end

  def read_error
    find(:id,ERROR_MSG).text
  end

end