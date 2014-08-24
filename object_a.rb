class ObjectA
  @@class_variable         = 'avoid using class variables'
  @instance_class_variable = 'sometimes necessary to use instance class variables'
  
  def initialize(argument1, argument2)
    @instance_variable1 = argument1
    @instance_variable2 = argument2
  end
  
  def self.class_method
    'available to the object class'
  end
  
  def self.set_instance_class_variable(local_variable)
    @instance_class_variable = local_variable
  end
  
  def self.get_instance_class_variable
    @instance_class_variable
  end
  
  def instance_method
    'available to an instance of the object'
  end
  
  def get_instance_variable1
    @instance_variable1 # no 'return' statement is necessary; automatically returns output of last statement
  end
  
  def set_instance_variable1(local_variable)
    @instance_variable1 = local_variable #local variables are not accessible outside of 'set_instance_variable1' instance method
  end
  
  def change_instance_variable2_to_a_string
    @instance_variable2 = 'is now a string' # variables can change types automagically
  end
  
  def change_instance_variable2_to_a_number
    @instance_variable2 = 999 # variables can change types automagically
  end
  
  def get_instance_variable2
    @instance_variable2
  end
end