require 'minitest/autorun'
require './rail_navi'

class RailInfomationScrapingTest < Minitest::Test
  def test_scraping
    assert get_delay_infomation('阪急')
  end
end