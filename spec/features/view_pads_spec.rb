feature 'View the pads' do
  scenario 'User can view all pads' do
    visit '/pads'
    expect(page).to have_content('Book a pad')
  end
end
