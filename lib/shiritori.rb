require "nkf"
require "mojinizer"

class Shiritori
  def self.to_katakana(string)
    NKF.nkf("-w -h2", string)
  end

  def self.to_katakana_from_romaji(string)
    string.katakana
  end

  def self.to_romaji_from_katakana(string)
    string.romaji
  end

  def self.last_char(string)
    string[-1]
  end

  def self.new_word_begin_with_char(char, array)
    array.find { |word| char == word[0]}
  end

  def self.japanese_nouns
    @japanese_nouns ||= begin
      word_data_file = File.expand_path('../data/word_data.txt', __dir__)
      File.readlines(word_data_file).map {|string| string.chomp! }
    end
  end
end
