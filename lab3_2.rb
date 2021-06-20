def deposit
    puts "Vvedite summu (bolshe nulya)"
    val = gets.to_i
    if (val > 0)
        bal = File.read("balance.txt").to_i
        File.write("balance.txt", val+bal)
        puts "Operaciya vipolnena"
        puts "Vash balans = " + File.read("balance.txt")
    else
        puts "Vi vveli otricatelnoe chislo"
    end
end

def withdraw
    puts "Vvedite summu (bolshe nulya i menshe balansa)"
    val = gets.to_i
    bal = File.read("balance.txt").to_i
    if (val > 0 && val <= bal)
        File.write("balance.txt", bal - val)
        puts "Operaciya vipolnena"
        puts "Vash balans = " + File.read("balance.txt")
    else
        puts "Vi vvely otricatelnoe chislo ili bolshe balansa"
    end
end

loop do
    if (File.exists?("balance.txt"))
        balance = File.read("balance.txt")
    else
        balance = 100
    end

    puts "Dlya vneceniya deneg na schot vvedite 'D'"
    puts "Dlya vivoda deneg so scheta vvedite 'W'"
    puts "Dlya proverki balansa vvedite 'B'"
    puts "Dlya vixoda vvedite 'Q'"

    choice = gets.chomp.upcase
    if (choice == "D")
        deposit
    elsif (choice == "W")
        withdraw
    elsif (choice == "B")
        puts File.read("balance.txt")
    elsif (choice == "Q")
        break
    else
        puts "Vi vveli ne pravilniy simvol"
    end

end
