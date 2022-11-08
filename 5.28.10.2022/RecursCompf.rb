class RecursComp
    def compile(str)
        @str, @index = str, 0
        @str = @str.split().join()
        compileF
    end
    
    private
  
    def compileF
        compileT
        return if @index >= @str.length
        cur = @str[@index].chr 
        if cur == '+' or cur == '-'
            @index += 1
            compileF
            print "#{cur} "
        end
    end
    def compileT
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
        if @index + 1 <= @str.length and (@str[@index] + @str[@index + 1] == "/*" or @str[@index] + @str[@index + 1] == "//")
            @index += 1
            while @str[@index] + @str[@index + 1] != "*/" or @str[@index] + @str[@index + 1] != "//"
                @index += 1
            end
            print("\n", @str[@index])
        end
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
    end
end
  
c = RecursComp.new
while true
    print "Введите формулу: "
    c.compile(readline.chomp)
    print "\n"
end