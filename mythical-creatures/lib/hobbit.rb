class Hobbit

  attr_reader :name, :disposition, :age, :adult, :old

  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @adult = false
    @old = false
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if @age >= 33
      @adult = true
    end
  end

  def old?
    if @age >= 101
      @old = true
    end
  end

  def has_ring?
    if @name == 'Frodo'
      return true
    else
      return false
    end
  end

  def is_short?
    true
  end

end
