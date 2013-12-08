require "rexml/document"
require "ap"

include REXML

class Parser

  attr_reader :doc

  def initialize
    file = File.new("./cia-1996.xml")
    @doc = REXML::Document.new(file)
  end

  def high_population
    population = XPath.match( doc, "//country").collect { |element| element.attributes["population"].to_i}.max
    puts "#{population} people lived in China in 1996."
  end

  def inflation_numbers
    hash = {}
     XPath.match(doc, "//country").collect {|key| hash[key.attributes['name']] = key.attributes['inflation'].to_i}
      sort_hash = Hash[hash.sort_by{|k,v|v}]
      a = sort_hash.to_a
      puts a[-5..-1]
  end

  def continents
    continents_hash = {}
    XPath.match(doc, "//country").collect {|key| continents_hash[key.attributes['continent']].nil?  
     continents_hash[key.attributes['continent']] = []}
    XPath.match(doc, "//country").collect {|key| 
      continents_hash[key.attributes['continent']] << key.attributes['name']}
      ap continents_hash
    end

end

a = Parser.new
a.high_population
a.inflation_numbers
a.continents

