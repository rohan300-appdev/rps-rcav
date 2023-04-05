class ApplicationController < ActionController::Base
  layout("link_layout.html.erb")

  # Add your actions below this line
  # ================================

  def play_rock
    @comp_move = ['rock', 'paper', 'scissors'].sample

    if @comp_move == 'rock'
      @outcome = 'tied'
    elsif @comp_move == 'paper'
      @outcome = 'lost'
    elsif @comp_move == 'scissors'
    @outcome = 'won'
    end
    render({:template => "game_template/play_rock.html.erb"})
  end

  def play_paper
    @comp_move = ['rock', 'paper', 'scissors'].sample

    if @comp_move == 'rock'
      @outcome = 'won'
    elsif @comp_move == 'paper'
      @outcome = 'tied'
    elsif @comp_move == 'scissors'
    @outcome = 'lost'
    end
    render({:template => "game_template/play_paper.html.erb"})
  end

  def play_scissors
    @comp_move = ['rock', 'paper', 'scissors'].sample

    if @comp_move == 'rock'
      @outcome = 'lost'
    elsif @comp_move == 'paper'
      @outcome = 'won'
    elsif @comp_move == 'scissors'
    @outcome = 'tied'
    end
    render({:template => "game_template/play_scissors.html.erb"})
  end

  def homepage
    render({:template => "game_template/home.html.erb"})
  end
end
