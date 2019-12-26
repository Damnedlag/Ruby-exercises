class Book 

      def title=(str)
        @title = str
      end

      

def title
    small_words = %w[on the and over of in a an] # %w(foo bar) is a shortcut for ["foo", "bar"]. Meaning it's a notation to write an array of strings separated by spaces instead of commas and without quotes around them. 
    @title.split(' ').map.with_index do |w, i| # http://www.zenspider.com/ruby/quickref.html#arrays
      unless (small_words.include? w) and (i > 0)
        w.capitalize
      else
        w
      end
    end.join(' ')
end

end


