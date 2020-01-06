function fiboEvenSum(n)
    j = 1
    k = 0
    EvenSum = 0
    for i = 1:n
        if j % 2 == 0
            EvenSum += j
        end
        l = (k + j)
        k = j
        j = l
    end
    println(EvenSum)
end