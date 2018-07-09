require 'open-uri'
require 'nokogiri'
require_relative 'constants'

 def convert_railcompany_to_symbol(company)
  case company
  when 'JR西日本近畿エリア'
    :west_jr
  when '阪急'
    :hankyuu
  when '阪神'
    :hanshin
  else
    puts '存在または対応していません'
  end
end

def get_delay_infomation(company)
  rail_symbol = convert_railcompany_to_symbol(company)
  charset = nil
  html = open(Constants::URLS[rail_symbol]) do |page|
    charset = page.charset
    page.read
  end
  contents = Nokogiri::HTML.parse(html)
  contents.xpath(Constants::XPATH[rail_symbol]).inner_text.strip
end

puts get_delay_infomation('JR西日本近畿エリア')
puts get_delay_infomation('阪急')
puts get_delay_infomation('阪神')
