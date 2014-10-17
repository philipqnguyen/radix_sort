require 'spec_helper'
require 'radix_sort.rb'

describe 'Radix sort' do
  it 'should sort an array with random numbers' do
    arr = [12, 9, 102, 1, 1002, 33, 53, 56_743, 11]

    arr.radix_sort.must_equal arr.sort
  end
end
