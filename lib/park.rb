class Park
  attr_reader :name,
              :trails

  def initialize(name)
    @name = name
    @trails = []

  end

  def add_trail(trail)
    @trails << trail
  end

  def trails_shorter_than(distance)
    @trails.find_all do |trail|
      trail.length < distance
    end
  end

  def hikeable_miles
    @trails.sum do |trail|
      trail.length
    end
  end

  def trails_by_level
    by_level = {}
    @trails.each do |trail|
      if !by_level[trail.level]
        by_level[trail.level] = [trail.name]
      else
        by_level[trail.level] += [trail.name]
      end 
    end
    by_level

    #doesn't return all trail names below
    # by_level = {}
    # @trails.each do |trail|
    #   by_level[trail.level] = [trail.name]
    # end
    # by_level
    # require 'pry'; binding.pry
  end
end
#use if statement like this
#if !snacks[item]
# snacks[item] = quantity
# else
#   snacks[item] += quantity
# end
