def cipher(string, num)
    outstring = ''
    string.each_byte do|x|
        a = x
        if a == ' '.sum
            outstring += a.chr
        elsif a <= 'Z'.sum
            b = ((a - 'A'.sum + num) % 26) + 'A'.sum
            outstring += b.chr
        else
            b = ((a - 'a'.sum + num) %26) + 'a'.sum
            outstring += b.chr
        end
    end
    return outstring
end

puts cipher("What a time to be alive", 5)
