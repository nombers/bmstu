print "Введите сколько орехов на вашем балансе: "
vash_balans = gets.to_i

arr = {"5" => 0, "10" => 0, "50" => 0, "100" => 0}

for i in arr.keys
    print "Введите сколько в банкомате орехов весом #{i} граммов: "
    arr[i] += gets.to_i
end

arr = Hash[arr.to_a.reverse]

while true
    print "Введите команду: "
    command = gets.chomp
    if command == "1"
        puts "На вашем балансе #{vash_balans} грамм орехов."
    elsif command == "2"
        print "Вставьте купюру (5, 10, 50, 100): "
        d = gets.chomp
        if arr.include?(d)
            arr[d] += 1
        elsif
            puts "Вы ввели неверную купюру"
        end
    elsif command == "3"
        puts "Можно снимать только орехи весом кратному числа 5"
        print "Сколько вы хотите снять орехов: "
        v = b = gets.to_i
        if b < vash_balans
            puts "На вашем балансе не хватает средств!"
        elsif b % 5 != 0
            puts "Ореха такого веса нету"
        end
        k = arr
        for i in k.keys
            f = b / i.to_i 
            if f <= k[i]
                b -= f * i.to_i
                k[i] -= f
            elsif f > k[i]
                b -= k[i] * i.to_i
                k[i] = 0
            end                
        end
        if b == 0
            arr = k
            vash_balans -= v
            puts "Орехи выданы"
        elsif
            puts "В банкомате нету столько орехов"
        end
    else
        puts "Такое команды не существует!!!"
    end
end