feature 'Log in' do

  scenario 'User is sent to /pads after successfully signed in' do
    sign_up
    sign_in
    expect(page).to have_current_path('/pads')
  end

  scenario 'User is not sent anywhere if login is not successful' do
    sign_up
    click_button('Sign out')
    sign_in(password: 'wrong')
    expect(page).to have_content('Email:')
  end


end
