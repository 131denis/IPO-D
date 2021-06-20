file_data = File.read("ludi.txt").split("\n")

def checkAge(str, num)
    n = str.length
    i = 0
    loop do
        if (i == n)
            break
        else
            line = str[i].split(" ")
            if (line[2].to_i == num)
                File.write("result.txt", str[i]+"\n", mode: "a")
            else
            end
            i = i + 1
        end 
    end
end

loop do
    puts "Vvedite vozrast"
    num = gets.to_i
    case num
    when -1
        puts File.read("result.txt").split("\n")
        break
    else
        checkAge(file_data, num)

    end
    if (File.read("result.txt").split("\n").length == file_data.length)
        puts File.read("result.txt").split("\n")
        break
    else
    end
end
