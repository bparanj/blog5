require 'benchmark/ips'

Benchmark.ips do |x|
  x.report("to_s") { (1+2).to_s }
  x.report("String interpolation") { "#{1+2}"}
  # Compare the iterations per second of the various reports!
  x.compare!
end