module ListingHelpers

  def create_listing(name: 'House by the Sea')
    visit '/pads/new'
    fill_in :name, with: name
    click_button 'Submit'
  end
end
