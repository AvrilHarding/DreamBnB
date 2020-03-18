require 'space'

describe Space do
  it 'can add a space' do
    space = Space.create(space_name: "Sunny Appartment", space_description: "Well located and sunny apartment", space_price: "£500 per month")

    expect(space.name).to eq "Sunny Appartment"
    expect(space.description).to eq "Well located and sunny apartment"
    expect(space.price).to eq "£500 per month"
  end
end
