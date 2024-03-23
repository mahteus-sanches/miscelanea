x = readline()
y = parse(Int8, x)
if x > 9
    println("maior que 9")
    if x > 5
        println("maior que 5")
    end
else
    println("não entrou")
end