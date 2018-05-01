require_relative './spec_helper.rb'
require_relative '../summer_olympics_hash.rb'
require 'pry'

describe "create_olympics_hash" do
  it 'returns the correct keys and values' do
    hash = create_olympics_hash
    expect(hash).to be_a(Hash), "create_olympics_hash should return a hash"
    expect(hash).to have_key(:Sydney), "Sydney is missing from the hash keys"
    expect(hash).to have_key(:Athens), "Athens is missing from the hash keys"
    expect(hash).to have_key(:Beijing), "Beijing is missing from the hash keys"
    expect(hash).to have_key(:London), "London is missing from the hash keys"
    expect(hash[:Sydney].to_str).to eq("2000"), "The key Sydney does not refer to the value 2000 or '2000'"
    expect(hash[:Athens].to_str).to eq("2004"), "The key Athens does not refer to the value 2004 or '2004'"
    expect(hash[:Beijing].to_str).to eq("2008"), "The key Beijing does not refer to the value 2008 or '2008'"
    expect(hash[:London].to_str).to eq("2012"), "The key London does not refer to the value 2012 or '2012'"
  end
end

describe "add_a_key_value_pair" do
  it 'adds a new key value pair to the previous hash and returns it' do
    hash = add_a_key_value_pair
    expect(hash).to be_a(Hash), "create_olympics_hash should return a hash"
    expect(hash).to have_key(:Sydney), "Sydney is missing from the hash keys"
    expect(hash).to have_key(:Athens), "Athens is missing from the hash keys"
    expect(hash).to have_key(:Beijing), "Beijing is missing from the hash keys"
    expect(hash).to have_key(:London), "London is missing from the hash keys"
    expect(hash).to have_key(:Atlanta), "Atlanta is missing from the hash keys"
    expect(hash[:Sydney].to_str).to eq("2000"), "The key Sydney does not refer to the value 2000 or '2000'"
    expect(hash[:Athens].to_str).to eq("2004"), "The key Athens does not refer to the value 2004 or '2004'"
    expect(hash[:Beijing].to_str).to eq("2008"), "The key Beijing does not refer to the value 2008 or '2008'"
    expect(hash[:London].to_str).to eq("2012"), "The key London does not refer to the value 2012 or '2012'"
    expect(hash[:Atlanta].to_str).to eq("1996"), "The key London does not refer to the value 1996 or '1996'"
  end
end

describe "iterate_through_hash" do
  it 'iterates over and puts each key value pair in the hash created by add_a_key_value_pair' do
    expectation = expect {
      iterate_through_hash
    }
    expectation.to output(/The Sydney summer olympics took place in 2000./).to_stdout
    expectation.to output(/The Athens summer olympics took place in 2004./).to_stdout
    expectation.to output(/The Beijing summer olympics took place in 2008./).to_stdout
    expectation.to output(/The London summer olympics took place in 2012./).to_stdout
    expectation.to output(/The Atlanta summer olympics took place in 1996./).to_stdout
  end
end

describe "iterate_through_hash" do
  it 'iterates over each key, creating a new array of upcased city names, then puts these names on the CLI' do
    expectation = expect {
      iterate_through_keys
    }

    expectation.to output(/SYDNEY/).to_stdout, "SYDNEY not output. Make sure to first convert all hash keys to upcase, use these to create an array and then iterate over the array"
    expectation.to output(/ATHENS/).to_stdout, "ATHENS not output. Make sure to first convert all hash keys to upcase, use these to create an array and then iterate over the array"
    expectation.to output(/BEIJING/).to_stdout, "BEIJING not output. Make sure to first convert all hash keys to upcase, use these to create an array and then iterate over the array"
    expectation.to output(/LONDON/).to_stdout, "LONDON not output. Make sure to first convert all hash keys to upcase, use these to create an array and then iterate over the array"
    expectation.to output(/ATLANTA/).to_stdout, "ATLANTA not output. Make sure to first convert all hash keys to upcase, use these to create an array and then iterate over the array"
  end
end
