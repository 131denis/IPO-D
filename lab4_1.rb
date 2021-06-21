class CashMachine

    if !(File.exists?('balance.txt'))
        File.write('balance.txt','100')
    end

    def deposit
        puts "Vvedite summu (bolshe nulya)"
        value = gets.to_i
        if (value > 0)
            bal = File.read("balance.txt").to_i
            File.write("balance.txt", value+bal)
            puts "Operaciya vipolnena"
            puts "Vash balans = " + File.read("balance.txt")
        else
            puts "Вы ввели отрицательное или нулевое число"
        end
    end
    
    def withdraw
        puts "Vvedite summu (bolshe nulya i menshe balansa)"
        value = gets.to_i
        bal = File.read("balance.txt").to_i
        if (value > 0 && value <= bal)
            File.write("balance.txt", bal - value)
            puts "Operaciya vipolnena"
            puts "Vash balans = " + File.read("balance.txt")
        else
            puts "Vi vvely otricatelnoe chislo ili bolshe balansa"
        end
    end

    def showMessage
        puts "\n"
        puts "Dlya vneceniya deneg na schot vvedite 'D'"
        puts "Dlya vivoda deneg so scheta vvedite 'W'"
        puts "Dlya proverki balansa vvedite 'B'"
        puts "Dlya vixoda vvedite 'Q'"
        puts "\n"
    end

    def init
        loop do
            showMessage
            choice = gets.chomp.upcase

            if (choice == "D")
                self.deposit
            elsif (choice == "W")
                self.withdraw
            elsif (choice == "B")
                puts File.read("balance.txt")
            elsif (choice == "Q")
                break
            else
                puts "Vi vveli ne pravilniy simvol"
            end
        end
    end    
end

cash = CashMachine.new
cash.init
