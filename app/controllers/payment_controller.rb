class PaymentController < ApplicationController
  def new
    render({ :template => "payment/new" })
  end

  def results
    @apr = params.fetch("apr").to_f
    @num_years = params.fetch("num_years").to_i
    @principal = params.fetch("principal").to_f
  
    r = @apr / 100 / 12
    n = @num_years * 12
    top = r * @principal
    bottom = 1 - (1 + r) ** -n
  
    @apr = @apr.to_fs(:percentage, {:precision => 4})
    @principal = @principal.to_fs(:currency)
    @result = (top / bottom).to_fs(:currency)
    render({ :template => "payment/results" })
  end
end
