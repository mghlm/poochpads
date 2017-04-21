feature 'Availability' do

  scenario 'available is set to true as default' do
    sign_up
    create_listing
    expect(Pad.first.available).to be_truthy
  end

  scenario 'availability changes from true to false after request is made' do
    list_pad
    sign_up_owner
    click_button('More Info')
    fill_in(:booking_date, with: "2018/01/01")
    click_button('Confirm Request')

    expect(page).to have_content('You successfully booked:')

    expect(page).to have_content('You successfully booked the following pad:')

    visit('/pads')
    expect(page).to have_content('Fully Booked')
  end
end
