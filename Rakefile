require 'rake/testtask'
require_relative './lib/radix_sort.rb'
require 'benchmark'

task default: 'test'

Rake::TestTask.new do |t|
  t.libs << 'spec'
  t.pattern = 'spec/**/*_spec.rb'
end

task :benchmark do
  arr1 = [2, 10, 1, 6, 3, 15, 9, 7, 4, 14, 5, 8, 12, 13]
  arr2 = [1, 3, 5, 4, 5, 7, 6, 8, 9, 13, 11, 12, 15, 14]
  arr3 = [15, 9, 7, 7, 5, 12, 9, 9, 15, 4, 4, 15, 4, 12, 5]
  arr4 = [2, 1_023_221, 1, 60, 3, 15_010, 9, 7, 40, 114, 5001, 8, 12, 13]

  Benchmark.bm do |b|
    b.report('Random:')          { 1000.times { arr1.radix_sort } }
    b.report('Nearly sorted:')   { 1000.times { arr2.radix_sort } }
    b.report('Few uniques:')     { 1000.times { arr3.radix_sort } }
    b.report('Large numbers:')   { 1000.times { arr4.radix_sort } }
  end
end
