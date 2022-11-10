class RecursComp
    def compile(str)
        @str, @index = str, 0
        compileF
    end
    
    private
  
    def compileF
        compileC
        compileT
        return if @index >= @str.length
        cur = @str[@index].chr 
        if cur == '+' or cur == '-'
            @index += 1
            compileF
            print "#{cur} "
        end
        compileC
    end
    def compileT
        compileC
        compileM
        return if @index >= @str.length
        cur = @str[@index].chr
        if cur == '*' or cur == '/' or cur == '%'
            @index += 1
            compileT
            print "#{cur} "
        end
    end
    def compileM
        compileC
        return if @index >= @str.length
        if @str[@index].chr == '(' or @str[@index].chr == '[' or @str[@index].chr == '{'
            @index += 1
            compileF
            @index += 1
        else
            compileV
        end
    end
    def compileV
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
        complitP
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