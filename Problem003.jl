"""
    largetPrimeFactor(number)

Finds the largest prime factor of number
"""
function largestPrimeFactor(number)
    n = number
    i = 1
    while n != 1
        i = i + 1
        while n % i == 0
            n = n / i
        end
    end
    println(i)
end