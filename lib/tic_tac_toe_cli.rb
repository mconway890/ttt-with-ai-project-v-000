class TicTacToeCLI

  def initialize
  end

  def call
    puts "Welcome to Tic Tac Toe!"
    puts "Please enter the number of human players: 0, 1, or 2?"
    input = gets.strip.to_i

    if input == 0
      player_1 = Players::Computer.new("X")
      player_2 = Players::Computer.new("O")
    elsif input == 1
      player_1 = Players::Human.new("X")
      player_2 = Players::Computer.new("O")
    elsif input == 2
      player_1 = Players::Human.new("X")
      player_2 = Players::Human.new("O")
    end


    game = Game.new(player_1, player_2, board = Board.new)
    until game.over?
      game.play
    end

    if game.won?
      puts "Would you like to play again? Y/N"
      if gets.strip.upcase == "Y"
        board.reset!
        game.play
      elsif
        puts "Thank you for playing!"
      end
    end

  end

end
