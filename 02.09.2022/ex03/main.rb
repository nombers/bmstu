class Dog
    
    attr_accessor :name, :age

    def report_age
        puts "#{@name} is #{@age} years old."
    end
end

dog = Dog.new

dog.name = "SHOT"
dog.age = 228
dog.report_age