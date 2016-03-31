require 'benchmark/ips'
 
Benchmark.ips do |x|
  x.report('parallel') do
    a, b = 10, 20
  end
  
  x.report('sequential') do
    a = 10
    b = 20
  end
  x.compare!
end
