feature 'My Bookings' do
  scenario 'If no bookings will have empty message' do
    sign_up_owner
    click_button 'My Bookings'
    expect(page).to have_content('You have no bookings')
  end

  scenario 'If we make a booking it shows up in My Bookings' do
    list_pad
    sign_up_owner
    click_button 'More Info'
    fill_in "booking_date", with: "2017/05/01"
    click_button 'Confirm Request'
    click_button 'My Bookings'
    expect(page).to have_content('House by the sea')
  end
end
