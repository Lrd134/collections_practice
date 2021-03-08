require 'pry'
def sort_array_asc(array)
    array.sort do | a , b |
       a <=> b
    end
end
def sort_array_desc(array)
    array.sort { | a , b | b <=> a }
end
def sort_array_char_count(array)
    array.sort { | a , b | a.size <=> b.size}
end
def swap_elements(array)
    tmp = array[1]
    array.delete_at(1)
    array.insert(1, array[1])
    array.delete_at(2)
    array.insert(2, tmp)
    array
end
def swap_elements_from_to(array, i, di)
    tmp = array[i]
    array.delete_at(i)
    array.insert(i, array[di - 1])
    array.delete_at(di)
    array.insert(di, tmp)
    array
end
swap_elements_from_to(["MY WAFFLES", ",", "THOSE ARE"],0,2)

def reverse_array(array)
    array.reverse!
end
def kesha_maker(array)
    names = []
    array.each do | word |
        word[2] = "$"
        names << word
    end
    names
end

def find_a(array)
    array.find_all { | word | word.start_with?("a") }
end
def sum_array(array)
    array.inject(:+)
end
def add_s(array)
    array.map do | add | 
        if add != array[1]
            add + "s" 
        else
            add
        end
    end
        
end