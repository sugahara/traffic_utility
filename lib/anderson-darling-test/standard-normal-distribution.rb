class StandardNormalDistribution
  @normal_pdf=lambda {|x| (1/Math.sqrt(2*Math::PI))*Math.exp(-(x**2/2))}

  def cumlative_distribution(xe)
    xs = -20
    n = 100
    deltax = (xe-xs)*1.0 / n
    sum = (@normal_pdf.call(xs)+@normal_pdf.call(xe)) / 2.0
    for  i  in 1..(n-1)
      sum = sum + @normal_pdf.call(xs+i*deltax)
    end
    deltax * sum
  end

end
