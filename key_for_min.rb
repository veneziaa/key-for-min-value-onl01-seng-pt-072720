# Given a hash with numeric values, return the key for the smallest value
#Build a method key_for_min_value that accepts an argument of a hash. This method should iterate over the hash and return the key (not the value!) that points to the smallest value of the set. If the method is called and passed an argument of an empty hash, it should return nil.

def key_for_min_value(name_hash)
  lowest_value = 0
  lowest_key = nil
  
  name_hash.each do |key,value|
    #if the lowest_value is in it's intial state  
    #or if the value of the current key is less than the lowest_value
    #then: set the lowest_value to value and lowest_key to key
    if lowest_value == 0 || value < lowest_value
      lowest_value = value 
      lowest_key = key
    end
  end
  lowest_key
end

ikea = {:chair => 25, :table => 85, :mattress => 450}
key_for_min_value(ikea)





#veggies = {"apple" => -45, "banana" => -44.5, "carrot" => -44.9}
#key_for_min_value(veggies)
