require 'gsl'
include Math

def gaussian_rand(mu, sigma2, size)
  sigma = Math::sqrt(sigma2)
  r = GSL::Rng.alloc
  v = r.gaussian(sigma, size)
  v = v.collect {|v| v+mu}
  v.to_a
end

puts gaussian_rand(ARGV[0].to_f, ARGV[1].to_f, ARGV[2].to_i)
