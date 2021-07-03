def sort_array_asc(int_array)
  int_array.sort
end

def sort_array_desc(int_array)
  int_array.sort do |a,b|
    b - a
  end
end

def sort_array_char_count(string_array)
  string_array.sort do |string_a, string_b|
    string_a.length <=> string_b.length
  end
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(string_array)
  
  string_array.collect do |word|
    return_string = ""
    word.split("").each_with_index do |letter, idx|
      if idx == 2
        return_string += "$"
      else 
        return_string += letter
      end
    end
    return_string
  end
  
end

def find_a(string_array)
  string_array.select do |string|
    string.start_with?("a")
  end
end

def sum_array(int_array)
  int_array.inject { |sum, n| sum + n } 
end

def add_s(word_array)
  word_array.each_with_index.collect do |element, index|
    if index == 1
      element
    else 
      element << "s"
    end
  end
end