class StringIterator
  def initialize(compressed_string)
    @st = []
    s = compressed_string.dup
    while !s.empty? do
      md = s.match(/^([^\d])([\d]+)/)
      ch = md[1]
      num = md[2]
      @st << [ch, num.to_i]
      s = s[(ch.length+num.length)..-1]
    end
  end

  def next()
    return ' ' if @st.empty?
    ch, n = @st.shift
    @st.unshift([ch, n-1]) if n > 1
    ch
  end

  def has_next()
    !@st.empty?
  end
end
