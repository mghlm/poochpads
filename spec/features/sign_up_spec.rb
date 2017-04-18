feature 'Sign up' do

  scenario 'A new user can sign up' do
    expect{sign_up}.to change(User, :count).by 1
  end

end
