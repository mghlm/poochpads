feature 'Sign up' do

  scenario 'A new user can sign up' do
    expect{sign_up}.to change(User, :count).by 1
    expect(User.first.email).to eq('dog@gmail.com')
  end

  scenario 'password and password confirmation match' do
    expect{sign_up(password_confirmation: "wrong")}.not_to change(User, :count)
  end
end
