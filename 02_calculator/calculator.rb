#write your code here

def add(a, b)
    a + b 
end

def subtract(a, b)
    a - b
end

def sum(array)
    array.sum
end

def multiply(*num)
    thisarray = *num
    i = 0
    sum = 1
    while i < thisarray.length
        sum = sum * thisarray[i].to_i
        i = i + 1
    end
    sum
end

def power(a, b)
    sum = 1
    b.times do
        sum = sum * a
    end
    sum
    # another method
    # i = 0
    # sum = 1
    # while i < b
    #     sum = sum * a
    #     i = i + 1
    # end
    # sum
end

def factorial(num)
    i = 1
    solution = 1
    if num != 0
        num.times do
        solution = solution * i
        i = i + 1
        end
    end
    solution
end
