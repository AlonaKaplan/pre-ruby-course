class StringExt

  def initialize (str1, str2)
    @str1 = str1
    @str2 = str2
  end

  def concat
   return @str1 + @str2
  end

  def substract
   tmp = @str1
   tmp.slice! @str2
   return tmp 
  end

end
