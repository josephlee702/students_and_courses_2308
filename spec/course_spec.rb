require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  it "exists" do
    course = Course.new("Calculus", 2)
    expect(course).to be_instance_of(Course)
  end

  it "checks course details" do
    course = Course.new("Calculus", 2)
    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
    expect(course.students).to eq([])
  end

  it "checks if course is full" do
    course = Course.new("Calculus", 2)
    expect(course.full?).to be false
  end
end
