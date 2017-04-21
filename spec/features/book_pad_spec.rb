feature 'More Info' do
  scenario 'button redirects to specific request page' do
    sign_up
    create_listing
    visit '/pads'
    click_button ('More Info')
    expect(current_path).to eq '/pads/request'
    expect(page).to have_content ('House by the Sea')
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
end
