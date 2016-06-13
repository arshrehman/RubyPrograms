class YieldMagick
  def initialize(range)
    @range = range.to_a
  end
  
  def for_each
    i = 0
    while i < @range.size
      yield @range[i]
      i += 1
    end
  end
end

y = YieldMagick.new(1..5)
y.for_each do |item|
  n = item.to_i
  n.times {puts "I am genius"}
end