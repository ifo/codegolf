function clean(l)
  l=l:gsub("/", "")
  l=l:gsub("(", "")
  --l=l:gsub(")", "")
  l=l:gsub(":", "")
  --line:gsub(".", "")
  l=l:gsub(",", "")
  l=l:gsub(";", "")
  l=l:gsub("?", " ?")
  l=l:gsub("!", " !")
  l=l:gsub("-", " - ")
  return l
end

function testline(l,val)
  if l:find(val) ~= nil then
    return true
  else
    return false
  end
end

function pel(l)
  l=l:sub(0,22)
  return l
end


lin = clean(line)

if testline(lin) then
  print(pel(line))
end


fh = io.open("../../reviews/reviews.micro","r")

line = fh.read(fh)


