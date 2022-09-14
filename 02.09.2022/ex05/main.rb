class Animal 

    attr_reader :name, :age

    def name=(value)
        if value == ""
            raise "Name can't be blank!"
        end
        @name = value
    end

    def age=(value)
        if value < 0
            raise "An age of #{value} isn't valid!"
        end
        @age = value
    end

    def move(destination)
        puts "#{@name} runs to the #{ destination }."
    end

    def report_age
        puts "#{@name} is #{@age} years old."
    end

end

class Dog < Animal
    def to_s
        "#{ @name } the dog, age #{ @age }"
    end
    def talk
        puts "#{@name} says Bark!"
    end
end

class Bird < Animal
    def to_s
        "#{ @name } the bird, age #{ @age }"
    end

    def talk
        puts "#{@name} says Chirp! Chirp!"
    end
end

class Cat < Animal

    def to_s
        "#{ @name } the cat, age #{ @age }"
    end
    
    def talk
        puts "#{@name} says Meow!"
    end
end

class Armadillo < Animal
    def move(destination)
        puts "#{ @name } unrolls!"
        super
    end
end

wisk = Cat.new
wisk.name  = "Wisker"
fido = Dog.new
fido.name = "Fido"
polly = Bird.new
polly.name = "Polly"

polly.age = 2
polly.report_age
fido.move("yard")
wisk.talk

dillon = Armadillo.new
dillon.name = "Dillon"
dillon.move("burrow")

puts polly, dillon