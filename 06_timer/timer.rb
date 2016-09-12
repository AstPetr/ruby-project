class Timer
  #write your code here
  def initiaalize
  	@minutes = 0
  	@hours = 0
  end

  def seconds
  	@seconds = 0
  end

  def seconds=(s)
  	@seconds = s
  end

  def time_string
  	count
  	"#{format(@hours)}:#{format(@minutes)}:#{format(@seconds)}"
  end

  private 

  def count
  	@hours = 0
  	@minutes = @seconds/60
  	@seconds = @seconds%60
  	while @minutes > 60
  		@minutes = @minutes - 60
  		@hours += 1
  	end
  end

  def format h
  	if h < 10
  		h = h.to_s
  		h[0,0] = "0"
  	end
  	h
  end 

end
