module InsertionSort
  extend self

  def insert_to(el, l)
    n = l.size
    p = n - 1

    while p >= 0 and el < l[p]
      p -= 1
    end
    l.insert(p+1, el)
  end

  def sort(l)
    return if l.empty?
    l.inject([]) do |acc, el|
      insert_to(el, acc)
    end
  end

  def print_result(origin, result)
    puts "origin: #{origin.join(',')}"
    puts "result: #{result.join(',')}"
  end
end

