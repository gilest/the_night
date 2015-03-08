class Weekend

  def initialize(today)
    @today = today
    change_to_next_weekend! if @today.sunday?
  end

  def friday
    monday + 4.days
  end

  def saturday
    monday + 5.days
  end

  def change_to_next_weekend!
    @today = @today.next_week
  end

  private

  def monday
    @today.beginning_of_week
  end

end
