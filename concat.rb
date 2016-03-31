require 'benchmark/ips'
 
Benchmark.ips do |x|
  x.report('concat with +=') do
    s = 'bat'
	s += 'mat'
  end
  x.report('concat with <<') do
    s = 'bat'
    s += 'mat'
  end
  x.report('concat with concat') do
    s = 'bat'
    s.concat('mat')
  end
  x.compare!
end

