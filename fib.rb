
def recursive_fib(n)
    if n == 1 
      1
    elsif n == 2
      1
    else
      recursive_fib(n-1) + recursive_fib(n-2)
    end
end 

def iterative_fib(number)
    n = number - 1
    a = [0, 1]
    for i in 1..n
      a << a[-1] + a[-2]
    end
    puts a[-1]
  end

# n = 35
# puts "#{n}'s fibonacci value is #{recursive_fib(n)}"
# puts iterative_fib(n)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib") { iterative_fib(num) }
end