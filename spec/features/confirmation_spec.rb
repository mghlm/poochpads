feature 'confirmation' do
  scenario 'shows selected date' do
    list_pad
    sign_up_owner
    click_button 'More Info'
    fill_in "booking_date", with: "2017/05/01"
    click_button 'Confirm Request'
    expect(page).to have_content 'Your booking is confirmed for the 2017/05/01'
  end
end
