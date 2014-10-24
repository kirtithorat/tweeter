module SigninSignupHelpers

	def valid_signin(user)
		fill_in "Email",    with: user.email
		fill_in "Password", with: user.password
		click_button "Sign in"
	end

	def valid_signup(user)
		fill_in "Name",         with: user.name
		fill_in "Email",        with: user.email
		fill_in "Password",     with: user.password
		fill_in "Confirmation", with: user.password_confirmation
	end

end
