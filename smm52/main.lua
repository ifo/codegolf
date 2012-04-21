function clean(l)
  l=l:gsub("/", "")
  l=l:gsub("(", "")
  --l=l:gsub(")", "")
  l=l:gsub(":", "")
  --l=l:gsub("\.", "")
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

function query()
end
--[[
lin = clean(line)

if testline(lin) then
  print(pel(line))
end

]]

io.flush()
--loc=io.read()
fh = io.open("../../reviews/reviews.micro","r")

io.write("> ")
inp = io.read()
inp=clean(inp)
while (true) do
  line = fh.read(fh)
  if not line then break end
  if testline(line,inp) then
    --io.write(pel(line))
    print(pel(line))
  end
  --io.write(pel(line))
end
io.flush()
