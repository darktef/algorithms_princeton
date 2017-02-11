class QuickUnionImprov
  def initialize(n)
    @ids = []
    @sz = []

    0.upto(n) do |i| 
      @ids[i] = i
      @sz[i] = 1
    end
  end

  def connected(p,q)
    root(p) == root(q)
  end

  def union(p,q)
    return if connected(p,q)
    i = root(p)
    j = root(q)
    if @sz[i] > @sz[j]
      @ids[j] = i
      @sz[i] += @sz[j]
    else
      @ids[i] = j
      @sz[j] += @sz[i]
    end
  end

  private
  def root(p)
    if @ids[p] == p
      p
    else
      @ids[p] = @ids[@ids[p]]
      root(@ids[p])
    end
  end
end