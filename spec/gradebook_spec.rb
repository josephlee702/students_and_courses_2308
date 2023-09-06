require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
  it "exists" do
    gradebook = Gradebook.new("Mr. Smith")
    expect(gradebook).to be_instance_of(Gradebook)
  end

  it "checks the instructor and courses" do
    gradebook = Gradebook.new("Mr. Smith")
    expect(gradebook.instructor).to eq("Mr. Smith")
    expect(gradebook.courses).to eq([])
  end
end