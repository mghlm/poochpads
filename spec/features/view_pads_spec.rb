feature 'View the pads' do
  scenario 'User can visit pads page' do
    visit '/pads'
    expect(page).to have_content('Book a pad')
  end
end
