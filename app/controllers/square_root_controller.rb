class SquareRootController < ApplicationController
  def new
    render({ :template => "square_root/new"})
  end

  def results
    num = params.fetch("number", nil).to_f
    @result = Math.sqrt(num)
    render({ :template => "square_root/results" })
  end
end
