require_relative '../lib/stark'

class Direwolf

  attr_reader :name, :home, :size, :starks_to_protect, :hunts_white_walkers

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts_white_walkers = true
  end

  def protects(stark_name)
    if @home == stark_name.location && @starks_to_protect.count != 2
      @starks_to_protect << stark_name
      stark_name.is_protected
      @hunts_white_walkers = false
    end
  end

  def hunts_white_walkers?
    @hunts_white_walkers
  end

  def leaves(stark_name)
    @starks_to_protect.delete(stark_name)
    stark_name.is_not_protected
    return stark_name
  end
end
