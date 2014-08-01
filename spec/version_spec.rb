require 'spec_helper'

describe 'rufus/scheduler/cronline/occurrences/version' do
  it 'can load' do
    expect { require 'rufus/scheduler/cronline/occurrences/version' }.to_not raise_error
  end
end
