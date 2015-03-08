class Orange_Tree

  def initialize
    @year = 0
    @height = 0.0
    @orange_count = 0

  end

  def age
    @year
  end

  def height
    @height
  end

  def count_the_oranges
    @orange_count
  end

  def pick_an_orange
    if @orange_count > 0
      @orange_count -= 1
      'Oh my! That orange was delicious'
    else
      'Oh :( No more oranges.'
    end
  end

  def one_year_passes
    @year = @year += 1

    # Decide if tree is too old and dies
    if @year == 100
      puts 'The orange tree passed away :('
      exit
    end

    # Add height
    @height += 0.5

    # Add fruit
    case @year
    when 0..5
      @orange_count = 0
    when 6..20
      @orange_count = 5
    when 21..50
      @orange_count = 50
    when 50..100
      @orange_count = 100
    end
  end
end

tree = Orange_Tree.new
4.times { tree.one_year_passes }
puts tree.age
puts tree.height
puts tree.count_the_oranges
puts tree.pick_an_orange
puts tree.count_the_oranges

5.times { tree.one_year_passes }
puts tree.age
puts tree.height
puts tree.count_the_oranges
puts tree.pick_an_orange
puts tree.count_the_oranges

30.times { tree.one_year_passes }
puts tree.age
puts tree.height
puts tree.count_the_oranges
puts tree.pick_an_orange
puts tree.count_the_oranges

50.times { tree.one_year_passes }
puts tree.age
puts tree.height
puts tree.count_the_oranges
puts tree.pick_an_orange
puts tree.count_the_oranges
