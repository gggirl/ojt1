require 'spec_helper'

describe Forum do
	it 'has a valid content' do
     	(:content).should be_true
    end
    it 'has a valid title' do
    	(:title).should be_true
    end
    it 'has a invalid content if nil' do
     	(:content == nil).should be_false
    end
    it 'has a invalid title if nil' do
     	(:title == nil).should be_false
    end
    it { should have_many(:replies) }
end
	