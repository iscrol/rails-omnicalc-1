class RandomController < ApplicationController
  def new
    render({ :template => "random/new" })
  end

  def results
    min = params.fetch("minimum", nil).to_f
    max = params.fetch("maximum", nil).to_f
    @result = rand(min..max)
    render({ :template => "random/results" })
  end
end
