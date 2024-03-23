function raindrops(number)
    if (number%3 == 0)
        print("Pling")
    
    if (number%5 == 0)
        print("Plang")
    
    if (number%7 == 0)
        print("Plong")
    else
        print(number)
    end
    println()
end

numerostr = readline()
numeroint = parse(Int8, numerostr)
raindrops(numeroint)
