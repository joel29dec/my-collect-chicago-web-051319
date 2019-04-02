

def my_collect(array)
  if block_given?
    i = 0
    new_arr = [] 
     while i < array.length
      new_arr << yield(array[i])
      i = i + 1
    end
    new_arr
  end
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end