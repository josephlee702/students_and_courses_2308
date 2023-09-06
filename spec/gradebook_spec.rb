require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
  before(:each) do
    @calculus = Course.new("Calculus", 2)
    @joseph = Student.new({name: "Joseph", age: 26})
    @jane = Student.new({name: "Jane", age: 25})
    @calculus.enroll(@joseph)
    @calculus.enroll(@jane)
    @gradebook = Gradebook.new("Mr. Smith")
  end
  
  it "exists" do
    expect(@gradebook).to be_instance_of(Gradebook)
    expect(@gradebook.instructor).to eq("Mr. Smith")
    expect(@gradebook.courses).to eq([])
  end

  it "adds courses" do
    @gradebook.add_course(@calculus)
    expect(@gradebook.courses).to eq([@calculus])
  end

  it "lists all students" do
    @gradebook.add_course(@calculus)
    expect(@gradebook.list_all_students).to eq({
      @calculus => [@joseph, @jane]
    })
  end
end