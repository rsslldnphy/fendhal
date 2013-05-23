class Cat
  include Id::Model

  field :name
  field :paws
  field :breed

  def self.all
    [gerry, tabitha, ash]
  end

  def self.gerry
    new name: 'Gerry', paws: 4, breed: 'tabby'
  end

  def self.tabitha
    new name: 'Tabitha', paws: 4, breed: 'persian'
  end

  def self.ash
    new name: 'Ash', paws: 3, breed: 'moggy'
  end

end
