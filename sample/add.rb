require 'benchmark/ips'
 
Benchmark.ips do |x|
  x.report('addition') { 1 + 2 }
  x.report('addition with send') { 1.send(:+, 2) }
  x.compare!
end
