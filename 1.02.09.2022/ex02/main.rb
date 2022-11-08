class Dog
    def talk 
        puts "Bark!"
    end

    def move(destination)
        puts "Running to the #{destination}"
    end
end

fido = Dog.new


fido.talk
fido.move('food bowl')