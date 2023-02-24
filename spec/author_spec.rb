require 'spec_helper'
RSpec.describe Author do 
  it 'exists' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    expect(charlotte_bronte).to be_an_instance_of Author
  end

  it 'has atributes' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    expect(charlotte_bronte.first_name).to eq("Charlotte")
    expect(charlotte_bronte.last_name).to eq("Bronte")
    expect(charlotte_bronte.books).to eq([])
  end
end