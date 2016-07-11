require "nokogiri"
require "httparty"

puts "What stock you want to look for?"
symbol = gets.chomp
url = "http://finance.yahoo.com/q?s=#{symbol}"

response = HTTParty.get url
ruby_dom = Nokogiri::HTML(response.body)

puts "Current Price. $" + ruby_dom.xpath("//span[@id='yfs_l84_#{symbol.downcase}']").first.inner_text

puts "Prev Close. $" + ruby_dom.xpath("//td[@class='yfnc_tabledata1']").first.inner_text
