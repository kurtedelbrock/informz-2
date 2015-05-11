module FizzBuzz
  def self.check(num)
    
    (f = [["Fizz"][num % 3], ["Buzz"][num % 5]].join).empty? ? "" : f
    
    # val = {"FizzBuzz" => 15, "Fizz" => 3, "Buzz" => 5}.detect {|key, value| num % value == 0 }
    #
    # val ? val.first : ""
    
  end
end