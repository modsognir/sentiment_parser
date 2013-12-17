require 'spec_helper'

describe SentimentParser do
  subject           { SentimentParser.new('') }
  let(:data)        { "-1.0\tupset" }
  let(:parsed_data) { {'upset' => '-1.0'} }

  describe '#parse' do
    it 'gives a negative score' do
      expect(SentimentParser.parse('This is a sad')).to eql(-0.583333333333)
    end
  end

  describe '#load' do
    it { expect(subject.load(data)).to eql(parsed_data) }
  end


end