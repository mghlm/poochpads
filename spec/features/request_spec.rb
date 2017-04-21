feature 'request pad' do
  scenario 'Lists booked dates for pad' do
    list_pad
    sign_up_owner
    click_button('More Info')
    fill_in(:booking_date, with: '21/04/2017')
    click_button('Confirm Request')
    visit('/pads/request')
    expect(page).to have_content('21/04/2017')
  end

end
