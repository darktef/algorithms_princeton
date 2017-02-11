class QuickUnion
  def initialize(n)
    @ids = []
    0.upto(n) { |i| @ids[i] = i}
  end

  def connected(p,q)
    root(p) == root(q)
  end

  def union(p,q)
    return if connected(p,q)
    i = root(p)
    j = root(q)
    @ids[p] = j
  end

  def root(p)
    @ids[p] == p ? p : root(@ids[p])
  end
end