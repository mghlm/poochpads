feature 'View the pads' do
  scenario 'User can visit pads page' do
    visit '/pads/new'
    fill_in :name, with: "Nazs Pad"
    click_button "Submit"
    expect(page).to have_content('Nazs Pad')
  end

end
