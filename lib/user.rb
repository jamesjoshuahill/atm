class User

  attr_reader :first_name, :last_name

  def initialize(first_name, last_name, pin)
    @first_name, @last_name = first_name, last_name
    @pin = pin
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def verify_pin?(pin)
    pin == @pin
  end

end
