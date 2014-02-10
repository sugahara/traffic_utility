require 'anderson-darling-test/stats/stats'
include Stats
module Detector
  class Sigma
    def initialize(sigma_amp)
      @sigma_amp = sigma_amp
    end

    def is_anomaly?(data_array, next_data)
      mean = avg(data_array)
      sigma = standard_dev(data_array)
      if (next_data - mean).abs < sigma * (@sigma_amp)
        return false
      end
      true
    end

end
