# extending class Array
class Array
  def radix_sort
    degroup(0, initial: self.dup)
  end

  private

  def degroup(index = 0, type = {})
    nums = []
    type[:current] ? nums = @groups.flatten : nums = type[:initial]
    return nums if index >= nums.length
    @groups = [[],[],[],[],[],[],[],[],[],[]]

    nums.each { |num| engroup(num, index) }

    index += 1
    degroup(index, current: true)
  end

  def engroup(num, index = 0)
    rnum = num.to_s.scan(/./).reverse.map { |digit| digit.to_i }
    index < rnum.size ? @groups[rnum[index]].push(num) : @groups[0].push(num)
  end
end
