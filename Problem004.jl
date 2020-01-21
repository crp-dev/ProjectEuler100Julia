"""
    largetPalindromeProduct(n)

    Find the largest palindrome made from the 
    product of two n-digit numbers.
"""
function largestPalindromeProduct(n)
    "create limits, upper and lower"
    count = n
    upper = 9
    lower = 1 * 10 ^ (count - 1)
    while count > 1
        upper = upper + (9 * (10 ^ (count-1)))
        count = count - 1
    end

    "loop from upper to lower, multiply, store max palindrome"
    reducing1 = upper
    reducing2 = upper
    maxpalindrome = 0
    while reducing1 >= lower
        while reducing2 >= lower
            result = reducing1 * reducing2
            resultstring = string(result)
            reversestring = reverse(resultstring)
            if resultstring == reversestring
                palindrome = result
                if palindrome > maxpalindrome
                    maxpalindrome = palindrome
                end
            end
            reducing2 = reducing2 - 1
        end
        reducing2 = reducing1 - 1
        reducing1 = reducing1 - 1
    end
    if maxpalindrome > 0
        println(maxpalindrome)
    else
        println("no palindrome found")
    end
end