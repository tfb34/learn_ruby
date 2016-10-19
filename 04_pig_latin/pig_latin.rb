#write your code here

def translate(input)
	words=input.split
	result=""
	words.each{ |w|
        if begins_w_vowel(w)
        	w+="ay"
        else
        	num_c=num_consonants(w)
        	if w.include? "qu"
                  i=w.index('qu')+1
                  w=w[i+1..w.length-1]+w[0..i]+"ay"
        	else
               w=w[num_c,input.length-1]+w[0,num_c]+"ay"
        	end
        	
        end
        result+=w+" "
	}
    
    return result[0,result.length-1]

end

def num_consonants(input)
	vowels=["a","e","i","o","u","y"]
	i=1
	while i<input.length 
		vowels.each{ |x|
			if input[i]==x
                return i
			end
		}
		i+=1
	end
end

def begins_w_vowel(word)
	vowels=["a","e","i","o","u","y"]
    vowels.each { |x|
    	 if word[0]==x
    	 	return true
    	 end 
     }
     return false
end

