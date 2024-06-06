class ZebraController < ApplicationController
  def giraffe
    render({:template => "game_templates/play_rock"})
  end
end
