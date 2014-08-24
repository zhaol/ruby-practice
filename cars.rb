class Cars
  @number_of_wheels = 4 # generally don't change
  
  def self.wheels?
    @number_of_wheels
  end
  
  def initialize(color, miles)  
    @color = color # different with each new instance
    @miles = miles # different with each new instance
  end

  def color?
    @color
  end
  
  def miles?
    @miles
  end
  
  def drive_for(years, miles_per_year)
    @miles = @miles + years * miles_per_year
  end
end