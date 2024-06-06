Rails.application.routes.draw do
  get("/rock", {:controller => "zebra", :action => "play_rock"})

  get("/paper", {:controller => "zebra", :action => "play_paper"})

  get("/scissors", {:controller => "zebra", :action => "play_scissors"})

  get("/", {:controller => "zebra", :action => "rules"})
end
