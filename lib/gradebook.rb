class Gradebook
  attr_reader :instructor, 
              :courses,   
              :students

  def initialize(instructor)
    @instructor = instructor
    @courses = []
    @students = []
  end
end