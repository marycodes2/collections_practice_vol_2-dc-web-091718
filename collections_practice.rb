def begins_with_r(array)
  return_value = true 
  array.each do |element|
    element.to_s 
    return_value = return_value && (element[0] == 'r')
  end 
  return_value
end 

def contain_a(array)
  array.select do |x|
    x.to_s
    x.include? 'a'
  end 
end 

def first_wa(array)
  array.each do |x|
    x.to_s
    if x[0] == 'w' && x[1] == 'a'
      return x 
    end 
  end 
end

def remove_non_strings(array)
  new_array = []
  array.each do |x|
    if x.class.to_s == 'String'
      new_array << x
    end
  end 
  return new_array
end

def count_elements(array_of_hashes)
  count_of_values = []
  final_array = []
  de_duplcated_values = []
  array_of_hashes.each do |element|
    element.each do |key, value|
      de_duplcated_values << value
      count_of_values << value
    end
  end
  de_duplcated_values = de_duplcated_values.uniq
  de_duplcated_values.each do |value|
    new_dict = {}
    new_dict[:name] = value
    new_dict[:count] = count_of_values.count(value)
    final_array << new_dict
  end
  return final_array
end 
    
array = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
#puts count_elements(array)


#def merge_data(keys, data)
#  keys.each do |key1, value1|
#    key1.each do |arrays|
#     arrays.each do |array_elements|
#      
#        data.each do |key2|
#          key2.each do |key3, value3|
#            puts "key3"
#            puts key3
#            puts "value3"
#            puts value3
#          end 
#        end 
#      end 
#    end 
#  end 
#end


  keys = 
    [
           {
            :first_name => "blake"
        },
           {
            :first_name => "ashley"
        }
    ]
  

  data = 
    [
           {
             "blake" => {
                :awesomeness => 10,
                     :height => "74",
                  :last_name => "johnson"
            },
            "ashley" => {
                :awesomeness => 9,
                     :height => 60,
                  :last_name => "dubs"
            }
        }
    ]
  
# x = data

# puts x[0].keys


 def merge_data(keys, data)
   merge_data = []
   data_hash = data[0]
   keys.each do |keys_element|
     data_hash.each do |data_hash_key, data_hash_value|
       if data_hash_key == keys_element[:first_name]
         merge_data << keys_element.merge(data_hash_value)
      end
      end
    end
    return merge_data
 end


#merge_data(keys, data)

def find_cool(cool)
  cool_array = []
  cool_dict = {}
  cool.each do |hash|
    hash.each do |key, value|
      if key == :temperature && value == "cool"
        cool_dict = hash
        cool_array << cool_dict
      end 
    end 
  end 
  return cool_array
end 

def organize_schools(schools)
  new_dict = {}
  locaton_list = []
  schools.each do |school_name, location_hash|
    location_hash.each do |location_key, location_value|
      if new_dict.keys.include? location_value
        new_dict[location_value] << school_name
      else
        school_name_array = []
        school_name_array << school_name
        new_dict[location_value] = school_name_array
      end 
    end 
  end 
  return new_dict
end 
