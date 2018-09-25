# coding: utf-8
class Eratos
  def self.sieve_of_eratosthenes(num_str)
    num = num_str.to_i
    if num < 1 then
      puts "2以上の自然数を引き数にしてください"
    end
    square_n = num ** (1.0/2.0)
    nums = [*(2..num)]
    while square_n > nums[0].to_f
      tmp = nums[0]
      nums = nums.reject { |m| m % tmp == 0}
      nums.push(tmp)
    end
    return nums.sort.join(", ")
  end
end

if __FILE__ == $0
  puts Eratos.sieve_of_eratosthenes(ARGV[0])
end
