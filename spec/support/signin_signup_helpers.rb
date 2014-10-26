module SigninSignupHelpers

  def sign_in(user, options={})
    if options[:no_capybara]
      # Sign in when not using Capybara.
      remember_token = User.new_remember_token
      cookies[:remember_token] = remember_token
      user.update_attribute(:remember_token, User.digest(remember_token))
    else
      visit signin_path
      fill_in "Email",    with: user.email
      fill_in "Password", with: user.password
      click_button "Sign in"
    end
  end

  def valid_signup(user)
    fill_in "Name",         with: user.name
    fill_in "Email",        with: user.email
    fill_in "Password",     with: user.password
    fill_in "Confirmation", with: user.password_confirmation
  end

end
