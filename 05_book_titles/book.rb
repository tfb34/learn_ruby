class Book
# write your code here
     attr_accessor :title
     def title

     	@title=@title.split
     	@title.map! { |word|  
     		word.capitalize
     	}
     	@title=nopeWords(@title.join(" "))
     	
     end
     def nopeWords(title)
     	article=[" The ", " A ", " An ", " And "," For "," Nor "," But ",
     		" Or "," Yet "," So "," At "," By "," For "," In ",
     		" Of "," On "," To "," With "]
     	article.each{ |w|
     		 title=title.gsub(w,w.downcase)
     	}
        return title
     end
     

end
