def sign_up(email: 'dog@gmail.com',
            password: '123dog',
            password_confirmation: '123dog')
  visit('/users/new')
  fill_in(:email, with: email)
  # fill_in(:password, with: password)
  # fill_in(:password_confirmation, with: password_confirmation)
  click_button('Sign up')
end 
