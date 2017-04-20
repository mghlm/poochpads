feature 'Book pad' do
  scenario 'button redirects to specific request page' do
    sign_up
    create_listing
    visit '/pads'
    click_button ('Book Pad')
    expect(current_path).to eq '/pads/request'
    expect(page).to have_content ('House by the Sea')
    expect(page).to have_content ('999')
    expect(page).to have_content ('Brighton')
    expect(page).to have_content ('A b-e-a utiful house')
  end

  scenario 'Will only show book pad button if available' do
    list_pad
    sign_up_owner
    click_button ('Book Pad')
    expect(page).to have_selector(:link_or_button, 'Confirm Request')
  end

  scenario 'Will not show book pad button if not available' do
    list_pad
    sign_up_owner
    click_button ('Book Pad')
    click_button ('Confirm Request')
    visit '/pads'
    click_button ('Book Pad')
    expect(page).to_not have_selector(:link_or_button, 'Confirm Request')
    expect(page).to have_content ('This pad is full of poochies at the moment!')
  end
end
