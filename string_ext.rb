class StringExt

  def initialize (str1, str2)
    @str1 = str1
    @str2 = str2
  end

  def concat
    @str1 + @str2
  end

  def substract
   tmp = @str1.dup
   tmp.slice! @str2
   tmp
  end

end
