=begin
def my_select(collection)
 new_array = []
 i = 0
 while i < collection.length
   new_array.push yield (collection[i])
   i += 1
 end
 new_array
end
=end

def my_select(array)
  i =0
  select = []
  while i < array.length
    if (yield(array[i]))
      # select.push(array[i])OR
      select << array[i]
    end
    i += 1
  end
  select
end
