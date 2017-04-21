feature 'view kennel' do
  scenario 'dog-lord can view their listed pads' do
    sign_up
    create_listing
    click_button 'My Kennel'
    expect(page).to have_content('House by the sea')
  end

  scenario 'dog-lord can view bookings for their pads' do
    list_pad
    sign_up_owner
    click_button 'More Info'
    fill_in 'booking_date', with: "2017/05/01"
    click_button 'Confirm Request'
    click_button 'Sign out'
    sign_in
    click_button 'My Kennel'
    expect(page).to have_content '2017/05/01'
  end

end
