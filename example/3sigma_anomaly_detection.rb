require 'traffic_util'
require 'anomaly-detection/detector/sigma'
include AnomalyDetection

timestamp_array=[]

no_anomaly_timewindow = Timewindow.new(100,1)
sigma_detector = Detector::Sigma.new(3.0)
result_array = []

data = File.opne(ARGV[0],'r')

data_lines = data.readlines

data_lines.each do |line|
  if no_anomaly_timewindow.is_full? == false
    timestamp_array << line.split(" ")[0]
    result_array << 0
    no_anomaly_timewindow.add([line.split(" ")[1]])
  else
    if sigma_detector.is_anomaly?(no_anomaly_timewindow.data_array, line.split(" ")[1])
      result_array << 1
    else
      result_array << 0
      no_anomaly_timewindow.add([line.split(" ")[1]])
    end
  end
end

timestamp_array.each_with_index do |timestamp, index|
  puts "#{timestamp} #{result_array[index]}"
end
