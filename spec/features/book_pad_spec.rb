feature 'Book pad' do
  scenario 'pad should be not booked by default' do
    sign_up
    create_listing
    visit '/pads'
    click_button ('Book Pad')
    expect(current_path).to eq '/pads/1'
  end
end
