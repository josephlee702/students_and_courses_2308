class Gradebook
  attr_reader :instructor, 
              :courses,   
              :students

  def initialize(instructor)
    @instructor = instructor
    @courses = []
    @students = []
  end

  def add_course(course_name)
    @courses << course_name
  end
end