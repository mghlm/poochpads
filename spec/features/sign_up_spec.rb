feature 'Sign up' do

  scenario 'A new user can sign up' do
    expect{sign_up}.to change(User, :count).by 1
    expect(User.first.email).to eq('dog@gmail.com')
  end

  scenario 'User is sent to /pads when signed up succesfully' do
    sign_up
    expect(page).to have_current_path('/pads')
  end

  scenario 'password and password confirmation match' do
    expect{sign_up(password_confirmation: "wrong")}.not_to change(User, :count)
  end

  scenario 'email must have correct format' do
    expect{sign_up(email: 'wrong')}.not_to change(User, :count)
  end

  scenario 'will get an error message if email format incorrect' do
    sign_up(email: 'wrong')
    expect(page).to have_content 'Email has an invalid format'
  end
end
