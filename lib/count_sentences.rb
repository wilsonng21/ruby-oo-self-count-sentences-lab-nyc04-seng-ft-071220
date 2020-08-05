require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true 
    else
      false
    end
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    array = self.split
    total = 0
    total += array.count { |element| element.sentence? }
    total += array.count { |element| element.question? }
    total += array.count { |element| element.exclamation? }
    # binding.pry
  end
end