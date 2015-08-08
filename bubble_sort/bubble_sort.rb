#!/usr/bin/env ruby
def bubble_sort array
  e = array.size - 1
  e.times do |j|
    (e - j).times do |i|
      array[i], array[i+1] = array[i+1], array[i] if array[i] > array[i+1]
    end
  end
  array
end

def bubble_sort_by array, &compare
  e = array.size - 1
  e.times do |j|
    (e - j).times do |i|
      array[i], array[i+1] = array[i+1], array[i] if compare.call(array[i], array[i+1]) > 0
    end
  end
  array
end

puts (bubble_sort [1,5,7,9,2,5,1]).inspect

puts (bubble_sort_by(["hi","hello","hey"]) do |left,right|
   left.length - right.length
end).inspect
