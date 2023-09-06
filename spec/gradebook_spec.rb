require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
  it "exists" do
    gradebook = Gradebook.new("Mr. Smith")
  end
end