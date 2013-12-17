require 'spec_helper'

describe SentimentParser do
  subject           { SentimentParser.new }
  let(:data)        { "-1.0\tupset" }
  let(:parsed_data) { {'upset' => '-1.0'} }

  describe '#parse' do
    it 'gives a negative score' do
      allow(subject).to receive(:sentiment_data).and_return(parsed_data)
      expect(subject.parse('I am upset')).to eql(-1.0)
    end
  end

  describe '#load' do
    it { expect(subject.load(data)).to eql(parsed_data) }
  end


end