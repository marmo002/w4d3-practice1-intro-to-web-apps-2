class Location

  # Instance methods
  def initialize(name)
    @name = name
  end

  #READERS GETTERS
  def name
    @name
  end

  #WRITTERS SETTERS
  def name=(new_name)
    @name = new_name
  end

end #end of Location class

class Trip

  def initialize
    @destinations = []
  end

  # getters
  def destinations
    @destinations
  end

  def add_destination(destination)
    @destinations << destination
  end

  def start_trip

    puts "Began trip"

    # destinations.each_with_index do |destination, index|
    #   next_location = destinations[ index + 1]
    #
    #   next unless next_location #=> continue ONLYIF true
    #   puts "Travelled from #{destination.name} to #{next_location.name}"
    #
    # end

    destinations.each_cons(2) { |cities|

      puts "Travelled from \"#{cities[0].name}\" to \"#{cities[1].name}\""

    }

    puts "Ended trip"

    "end"

  end

end #end of Trip class
