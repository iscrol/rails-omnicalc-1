Rails.application.routes.draw do
  get("/", { :controller => "square", :action => "new" })

  get("square/new", { :controller => "square", :action => "new" })
  get("square/results", { :controller => "square", :action => "results" })

  get("square_root/new", { :controller => "square_root", :action => "new" })
  get("square_root/results", { :controller => "square_root", :action => "results" })

  get("random/new", { :controller => "random", :action => "new" })
  get("random/results", { :controller => "random", :action => "results" })

  get("payment/new", { :controller => "payment", :action => "new" })
  get("payment/results", { :controller => "payment", :action => "results" })
end
