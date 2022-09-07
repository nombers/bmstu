class Person     
    def greeting 
        "Hello!"
    end
    def greet_by_name(name)
        "Hello, #{ name }!"
    end
end

class Friend < Person
    def greeting
        basic_greeting = super
        "#{ basic_greeting } Glad to see you!"
    end
    def greet_by_name(name)
        basic_greeting = super(name)
        "#{ basic_greeting } Glad to see you!"
    end
end

puts Friend.new.greeting
puts Friend.new.greet_by_name("Meghan")