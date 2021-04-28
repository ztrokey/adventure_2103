class Hiker
  attr_reader :name,
              :experience_level,
              :snacks,
              :parks_visited

  def initialize(name, experience_level)
    @name = name
    @experience_level = experience_level
    @snacks = {}
    @parks_visited = []

  end

  def pack(item, quantity)
    if !snacks[item]
      snacks[item] = quantity
    else
      snacks[item] += quantity
    end
  end

  def visit(park)
    @parks_visited << park
  end

  def possible_trails
    trails = []
    @parks_visited.each do |park|
      park.trails.each do |trail|
        trails << trail if trail.level == @experience_level
      end
    end
    trails
  end

  def favorite_snack
    
  end
end