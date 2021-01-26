class Person
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key) #attr_accessor is a class method
      self.send(("#{key}="), value)  #interpolate key cuz it'll be the name of the setter/getter methods
    end 
  end 
end