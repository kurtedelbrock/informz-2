module FizzBuzz
  def self.check(num)
    "#{'Fizz' if num.modulo(3).zero?}#{'Buzz' if num.modulo(5).zero?}"
  end
end