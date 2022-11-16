class Board
    #Part 1
  def initialize(n)
    @n = n
    @grid = Array.new(n) { Array.new(n, :N) }
    @size = n * n
  end

  def size
    @size
  end

  def [](pos)
    @grid[pos[0]][pos[1]]
  end

  def []=(pos, value)
    @grid[pos[0]][pos[1]] = value
  end

  def num_ships
    @grid.flatten.count { |ele| ele == :S }
  end

  #Part 2
  def attack(pos)
    if self[pos] == :S
        self[pos] = :H
        print "you sunk my battleship!"
        true
    else
        self[pos] = :X
        false
    end
  end

  def place_random_ships
    total_ships = size/4

    count = 0
    while count < total_ships
        rand_num = rand(@size)
        rand_row = rand_num / @n
        rand_col = rand_num % @n
        pos = [rand_row, rand_col]

        if self[pos] == :N
            count += 1
            self[pos] = :S
        end
    end
  end
end
