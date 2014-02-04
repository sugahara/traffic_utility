require 'traffic_util'

include AndersonDarlingTest

samples=File.open(ARGV[0],'r').readlines.map{|line| line.to_f}

p anderson_darling_test(samples)
