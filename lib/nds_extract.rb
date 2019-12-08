require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nil
  nds.each do |n|
    result[n[:name]]=gross_for_director(n)
    end
    return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  grand_total =0
  row_index = 0
  while row_index<director_data.length
  do
    colum_index = 0
    while colum_index < director_data.length do
      grand_total += total_value_of_spinner(vm,row_index,colum_index)
      colum_index +=1
    end
      row_index +=1
end
