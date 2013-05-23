require 'spec_helper'

describe Cat do
  it 'has 3 records' do
    expect(Cat.all).to have(3).items
  end
end
