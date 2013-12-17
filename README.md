# SentimentParser

Totals up the sentiment value for a given set of words.

## Installation

Add this line to your application's Gemfile:

    gem 'sentiment_parser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sentiment_parser

## Usage

    SentimentParser.new.parse("This is a sad")
    => -0.583333333333

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


### Attribution
Sentiment data from Sentiwordnet (http://sentiwordnet.isti.cnr.it/).

Thanks to Christopher J. MacLellan for his blog post on tweet sentiment analysis (http://www.christopia.net/2011/06/05/sentiment-analysis-of-tweets-using-ruby) and assistance
