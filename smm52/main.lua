function clean(l)return l:gsub("/", ""):gsub("(", ""):gsub("/)", ""):gsub(":", ""):gsub("/.", ""):gsub(",", ""):gsub(";", ""):gsub("?", " ?"):gsub("!", " !"):gsub("-", " - "):lower()end

function tl(l,v)
  for k,a in ipairs(v) do
    if l:find(a) ~= nil then 
      return true 
    end 
  end
  return false
end

function pl(l)return l:sub(0,22)end
function el(l)return l:sub(25)end

io.flush()
fh = io.open("../../reviews/reviews.micro","r")

function quer(w)
  local arr="["
  while (true) do
    line = fh.read(fh)
    if not line then break end
    if tl(clean(el(line)),itab) then
      arr=arr..'"'..pl(line)..'",'
    end
  end
  --arr=arr:
  arr=arr.."]"
  return arr
end


--[[
while true do
  io.write("> ")
  io.flush()
  local i=io.read()
  i=clean(i)
  
end
]]
function split(str,sep)
	local ret={}
	local i=1
	repeat
		--skip the separator repeated at the begining of search
		while str:find(sep,i,true)==i do i=i+sep:len() end
		--end it if we reached the end of the string
		if i>=str:len() then break end

		startPos=i
		endPos=str:find(sep,i,true)
		if endPos then
			element=str:sub(startPos,endPos-1)
			i=endPos
		else
			element=str:sub(startPos)
		end
		table.insert(ret,element)
	until endPos==nil

	return ret
end


io.write("> ")
inp = io.read()
inp=clean(inp)
itab = split(inp, " ")
print(quer(itab))
