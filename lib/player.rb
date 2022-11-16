class Player
    def get_move
        print "enter a position with coordinates separated with a space like '4 7'"
        move = gets.chomp
        move_position = [move[0].to_i, move[2].to_i]
    end
end