function multiplesOf3and5(x)
    j = 0
    for i = 1:(x-1)
        if i % 3 == 0
            j += i
        elseif i % 5 == 0
            j += i
        end
        i += 1
    end
    println(j)
end