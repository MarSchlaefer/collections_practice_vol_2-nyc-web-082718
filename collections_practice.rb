# your code goes here
require 'pry'

def begins_with_r(array)
  array.all? {|word| word.start_with? "r"}
end

def contain_a(array)
  array.select do |word|
    word.include? "a"
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with? "wa"
  end
end

def remove_non_strings(array)
  array.keep_if {|word| word.is_a? String}
end

def count_elements(array_of_hashes)
  result_array = []

  array_of_names = array_of_hashes.map do |hash|
    hash.values[0]
  end

  array_of_names.each do |name|
    result_array << {name: name, count: array_of_names.count(name)}
  end

  result_array.uniq
end

def merge_data(array_of_hashes,data)
  new_arr = []

  array_of_hashes.each do |person|
    current_name = person[:first_name]

    data.each do |hash|
      new_hash = hash[current_name]
      new_hash[:first_name] = current_name

      new_arr << new_hash
    end
  end

  new_arr
end

def find_cool(array_of_hashes)
array_of_cool_hash = []

  array_of_hashes.each do |hash|
    if hash[:temperature] == "cool"
      array_of_cool_hash << hash
    end
  end

  array_of_cool_hash
end

def organize_schools(array_of_hashes)
  grouped_schools = {}

  array_of_hashes.each do |school, location_hash|
    location = location_hash[:location]
    if grouped_schools[location]
      grouped_schools[location] << school
    else
      grouped_schools[location] = [school]
    end
  end

  grouped_schools
end
