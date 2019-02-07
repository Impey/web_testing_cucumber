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

Given("I input a password that is too short") do
  @bbc_site.bbc_siginpage.fill_in_password('pass')
end

Then("I receive an error saying the password is too short") do
  expect(@bbc_site.bbc_siginpage.read_pass_error).to eq @bbc_site.bbc_siginpage.errorshortpass
end

Given("I input wrong characters in username") do
  @bbc_site.bbc_siginpage.fill_in_username('t.')
end

Then("I receive an error saying the username is incorrect") do
  expect(@bbc_site.bbc_siginpage.read_user_error).to eq @bbc_site.bbc_siginpage.erroruser
end

Given("I input username") do
  @bbc_site.bbc_siginpage.fill_in_username('t.s.impey@gmail')
end

Then("I receive an error saying the password field is empty") do
  expect(@bbc_site.bbc_siginpage.read_pass_error).to eq @bbc_site.bbc_siginpage.erroremptypass
end

Given("I input a password of only numbers") do
  @bbc_site.bbc_siginpage.fill_in_password('1234567899')
end

Then("I receive an error saying the password field requires letters") do
  expect(@bbc_site.bbc_siginpage.read_pass_error).to eq @bbc_site.bbc_siginpage.numonlypass
end

Given("I input a password of only letters") do
  @bbc_site.bbc_siginpage.fill_in_password('jefjefjefjjefjef')
end

Then("I receive an error saying the password field requires numbers") do
  expect(@bbc_site.bbc_siginpage.read_pass_error).to eq @bbc_site.bbc_siginpage.letteronlypass
end

Given("I input username that is too short") do
  @bbc_site.bbc_siginpage.fill_in_username('t')
end

Given("I input a password") do
  @bbc_site.bbc_siginpage.fill_in_password('hellomynamejeff23')
end

Then("I receive an error saying the username is too short") do
  expect(@bbc_site.bbc_siginpage.read_user_error).to eq @bbc_site.bbc_siginpage.shortuser
end