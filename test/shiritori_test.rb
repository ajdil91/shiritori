require "minitest/autorun"

$:.unshift File.expand_path("../lib", __dir__)
require "shiritori"

class ShiritoriTest < Minitest::Test
  def test_to_katakana
    assert_equal("カタカナ", Shiritori.to_katakana('かたかな'))
  end

  def test_to_hiragana_from_romaji
    assert_equal("カタカナ", Shiritori.to_katakana_from_romaji('katakana'))
  end

  def test_to_romaji_from_katakana
    assert_equal("katakana", Shiritori.to_romaji_from_katakana('カタカナ'))
  end

  def test_last_char
    assert_equal("ナ", Shiritori.last_char('カタカナ'))
  end

  def test_new_word_begin_with_char
    assert_equal("ノゾミ", Shiritori.new_word_begin_with_char('ノ', ['ノゾミ', 'カタカナ']))
  end

end
