def task1
  file = File.open('input.txt')
  students = file.read.split("\n")
  file.close
  result = []

  loop do
    puts 'Введите возраст'
    input = gets.to_i
    break if input == -1

    for student in students
      result.append(student) if student.split(' ')[2].to_i == input
    end
    break if students.length == result.length
  end

  file = File.open('result.txt', 'w')
  for s in result
    puts s
    file.write(s + "\n")
  end
  file.close
end

def task2
  balance = 100.0
  if File.exist?("balance.txt")
    f = File.open("balance.txt")
    balance = f.read.to_f
    f.close
  end
  loop do
    puts '=============================='
    puts '(D) Deposit'
    puts '(W) Withdraw'
    puts '(B) Balance'
    puts '(Q) Quit'
    puts '=============================='

    choose = gets.chomp
    case choose.downcase
    when 'd'
      puts 'Введите сумму для депозита'
      sum = gets.to_f
      if sum <= 0
        puts 'Сумма должна быть больше нуля'
      else
        balance += sum
        puts "Ваш новый баланс: #{balance}"
      end
    when 'w'
      puts 'Введите сумму для списания'
      sum = gets.to_f
      if sum <= 0
        puts 'Сумма должна быть больше нуля'
      elsif sum > balance
        puts 'Недостаточно средств'
      else
        balance -= sum
        puts "Ваш новый баланс: #{balance}"
      end
    when 'b'
      puts "Ваш баланс: #{balance}"
    when 'q'
      f = File.open('balance.txt', 'w')
      f.write(balance)
      f.close
      break
    else
      puts 'Вы должны выбрать пункт меню'
    end
  end
end

def menu
  loop do
    puts '============================'
    puts '1. Первое задание'
    puts '2. Банк'
    puts '0. Выход'
    puts '============================'

    choose = gets.to_i
    case choose
    when 1
      task1
    when 2
      task2
    else
      break
    end
  end
end

menu
