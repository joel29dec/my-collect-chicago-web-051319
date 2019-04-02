

def my_collect(array)
  if block_given?
    i = 0
     while i < array.length
      yield(array[i])
      i = i + 1
    end
    return array
  end
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end