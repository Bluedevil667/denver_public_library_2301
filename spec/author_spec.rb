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

  it 'can write a book' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    # require 'pry'; binding.pry
    expect(jane_eyre.class).to eq Book
    expect(jane_eyre.title).to eq("Jane Eyre")
  end

  it 'can have an array of books' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = charlotte_bronte.write("Villette", "1853")
    expect(charlotte_bronte.books).to eq([jane_eyre,villette])
  end
end