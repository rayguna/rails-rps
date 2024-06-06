# rails-rps

Target: https://rps.matchthetarget.com/


Notes:

1. Know the location of routes.rb within config folder. This is where you set the paths.

Here is how you set the routes in routes.rb. The :controller is the child class that is inherited from a built-in Ruby class and :action is the class method.

```
#app/routes.rb

Rails.application.routes.draw do
  get("/rock", {:controller => "zebra", :action => "giraffe"})

  get("/paper", {:controller => "zebra", :action => "elephant"})

  get("/scissors", {:controller => "zebra", :action => "lion"})
end
```

2. A minimal example: The class which is called in the above must be placed in the app/controllers folder (which is where 99% of the information is being stored). For instance, let's create app/controllers/zebra_controller.rb. The parameter :controller => "zebra" is linked to the class called ZebraController. The parameter :action => "giraffe" is linked to the method def giraffe.

```
class ZebraController < ApplicationController
  def giraffe
    render({:plain => "howdy"})
  end
end
```
To test the code, visit the browser https://probable-fortnight-6r9qwqx447g245rp-3000.app.github.dev/rock

Knowing that the above code works, modify the function input render to an actual web-page. You must place the play_rock.html file in the views/game_templates folder. This is unlike sinatra where you could place the file directly within the views folder. Note that you call the play_rock file without having to specify the extension .html.erb.

```
class ZebraController < ApplicationController
  def giraffe
    render({:template => "game_templates/play_rock"})
  end
end
```
