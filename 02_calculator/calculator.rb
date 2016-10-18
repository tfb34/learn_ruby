#write your code here
def add(num,num2)
	return num+num2
end

def subtract(num,num2)
	return num-num2
end

def sum(list)
	i=0
	sum=0
	while i<list.size do
		sum=sum+list[i]
		i+=1
	end
	return sum
end


def multiply(num)
	i=0
	total=1
	while i<num.size do
		total*=num[i]
		i+=1
	end
	return total
end

def power(num,num2)
	return num**num2
end

def factorial(num)
	total=1
	while num>0 do
		total*=num
		num-=1
	end
	return total
end