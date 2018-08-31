require "./progress"

class MultipleProgressBar
  property output_stream : IO::FileDescriptor

  def initialize(use_stdout = false)
    @progress_bars = {} of Symbol => ProgressBar
    @output_stream = use_stdout ? STDOUT : STDERR
  end

  def create(name : Symbol)
    @progress_bars[name] = ProgressBar.new
  end

  def inc(name : Symbol)
    @progress_bars[name].tick(no_print: true)
    print_bars
  end

  def all_done?
    @progress_bars.reject { |_, p| p.done? }.empty? == true
  end

  private def print_bars
    @progress_bars.each do |_, progress|
      @output_stream.print "[#{progress.complete * position(progress)}#{progress.incomplete * (progress.width - position(progress))}]  #{progress.percent} % \n"
    end

    @output_stream.print "\033[#{@progress_bars.size}A"
  end

  private def position(progress)
    ((progress.current.to_f * progress.width.to_f) / progress.total).to_i
  end
end

