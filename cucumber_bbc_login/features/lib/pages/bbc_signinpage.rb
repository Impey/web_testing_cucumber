require 'capybara/dsl'


class Bbcsigninpage
  include Capybara::DSL
  attr_accessor :error, :errorshortpass, :erroruser, :erroremptypass
  #Page objects
  USERNAME = 'user-identifier-input'
  PASSWORD = 'password-input'
  SIGNIN_BTN = 'submit-button'
  ERROR_MSG = 'form-message-username'
  ERROR_PASS_SHORT = 'form-message-password'
 

  def initialize
    @error = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
    @errorshortpass = 'Sorry, that password is too short. It needs to be eight characters or more.'
    @erroruser = 'Usernames can only include... Letters, numbers and these characters: ?/|}{+=_-^~`%$#'
    @erroremptypass = "Something's missing. Please check and try again."
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

  def read_pass_error
    find(:id,ERROR_PASS_SHORT).text
  end

  def read_user_error
    find(:id,ERROR_MSG).text
  end

end