fibonacci = Enumerator.new do |caller|
    i1, i2 = 1, 1
    loop do
      caller.yield i1
      i1, i2 = i2, i1+i2
    end
  end
  6.times { puts fibonacci.next }