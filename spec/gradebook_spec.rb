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

  it "adds courses to the gradebook" do
    gradebook = Gradebook.new("Mr. Smith")
    calculus = Course.new("Calculus", 3)
    gradebook.add_course(calculus)
    expect(gradebook.courses).to eq([calculus])
  end
end