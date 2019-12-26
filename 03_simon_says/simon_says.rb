#write your code here

def echo(thing)
    thing
end

def shout(thing)
    thing.upcase
end

def repeat(*arr)
    array = *arr
    if !array[1]
        array << 2
    end
    solution = (array[0] + ' ') * array[1]
    solution.chomp(' ')
end

def start_of_word(word, num)
    i = 1
    solution = word[0]
    while i < num
        solution = solution + word[i]
        i = i + 1
    end
    solution
end

def first_word(str)
    str.split[0]
end

def titleize(str)
    small_words = %w[on the and over] # %w(foo bar) is a shortcut for ["foo", "bar"]. Meaning it's a notation to write an array of strings separated by spaces instead of commas and without quotes around them. 
    str.split(' ').map.with_index do |w, i| # http://www.zenspider.com/ruby/quickref.html#types
      unless (small_words.include? w) and (i > 0)
        w.capitalize
      else
        w
      end
    end.join(' ')
  end