"""
    smallestMult(n)

    What is the smallest positive number that is 
    evenly divisible by all of the numbers 
    from 1 to n?
"""
function smallestMult(n)
    maxLCM = 1
    for i in 1:n
        maxLCM = lcm(maxLCM, i)
    end
    println(maxLCM)
end