require "./progress/*"

class ProgressBar
  property complete, incomplete, step, width, total
  getter current

  def initialize(@total = 100, @step = 1, @width = 100, @complete = "\u2593", @incomplete = "\u2591")
    @current = 0.0
  end

  def inc
    tick(@step)
  end

  def tick(n)
    old_percent = percent
    @current += n
    @current = 0.0 if @current < 0
    @current = @total if @current > @total
    new_percent = percent
    print(new_percent) if new_percent != old_percent
  end

  def set(n)
    if n < 0
      raise "Oh no!!! It can only be positive."
    end

    if @total < n
      raise "Oh no!!! It can be less than or equal to #{@total}"
    end

    @current = n if @total >= n && n >= 0
    print
  end

  def done
    @current = @total
    print
  end

  def done?
    @current >= @total
  end

  def percent
    sprintf "%.2f", @current.to_f / (@total.to_f / 100.to_f)
  end

  private def print(percent)
    STDOUT.flush
    STDOUT.print "[#{@complete * position}#{@incomplete * (@width - position)}]  #{percent} % \r"
    puts if done?
  end

  private def position
    ((@current.to_f * @width.to_f) / @total).to_i
  end
end
