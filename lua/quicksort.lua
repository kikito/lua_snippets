
local function quicksort(t, left, right)
	if right < left then return end
	local pivot = left
	for i = left + 1, right do
		if t[i] <= t[pivot] then
			if i == pivot + 1 then
			  t[pivot],t[pivot+1] = t[pivot+1],t[pivot]
			else
			  t[pivot],t[pivot+1],t[i] = t[i],t[pivot],t[pivot+1]
			end
			pivot = pivot + 1
		end
	end
	quicksort(t, left, pivot - 1)
	quicksort(t, pivot + 1, right)
end

local array = { 1, 5, 2, 17, 11, 3, 1, 22, 2, 37 }

quicksort(array, 1, #array)

for _, v in pairs(array) do
	print(v)
end
