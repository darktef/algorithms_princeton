class QuickFind
  # initialize the ids array
  # @param n [integer] max number in the array
  # 
  # @return [Array] the ids array
  def initialize(n)
    @ids = []
    0.upto(n) {|i| @ids[i] = i}
  end

  # whether two number is connected
  # @param p [integer] 
  # @param q [integer] 
  # 
  # @return [boolean] 
  def connected(p,q)
    @ids[p] == @ids[q]
  end
  # 
  # connect two numbers
  # @param p [integer] 
  # @param q [integer] 
  # 
  # @return [type] [description]
  def union(p,q)
    return if connected(p,q)
    p_ind = @ids[p]
    q_ind = @ids[q]
    0.upto(@ids.length) do |i|
      @ids[i] = q_ind if @ids[i] == p_ind
    end
  end
end

# we do not accept quadratic algorithm in general
# will be too expensive for larger problem set