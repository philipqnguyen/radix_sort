require 'spec_helper'
require 'radix_sort.rb'

describe 'Radix sort' do
  it 'should sort an array with random numbers' do
    arr = [12, 9, 102, 1, 1002, 33, 53, 56743, 11]

    arr.radix_sort.must_equal arr.sort
  end

  it 'should sort a reverse ordered array into a sorted array' do
    arr = [10003, 234, 231, 200, 82, 50, 33, 2, 1]

    arr.radix_sort.must_equal arr.sort
  end

  it 'should sort an array with duplicates' do
    arr = [30, 43232, 2112, 121, 121, 222, 321, 222, 223, 12312, 30]

    arr.radix_sort.must_equal arr.sort
  end

  it 'should sort single digits' do
    arr = [9, 1, 5, 2, 8, 7, 5, 3]

    arr.radix_sort.must_equal arr.sort
  end
end
