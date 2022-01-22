class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split[1..-1].join(' ')
  end

  def log_level
    @line.split[0].gsub(/\[|\]|:/, '').downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
