require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'
require './lib/artist'
require 'pry'

class PhotographTest < MiniTest::Test

  def setup
    @attributes = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "4",
      year: "1954"
    }
    @photograph = Photograph.new(@attributes)
  end

  def test_photograph_exists
    assert_instance_of Photograph, @photograph
  end

  def test_photgraph_has_ID
    assert_equal "1", @photograph.id
  end

  def test_photograph_has_name
    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", @photograph.name
  end

  def test_photograph_has_artist_id
    assert_equal "4", @photograph.artist_id
  end

  def test_photograph_has_year
    assert_equal "1954", @photograph.year
  end
end
