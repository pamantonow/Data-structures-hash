 class HashItem

  attr_accessor :hash
  def initialize(args = {})
   @hash = args
  end

  def new
    return @hash
  end

  def set(key, value)
    hash[key] = value
  end

  def get(key)
   return @hash[key]
  end

  def has_key?(key)
    if @hash[key] 
      return true
    else
      return false
    end
  end

  def remove(key)
    return @hash.delete(key)
  end
 

end

