class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
     @seconds=0
  	
  end
  
  def time_string
  	  timeUnits=Array.new(3,"00")
  	  if @seconds==0
  	  	return timeUnits.join(":")
      else
      	 i=timeUnits.length-1  #begin with the seconds unit
      	 while i>0
      	 	timeUnits[i]=padded(@seconds%60)
      	 	@seconds=@seconds/60
      	 	i-=1
      	 end
  	  end
  	  timeUnits[0]=padded(@seconds%60)
  	  return timeUnits.join(":")
  end

end

def padded(num)
    if num/10 ==0
    	return "0"+num.to_s
    else
    	return num
    end

end