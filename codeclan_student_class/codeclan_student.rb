class Student
  attr_accessor :name, :cohort
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def talk()
    return "I can talk"
  end

  def say_fav_language(language)
    return "I Love #{language}!"
    
  end

end
