class Weekend

  def initialize(today)
    @today = today
  end

  def friday
    beginning_of_week + 4.days
  end

  def saturday
    beginning_of_week + 5.days
  end

  private

  def beginning_of_week
    @today.beginning_of_week
  end

end
