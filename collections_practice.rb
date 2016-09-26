def begins_with_r(array)
array.each do |x|
  if !x.start_with?("r")
  return false
end
end
  return true
end

def contain_a(array)
  new_array = []
  array.each do |x|
    if x.include?("a")
      new_array << x
    end
  end
new_array
end

def first_wa(array)
  array.find {|x| x[0..1] == "wa"}
end

def remove_non_strings(array)
  array.delete_if {|x| x.class != String}
end

def count_elements(array)
  new_arr = []
  names = []
  counts = Hash.new 0
    array.each do |name|
      names << name[:name]
    end
    names.each do |word|
      counts[word] += 1
    end
    counts.each do |name,count|
      new_arr << {:name => name, :count => count}
    end
    new_arr
  end

def merge_data(keys,data)
  final_arr =[]
    counter = 0
    data.each do |person|
      person.each do |name,info|
        final_arr << {:first_name => name}
        info.each do |characteristic,value|
          final_arr[counter][characteristic]= value
        end
        counter += 1
      end
    end
    final_arr
  end

  def find_cool(cool)
    answer = []
cool.each do |array|
  array.each do |key,value|
    answer << array if value == "cool"
  end
end
answer
end

def organize_schools(schools)
  answer = {}
  schools.each do |school,location|
    location.each do |symbol,city|
      answer[city] = [] if answer[city] == nil
      answer[city] << school
    end
  end
  answer
end
