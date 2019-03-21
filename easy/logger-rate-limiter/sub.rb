
class Logger
  def initialize()
    @msgs = {}
  end

  def should_print_message(timestamp, message)
    if @msgs.has_key?(message)
      if timestamp - @msgs[message] >= 10
        @msgs[message] = timestamp
        return true
      end
    else
      @msgs[message] = timestamp
      return true
    end
    false
  end
end

# Your Logger object will be instantiated and called as such:
logger = Logger.new()
logger.should_print_message(1, "foo");


logger.should_print_message(2,"bar");

logger.should_print_message(3,"foo");

logger.should_print_message(8,"bar");

logger.should_print_message(10,"foo");

logger.should_print_message(11,"foo");
