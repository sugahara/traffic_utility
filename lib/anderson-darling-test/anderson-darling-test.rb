# -*- coding: utf-8 -*-

module AndersonDarlingTest
require File.expand_path("../stats/stats.rb",__FILE__)
require File.expand_path("../standard-normal-distribution.rb",__FILE__)

  def anderson_darling_test(samples)
    if samples.size < 5
      puts "sample busoku"
      exit
    end
    p normalized = normalize(samples)
    ordered = asc(normalized)
    value = calc_anderson_darling_value(ordered)

    n = samples.size.to_f

    p value = value * (1.0 + 4/n - 25/(n*n))

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
      sum+= (2.0*(i+1)-1.0)*(Math::log(cdf1) + Math.log(1.0-cdf2))
    end
    n = samples.size.to_f
    return (-n - (sum/n))
  end

end
