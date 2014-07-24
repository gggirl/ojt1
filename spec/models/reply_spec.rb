require 'spec_helper'

describe Reply do
	it 'has a valid content' do
     	(:body).should be_true
    end
   
    it 'has a invalid body if nil' do
     	(:body == nil).should be_false
    end
    it { should belong_to(:forum) }
end
	