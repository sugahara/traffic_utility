module Stats

  def avg(values)
    return values.inject(:+)/values.size.to_f
  end

  def standard_dev(values)
    mean = avg(values)
    return Math::sqrt(values.inject(0.0){|sum, v| sum +(v-mean)**2}/((values.size-1).to_f))
  end

  def normalize(values)
    values_g = GSL::Vector.alloc(values)
    mean = avg(values)
    deviation = standard_dev(values)
    return values.map{|v| (v-mean)/deviation}
  end

  def asc(values)
    return values.sort
  end

end
