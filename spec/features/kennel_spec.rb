feature 'view kennel' do
  scenario 'dog-lord can view their listed pads' do
    sign_up
    create_listing
    click_button 'My Kennel'
    expect(page).to have_content('House by the Sea')
  end
end
