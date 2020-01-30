"""
    smallestMult(n)

    What is the smallest positive number that is 
    evenly divisible by all of the numbers 
    from 1 to n?
"""
function smallestMult(n)
    smallest = 1
    answer = n-1
    while smallest < n
        answer = answer + 1
        for i in 1:n
            if answer % i != 0
                smallest = 1
                continue
            else
                smallest = 1 + smallest
            end
        end
    end  
    println(answer)  
end