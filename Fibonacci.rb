def immutable_fibonacci(position)
  if (position > 0)
    (1..position - 1).reduce([1]) do |fib, n| 
      fib + [(n > 1 ? (fib[n - 1] + fib[n - 2]) : 1)]
    end
  end
end

def mutable_fibonacci(position)
  fib_list = Array.new
  (0..position - 1).each do |i|
     fib_list << (i > 1 ? (fib_list[i - 1] + fib_list[i - 2]) : 1)
  end
  fib_list
end

def recursive_fibonacci(position)
  recursive_fib_helper(Array.new, position)
end

def recursive_fib_helper(fib_list, position)
  if position <= 0
    fib_list
  else
    size = fib_list.size
    next_fib = (size > 1 ? (fib_list[size - 1] + fib_list[size - 2]) : 1)
    recursive_fib_helper(fib_list + [next_fib], position - 1)
  end
end

input = ARGV[0].to_i

p mutable_fibonacci(input)

p recursive_fibonacci(input)

p immutable_fibonacci(input)

