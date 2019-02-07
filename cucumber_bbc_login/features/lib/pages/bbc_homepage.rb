require 'capybara/dsl'

class BbcHomepage
  include Capybara::DSL
 
  #page objects
  HOMEPAGE_URL = 'https://www.bbc.co.uk'
  SIGIN_BTN = 'idcta-link'

    
  def visit_homepage
     visit(HOMEPAGE_URL)
  end

  def click_signin
    find(:id, SIGIN_BTN).click
  end
end