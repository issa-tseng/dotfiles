require 'irb/completion'

def time(times = 1)
  require 'benchmark'
  result = nil
  Benchmark.bm{ |x| x.report{ times.times{ result = yield } } }
  return result
end

