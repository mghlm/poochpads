feature 'Availability' do

  scenario 'available is set to true as default' do
    sign_up
    create_listing
    expect(Pad.first.available).to be_truthy
  end


end
