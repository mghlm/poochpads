feature 'View the pads' do
  scenario 'User can visit pads page' do
    sign_up
    create_listing
    expect(page).to have_content('House by the Sea')
  end

  scenario 'Dog owner can see availibility of listed pads' do
    sign_up
    create_listing
    expect(page).to have_content('House by the Sea is available for good boys')
  end
end
