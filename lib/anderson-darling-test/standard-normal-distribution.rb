class StandardNormalDistribution
require 'integration'

  def cumlative_distribution(x)
    normal_pdf=lambda {|x| (1/Math.sqrt(2*Math::PI))*Math.exp(-(x**2/2))}
    return Integration.integrate(Integration::MInfinity, x , {:tolerance=>1e-10}, &normal_pdf)
  end

end
