#write your code here
def echo(response)
	return response
end
def shout(response)
	return response.upcase
end
def repeat(response, *num)
	if(num.length==0)
       return response+" "+response
   else
   	  total=""
   	  i=num.first
   	  
   	  while i>1 do
   	  	total+=response+" "
   	  	i-=1
   	  end
   	  total+=response
   	  return total
	end
end
def start_of_word(response, num)
    return response[0,num]
end
def first_word(response)
    var= response.split
    return var.first
end
def titleize(response)
	
    var= response.split
    var.map! { |e|

	    if (e.length>3 or var.index(e)==0) && e!="over"
	       e.capitalize
        else
           e.downcase
	    end
    }
    return var.join(" ")
end