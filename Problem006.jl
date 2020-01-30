"""
    sumSquareDifference(n)

    Find the difference between the sum of the 
    squares of the first n natural numbers and 
    the square of the sum?
"""
function sumSquareDifference(n)
    sumsquare = 0
    squaresum = 0
    for i in 1:n
        sumsquare = sumsquare + (i ^ 2)
        squaresum = squaresum + i
    end
    squaresum = squaresum ^ 2
    answer = squaresum - sumsquare
    println(answer)
end