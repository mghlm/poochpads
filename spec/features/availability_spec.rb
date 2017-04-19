feature 'Availability' do

  scenario 'available is set to true as default' do
    sign_up
    create_listing
    expect(Pad.first.available).to be_truthy
  end

  scenario 'availability changes from true to false after request is made' do
    list_pad
    sign_up_owner
    click_button('Book Pad')
    click_button('Confirm Request')
    expect(page).to have_content('You successfully booked the following pad:')
    # expect(Pad.first.available).to be_falsy
    visit('/pads')
    expect(page).to have_content('is full of poochies at the moment')
  end
end
