class RecursComp
  def compile(str)
    @str = str
    @index = 0
    compileF
  end

  private

  def compileF
    compileC
    compileT
    return if @index >= @str.length
    cur = @str[@index].chr
    if ['+', '-'].include?(cur)
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
    if ['*', '/', '%'].include?(cur)
      @index += 1
      compileT
      print "#{cur} "
    end
  end

  def compileM
    compileC
    return if @index >= @str.length
    if ['(', '[', '{'].include?(@str[@index].chr)
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
    return if @index >= @str.length
    @index += 1 if @str[@index] == ' '
  end

  def compileC
    complitP
    if @index + 1 < @str.length && ['/*'].include?(@str[@index] + @str[@index + 1])
      @index += 2
      @index += 1 until ['*/'].include?(@str[@index] + @str[@index + 1])
      @index += 2
    end
    @index += 1000 if @index + 1 < @str.length && @str[@index] + @str[@index + 1] == '//'
    complitP
  end
end

c = RecursComp.new
while true
  print 'Введите формулу: '
  c.compile(readline.chomp)
  print "\n"
end
