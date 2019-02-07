Given("I access the bbc login page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.click_signin
 end

Given("I input incorrect username details") do
  @bbc_site.bbc_siginpage.fill_in_username('apple1987@banna.com')
end

Given("I input incorrect password details") do
  @bbc_site.bbc_siginpage.fill_in_password('password123')
end

When("I try to login") do
  @bbc_site.bbc_siginpage.click_sigin
end

Then("I receive an error for not finding the account") do
  expect(@bbc_site.bbc_siginpage.read_error).to eq @bbc_site.bbc_siginpage.error
end