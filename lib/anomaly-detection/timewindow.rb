module AnomalyDetection
  class Timewindow
    attr_reader :data_array
    @data_array = []
    def initialize(window_size, slide_size)
      @window_size = window_size
      @slide_size = slide_size
    end

    def add(add_data_array)
      @data_array + add_data_array
      if @data_array.size > @window_size
        @data_array.shift(slide_size)
      end
    end

    def is_full?
      return true if @data_array.size == @window_size
      false
    end

    def pop
      @data_array.pop
    end
end
