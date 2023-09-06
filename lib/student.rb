class Student
  attr_reader :name, :age, :scores
  
  def initialize(attributes)
    @name = attributes[:name]
    @age = attributes[:age]
    @scores = []
  end

  def log_score(test_score)
    @scores << test_score
  end

  def grade
    @scores.sum.to_f/2
  end
end
