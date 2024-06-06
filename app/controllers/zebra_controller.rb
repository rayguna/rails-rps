class ZebraController < ApplicationController
  def rules
    render({:template => "game_templates/rules"})
  end

  def play_rock
    @random_move = ["rock", "paper", "scissors"].sample

    render({:template => "game_templates/play_rock"})
  end
  
  def play_paper
    @random_move = ["rock", "paper", "scissors"].sample

    render({:template => "game_templates/play_paper"})
  end

  def play_scissors
    @random_move = ["rock", "paper", "scissors"].sample

    render({:template => "game_templates/play_scissors"})
  end

end
