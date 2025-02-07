class SquareController < ApplicationController
  def new
    render({ :template => "square/new" })
  end

  def results
    num = params.fetch("number", nil).to_f
    @result = num ** 2
    render({ :template => "square/results" })
  end
end
