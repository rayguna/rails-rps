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
3. The main index page is defined as: get("/", {:controller => "zebra", :action => "rules"}) within config/routes.rb. Here is the complete code:
```
Rails.application.routes.draw do
  get("/rock", {:controller => "zebra", :action => "play_rock"})

  get("/paper", {:controller => "zebra", :action => "play_paper"})

  get("/scissors", {:controller => "zebra", :action => "play_scissors"})

  get("/", {:controller => "zebra", :action => "rules"})
end

```

4. Place the repetitive links to play rock, play paper, and play scissors within views/layouts/application.html.erb. Make sure to place <% yield %> below the <a href="..."></a>. <% yield%> renders the content of the unique pages. Here is the code:

```
<!DOCTYPE html>
<html>
  <head>
    <title>Rails RPS</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
  </head>

  <body>

    <div>
      <a href="/rock">
        Play Rock
      </a>
    </div>

    <div>
      <a href="/paper">
        Play Paper
      </a>
    </div>

    <div>
      <a href="/scissors">
        Play Scissors
      </a>
    </div>
    <%= yield %>
    <a href="/">
      Rules
    </a>

  </body>
</html>
```
5. When finished, exit the app by pressing ctrl + c in the terminal. Then, type in the terminal "rale grade" and enter the token.
