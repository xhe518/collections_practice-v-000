def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    if a == b
      0
    elsif a < b
      1
    elsif a > b
      -1
    end
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    if a.length == b.length
      0
    elsif a.length < b.length
      -1
    elsif a.length > b.length
      1
    end
  end
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1] #parallel_assignment
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each do |string|
    string[2] = "$"
  end
  array
end

def find_a(array)
  array.select! {|string| string.start_with?("a")}
end

def sum_array(array)
  sum = 0
  array.each {|a| sum += a}
  sum
end

def add_s(array)
  array.each_with_index.collect do |string, index|
    if index != 1
      string = string + "s"
    else
      string
    end
  end
end