require "csv"
require "sentiment_parser/version"

class SentimentParser
  attr_accessor :words

  class << self
    def parse(words)
      new(words).parse
    end
  end

  def initialize(words)
    @words = words
  end

  def load(data)
    hash = {}
    CSV.parse(data, :col_sep => "\t") do |row|
      hash[row[1]] = row[0]
    end
    hash
  end

  def parse
    total = 0.0

    words.split(' ').each do |word|
      total += sentiment_data[word].to_f
    end

    total
  end

private

  def sentiment_files
    @files ||= ['vendor/sentiments/words.txt', 'vendor/sentiments/emotes.txt'].map do |file|
      File.expand_path(File.join(__FILE__, '../..', file))
    end
  end

  def sentiment_data
    @sentiment_data ||= sentiment_files.map {|f| load(File.read(f)) }.reduce({}, :merge)
  end
end