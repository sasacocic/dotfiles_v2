



hello_world = 'hello, world'
hello_world_v2 = "hello, world"

multi_line = [[
	hello world
	bby
]]

print(multi_line)




i = 0


while i < 20 do
	print(i)
	i = i + 1
end

-- io.write ??? defaults to stdout?
-- .. is the string concatenation operator in lua
io.write(hello_world_v2 .. "\n") 



function input_and_output()
	input = io.read() -- reads stdin

	io.write(input)

	-- ~= <- this is not equals
end


-- input_and_output() -- simply runs above function




-- these are the same

function f(x) return x * x end
f = function (x) return x * x end



-- it being a string matters here!!
print 'checkout this print!' -- calls with one string param don't require parens


lookup_guy = {
	key_one = 'value1',
	key_two = 'value2'
}

print(lookup_guy)


for key, val in pairs(lookup_guy) do
	print(key .. " : " .. val)
end



