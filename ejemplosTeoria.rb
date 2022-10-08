#Array
stack = []
stack.push "red"
stack.push "green"
stack.push "blue"

puts stack.pop
puts stack.pop
puts stack.pop

#Array : Shift y Unshift
stack = []
(stack.unshift 1).unshift 2
stack.unshift 3

puts stack.shift
puts stack.shift
puts stack.shift

#BLOQUES----------------------------

# assume Shape defined elsewhere
square = Shape.new(sides: 4) 
#
# .. lots of code
#
sum = 0
[1, 2, 3, 4].each do |value|
  square = value * value
  sum += square
end

puts sum
square.draw # BOOM!

#COMO SOLUCIONARLO?

square = "some shape"
sum = 0
[1, 2, 3, 4].each do |value; square|
  square = value * value # different variable
  sum += square
end
puts sum
puts square

# EJEMPLOS RAROS DE INJECT

[1,3,5,7].inject(:+)
[1,3,5,7].inject 100, :+
[1,3,5,7].inject(:*)