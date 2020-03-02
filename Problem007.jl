"""
    nthPrime(n)

    What is the nth prime number?
"""
function nthPrime(n)
    """ 
        2 < p < floor(sqrt(i)) does not work
        for first two primes, 2 and 3, and so if
        n is 1 or 2, report these separately
    """
    if n == 1
        println(n, "th prime is 2")
    elseif n == 2
        println(n, "th prime is 3")
    else
        countprime = 2
        i = 0
        while countprime < n
            i = i + 1
            isprime = 0
            for j = 2:floor(sqrt(i))
                if mod(i, j) == 0
                    isprime = 0
                    break
                else
                    isprime = isprime + 1
                end
            end
            if isprime > 0
                countprime = countprime + 1
            end
        end
        println(n, "th prime is ", i)
    end
end