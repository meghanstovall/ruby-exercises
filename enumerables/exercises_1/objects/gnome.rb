class Gnome

  attr_reader :type

  def initialize(type)
    @type = type
  end

  def roving?
    @type == 'roving'
  end
end
