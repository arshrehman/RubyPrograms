class ProcMagick

  def for_each(range, &p)
    @array = range.to_a
    i = 0
    while i < @array.size
      p.call(@array[i])
      i += 1
    end
  end  
end  

proc = ProcMagick.new
proc.for_each(1..100) do |item|
    if item%2 == 0
     puts "These are the elements belongs to array which can be completely divisible by 2: #{item}"
    end    
  end