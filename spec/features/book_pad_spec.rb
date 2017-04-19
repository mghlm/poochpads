feature 'Book pad' do
  scenario 'button redirects to specific request page' do
    sign_up
    create_listing
    visit '/pads'
    click_button ('Book Pad')
    expect(current_path).to eq '/pads/request'
    expect(page).to have_content ('House by the Sea')
  end
end
