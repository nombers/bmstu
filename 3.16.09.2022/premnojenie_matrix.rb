print "Введите сколько строк и столбцов 1 матрицы: "
a, b = readline.split.map(&:to_i)

arr1, arr2, arr3 = [], [], []

for i in (1..a) 
    stroka = readline.split.map(&:to_i)
    arr1 += [stroka]
end

print "Введите сколько строк и столбцов 2 матрицы: "
c, d = readline.split.map(&:to_i)

for i in (1..c) 
    stroka = readline.split.map(&:to_i)
    arr2 += [stroka]
end

h = 0
lol = []
if b == c
    for i in (0..a - 1) # количество строк 
        for j in (0..d - 1) # количество стобцоов
            for k in (0..b - 1) # пробежаться по строку первой матрицы и столбу второй матрицы
                h += arr1[i][k] * arr2[k][j]
            end
            lol.append(h)
            h = 0
        end
        arr3 += [lol]
        lol = []
    end
    for i in (0.. a - 1)
        for j in (0..d - 1)
            print "#{arr3[i][j]} "
        end
        print "\n"
    end
else
    puts "Перемножить матрицы нельзя!!!"
end