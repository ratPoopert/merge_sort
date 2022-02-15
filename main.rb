# frozen_string_literal: true

class Array
  def merge_sort
    return self if length == 1

    left, right = split
    merge(left.merge_sort, right.merge_sort)
  end

  private

  def split
    mid = length / 2
    [self[0..mid - 1], self[mid..-1]]
  end

  def merge(left, right)
    sorted_values = []
    until left.empty? || right.empty?
      sorted_values << if left.first <= right.first
                         left.shift
                       else
                         right.shift
                       end
    end
    sorted_values + left + right
  end
end

p array = Array.new(10) { rand(100) }
p array.merge_sort
