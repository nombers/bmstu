class RecursComp
    def compile(str)
        @str, @index = str, 0
        compileF
    end
    
    private
  
    def compileF
        compileC
        compileT
        compileC
        return if @index >= @str.length
        cur = @str[@index].chr 
        if cur == '+' or cur == '-'
            @index += 1
            compileC
            compileF
            print "#{cur} "
        end
    end
    def compileT
        compileC
        compileM
        compileC
        return if @index >= @str.length
        cur = @str[@index].chr
        if cur == '*' or cur == '/' or cur == '%'
            @index += 1
            compileC
            compileT
            compileC
            print "#{cur} "
        end
    end
    def compileM
        compileC
        return if @index >= @str.length
        if @str[@index].chr == '(' or @str[@index].chr == '[' or @str[@index].chr == '{'
            @index += 1
            compileC
            compileF
            @index += 1
            compileC
        else
            compileV
        end
    end
    def compileV
        compileC
        print "#{@str[@index].chr} "
        @index += 1
        compileC
    end
    def complitP
        if @str[@index] == " "
            @index += 1
        end
    end
    def compileC
        if @index + 1 < @str.length 
            if @str[@index] + @str[@index + 1] == "/*" or @str[@index] + @str[@index + 1] == "//"
                @index += 1
                while @str[@index] + @str[@index + 1] != "*/" and @str[@index] + @str[@index + 1] != "//"
                    @index += 1
                end
                @index += 2
            end
        end
        complitP
    end
end
  
c = RecursComp.new
while true
    print "Введите формулу: "
    c.compile(readline.chomp)
    print "\n"
end