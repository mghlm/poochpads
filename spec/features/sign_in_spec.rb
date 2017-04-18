feature 'Log in' do

  scenario 'User is sent to /pads after successfully signed in' do
    sign_up
    sign_in
    expect(page).to have_current_path('/pads')
  end

end
