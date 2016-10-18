#write your code here
def ftoc(degree)
	var= (degree-32)/1.8
	puts var.round(1).to_s
	return var.round(1)
end
def ctof(degree)
	var =1.8*degree+32
	puts var.round(1).to_s
	return var.round(1)
end