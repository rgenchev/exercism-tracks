class Array
  def accumulate
    new_ary = []
    each { |e| new_ary << yield(e) }
    new_ary
  end
end