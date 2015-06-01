require 'helper'
require 'traject/alephsequential_reader'

describe "Basics" do
  before do
    @reader = Traject::AlephSequentialReader.new File.open('test/two.seq'), {}
  end
  it "reads a record" do
    r = @reader.first
    assert_equal 'Corregidor; glory ... ghosts ... and gold.', r.fields('245').first['a']
  end
  it "gets them all" do
    assert_equal 2, @reader.count
  end
end

describe "Deals with bad records" do
  it "doesn't return a bad record" do
    reader = Traject::AlephSequentialReader.new(File.open('test/no_leader.seq'), {})
    r = reader.first
    assert_nil r
  end

  it  "rumbles along after finding bad record" do
    reader = Traject::AlephSequentialReader.new(File.open('test/three_good_one_bad.seq'), {})
    all_records = reader.to_a
    assert_equal 3, all_records.size
  end
end
