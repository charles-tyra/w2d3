class Board
  def initialize(n)
    @n = n
    @grid = Array.new(n) { Array.new(n, :N) }
    @size = n * n
  end
end
