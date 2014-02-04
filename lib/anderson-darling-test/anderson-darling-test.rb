# -*- coding: utf-8 -*-

module AndersonDarlingTest
require 'anderson-darling-test/stats/stats'
require 'anderson-darling-test/standard-normal-distribution'
include Stats

  def anderson_darling_test(samples)
    if samples.size < 5
      puts "Samples size need to be more than five."
      puts "See http://en.wikipedia.org/wiki/Anderson%E2%80%93Darling_test"
      exit
    end
    normalized = normalize(samples)
    ordered = asc(normalized)
    value = calc_anderson_darling_value(ordered)

    n = samples.size.to_f

    value = value * (1.0 + 4/n - 25/(n*n))

    critical_value = 1.092 # 1.0% Significance
    #critical_value = 0.918 # 2.5% Significance
    #critical_value = 0.787 # 5.0% Significance
    #critical_value = 0.656 # 10.0% Significance
    #critical_value = 0.576 # 15.0% Significance


    return value <= critical_value
  end

  def calc_anderson_darling_value(samples)
    snd = StandardNormalDistribution.new()
    sum = 0.0
    samples.each_with_index do |v,i|
      cdf1 = snd.cumlative_distribution(v)
      cdf2 = snd.cumlative_distribution(samples[samples.size-1-i])
      begin
        sum+= (2.0*(i+1)-1.0)*(Math::log(cdf1) + Math.log(1.0-cdf2))
      rescue Math::DomainError
        sum += 0
      end
    end
    n = samples.size.to_f
    return (-n - (sum/n))
  end

end
