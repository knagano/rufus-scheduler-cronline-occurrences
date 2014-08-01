require 'spec_helper'

describe 'Rufus::Scheduler' do
  describe 'CronLine' do
    describe '#occurrences' do
      it 'normal case' do
        occurrences = Rufus::Scheduler.parse('*/2 * * * * *')
          .occurrences(Time.parse('2014-07-31 00:00:01 +0900'), Time.parse('2014-07-31 00:00:11 +0900'))
        expect(occurrences.size).to eq 5
        expect(occurrences[0]).to eq Time.parse('2014-07-31 00:00:02 +0900')
        expect(occurrences[1]).to eq Time.parse('2014-07-31 00:00:04 +0900')
        expect(occurrences[2]).to eq Time.parse('2014-07-31 00:00:06 +0900')
        expect(occurrences[3]).to eq Time.parse('2014-07-31 00:00:08 +0900')
        expect(occurrences[4]).to eq Time.parse('2014-07-31 00:00:10 +0900')
      end

      it 'first arg exclusive, second arg inclusive' do
        occurrences = Rufus::Scheduler.parse('*/2 * * * * *')
          .occurrences(Time.parse('2014-07-31 00:00:00 +0900'), Time.parse('2014-07-31 00:00:10 +0900'))
        expect(occurrences.size).to eq 5
        expect(occurrences[0]).to eq Time.parse('2014-07-31 00:00:02 +0900')
        expect(occurrences[1]).to eq Time.parse('2014-07-31 00:00:04 +0900')
        expect(occurrences[2]).to eq Time.parse('2014-07-31 00:00:06 +0900')
        expect(occurrences[3]).to eq Time.parse('2014-07-31 00:00:08 +0900')
        expect(occurrences[4]).to eq Time.parse('2014-07-31 00:00:10 +0900')
      end

      it 'zero occurrence' do
        occurrences = Rufus::Scheduler.parse('*/2 * * * * *')
          .occurrences(Time.parse('2014-07-31 00:00:00 +0900'), Time.parse('2014-07-31 00:00:01 +0900'))
        expect(occurrences.size).to eq 0
        expect(occurrences).to eq []
      end

      it 'first arg and second one are same' do
        occurrences = Rufus::Scheduler.parse('*/2 * * * * *')
          .occurrences(Time.parse('2014-07-31 00:00:00 +0900'), Time.parse('2014-07-31 00:00:00 +0900'))
        expect(occurrences.size).to eq 0
        expect(occurrences).to eq []
      end

      it 'second arg precedes first one' do
        occurrences = Rufus::Scheduler.parse('*/2 * * * * *')
          .occurrences(Time.parse('2014-07-31 00:00:10 +0900'), Time.parse('2014-07-31 00:00:00 +0900'))
        expect(occurrences.size).to eq 0
        expect(occurrences).to eq []
      end
    end
  end
end
