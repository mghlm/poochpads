module ListingHelpers

  def create_listing(name: 'House by the Sea',
                     price: '999',
                     location: 'Brighton',
                     about: 'A b-e-a utiful house that will make your dog\'s tail wag so much you\'ll have to go to the vet')
    visit '/pads'
    click_button 'List a Pad'
    fill_in(:name, with: name)
    fill_in(:price, with: price)
    fill_in(:location, with: location)
    fill_in(:about, with: about)
    click_button('Submit')
  end
end
