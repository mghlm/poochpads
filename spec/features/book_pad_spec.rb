feature 'More Info' do
  scenario 'button redirects to specific request page' do
    sign_up
    create_listing
    visit '/pads'
    click_button ('More Info')
    expect(current_path).to eq '/pads/request'
    expect(page).to have_content ('House by the sea')
    expect(page).to have_content ('999')
    expect(page).to have_content ('Brighton')
    expect(page).to have_content ('A b-e-a utiful house')
  end

  scenario 'Will only show Confirm Request button' do
    list_pad
    sign_up_owner
    click_button ('More Info')
    expect(page).to have_selector(:link_or_button, 'Confirm Request')
  end

  scenario 'Displays calander that user can pick a date from' do
    list_pad
    sign_up_owner
    click_button ('More Info')
    expect(page).to have_content('Choose Date')
  end

  scenario 'User cannot book own pad' do
    sign_up
    create_listing
    click_button('More Info')
    fill_in(:booking_date, with: '21/04/2018')
    click_button('Confirm Request')
    expect(page).to have_content('Error, you cannot book your own pad')
    expect(Pad.first.available).to be_truthy
  end

  scenario 'must specify date before booking' do
    list_pad
    sign_up_owner
    click_button('More Info')
    click_button('Confirm Request')
    expect(page).to have_content("Error, please specify a date")
  end
  
end
