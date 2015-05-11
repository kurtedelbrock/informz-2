module FizzBuzz
  def self.check(num)
    val = {"FizzBuzz" => 15, "Fizz" => 3, "Buzz" => 5}.detect {|key, value| num % value == 0 }
    val ? val.first : ""
  end
end