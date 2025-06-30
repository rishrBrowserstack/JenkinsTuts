my_string = "Hello, Ruby!"
my_number = 42

puts my_string
puts "The number is: #{my_number}"

def multiply(x, y)
  return x * y
end

product = multiply(6, 7)
puts "The product is: #{product}"

if my_number > 50
  puts "The number is greater than 50."
else
  puts "The number is 50 or less."
end

colors = ["red", "green", "blue"]
puts "First color: #{colors[0]}"
