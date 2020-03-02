"""
    specialPythagoreanTriplet(n)

    A Pythagorean triplet is a set of three natural
    numbers, a < b < c, for which

        a^2 + b^2 = c^2

    There exists exactly one Pythagorean triplet for
    which a + b + c = 1000.

    Find the product abc, such that a + b + c = n
"""
function specialPythagoreanTriplet(n)
    isResult = 0
    for b = 1:(floor(n/2))
        for a = 1:(b-1)
            c = sqrt((a^2) + (b^2))
            if a + b + c == n
                println(round(Int, (a * b * c)))
                isResult = 1
                break
            else
                continue
            end
        end
    end
    if isResult == 0
        println("No answer found")
    end
end