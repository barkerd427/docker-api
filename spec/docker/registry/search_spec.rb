require 'spec_helper'

describe Docker::Registry::Search do
  subject { described_class.new(Docker::Registry::Connection.new)}
  it "should return list of images", :vcr do
    tags = subject.tags('ruby')
    puts tags.join(', ')
  end
end