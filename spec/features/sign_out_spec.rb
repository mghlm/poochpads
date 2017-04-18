feature 'User signs out' do

  scenario 'User is sent to login page after signing out' do
    sign_up
    click_button('Sign out')
    expect(page).to have_current_path('/sessions/new')
  end
end 
