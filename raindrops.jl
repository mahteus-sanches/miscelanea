function raindrops(number)
    number = parse(Int32, number)
    x = 0
    if (number%3 == 0)
        print("Pling")
    else
        x += 1
    end
    if (number%5 == 0)
        print("Plang")
    else
        x += 1
    end
    if (number%7 == 0)
        print("Plong")
    else
        x += 1
    end
    if (x == 3)
        println(number)
    else
        println()
    end
end

number = readline()
raindrops(number)
