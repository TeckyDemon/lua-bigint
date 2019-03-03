BigInt={}
BigInt.__index=BigInt

setmetatable(BigInt,{
	__call=function(c,...)
		return c.new(...)
	end,
})

function BigInt.new(str)
	local self=setmetatable({},BigInt)
	self.digits={}
	for digit in tostring(str):gmatch'[0-9]' do
		table.insert(self.digits,tonumber(digit))
	end
	self.signed=tostring(str):sub(1,1)=='-'
	return self
end
function BigInt.clone(self)
	return BigInt(tostring(self))
end
function BigInt:__tostring()
	return (self.signed and '-' or '')..table.concat(self.digits)
end
function BigInt:__len()
	return #self.digits
end
function BigInt:__unm()
	local result=self:clone()
	result.signed=not result.signed
	return result
end
function BigInt.__add(a,b)
	if a.signed and b.signed then
		return -(-a+-b)
	elseif a.signed or b.signed then
		return -(a:abs()-b:abs())
	end
	local result={}
	local carry=0
	local max_digits=(#a>#b and #a or #b)
	for i=0,max_digits-1 do
		result[max_digits-i]=(a.digits[#a-i] or 0)+(b.digits[#b-i] or 0)+carry
		carry=(result[max_digits-i]>9 and 1 or 0)
		result[max_digits-i]=result[max_digits-i]%10
	end
	return BigInt((carry==1 and 1 or '')..table.concat(result))
end
function BigInt.__sub(a,b)
	if a<b then
		return -(b-a)
	elseif a.signed and b.signed then
		return -b-(-a)
	elseif a.signed or b.signed then
		return a:abs()+b:abs()
	end
	local result={}
	local borrow=0
	local max_digits=#a
	for i=0,#a-1 do
		result[#a-i]=(a.digits[#a-i] or 0)-(b.digits[#b-i] or 0)-borrow
		borrow=(result[#a-i]<0 and 1 or 0)
		result[#a-i]=(borrow==1 and result[#a-i]+10 or result[#a-i])
	end
	while #result>1 and result[1]==0 do
		table.remove(result,1)
	end
	return BigInt(table.concat(result))
end
function BigInt.__mul(a,b)
	if a==BigInt(0) or b==BigInt(0) then
		return BigInt(0)
	elseif a.signed and b.signed then
		return -a*-b
	elseif a.signed or b.signed then
		return -(a:abs()*b:abs())
	end
	local result=BigInt(0)
	for i=0,#a-1 do
		local carry=0
		local product={}
		for j=0,#b-1 do
			product[#b-j]=(a.digits[#a-i] or 0)*(b.digits[#b-j] or 0)+carry
			carry=product[#b-j]//10
			product[#b-j]=product[#b-j]%10
		end
		for k=1,i do
			table.insert(product,#product+1,0)
		end
		result=result+BigInt((carry>0 and carry or '')..table.concat(product))
	end
	return result
end
function BigInt.__div(a,b)
	if a==BigInt(0) or b==BigInt(0) or a<b then
		return BigInt(0)
	elseif a.signed and b.signed then
		return -a/-b
	elseif a.signed or b.signed then
		return -(a:abs()/b:abs())
	end
	local result={}
	local dividend=BigInt(a.digits[1])
	while dividend<b do
		dividend.digits[#dividend+1]=a.digits[#dividend+1]
	end
	local digit=#dividend
	for i=1,#a-#b+1 do
		local factor=b+b<dividend and 1 or 0
		while BigInt(factor+1)*b<dividend do
			factor=factor+1
		end
		result[i]=factor
		dividend=dividend-(b*BigInt(factor))
		dividend.digits[#dividend+1]=a.digits[digit+i]
	end
	return BigInt(table.concat(result))
end
function BigInt.__pow(a,b)
	local result=BigInt(1)
	while b~=BigInt(0) do
		result=result*a
		b=b-BigInt(1)
	end
	return result
end
function BigInt.__mod(a,b)
	return a<b and a or a-(b*(a/b))
end
function BigInt.__eq(a,b)
	return not (a>b or a<b)
end
function BigInt.__lt(a,b)
	if a.signed and b.signed then
		return -a>-b
	elseif a.signed or b.signed then
		return a.signed
	else
		if #a~=#b then
			return #a<#b
		else
			for i=1,#a do
				if a.digits[i]~=b.digits[i] then
					return a.digits[i]<b.digits[i]
				end
			end
			return false
		end
	end
end
function BigInt:abs()
	return (self.signed and -self or self)
end