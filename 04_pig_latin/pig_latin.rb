def translate(str)
        newArray = str.split(' ').map.with_index do |w, i|
            if /^[^aeiou\W]/i.match(w) == nil
                w + 'ay'
            else
                f = w.index(/[aeiouq\W]/)
                if w.index(/[aeiouq\W]/) == w.index(/[aeiou\W]/)
                addendum = w[0..f - 1]
                w[f..-1] + addendum + 'ay'
                else
        # if q is first to be found, we have to add +1 to f so it takes the u with it
                addendum = w[0..f + 1] 
                w[f + 2..-1] +addendum + 'ay'
                end
            end
        end
        if newArray[1] != nil
            newArray.join(' ')
        else
        newArray[0].to_s
        end
end
