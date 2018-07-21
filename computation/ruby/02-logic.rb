# if
if 2 < 3
    p 'less'
else
    p 'more'
end


# case
quantify = 
    -> number {
    case number
    when 1
        p 'one'
    when 2
        p 'two'
    else
        p 'many'
    end
    }
quantify.call(2)


# while
x = 1
while x < 1000
    x = x * 2
end
p x
