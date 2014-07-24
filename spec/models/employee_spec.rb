require 'spec_helper'

describe Employee do
	
 #it "should have username" do
 #	@employee=FactoryGirl.create(:employee)
 #	@employee.username.should=="MyString"
 #end
    it 'has a valid userid' do
     	(:userid).should be_true
    end
    it 'has a valid username' do
    	(:username).should be_true
    end
    it 'has a valid email' do
     	(:email).should be_true
    end
    it 'has a valid password' do
    	(:password).should be_true
    end
 	it 'has a valid password_confirmation' do
     	(:password_confirmation).should be_true
    end
    it 'has a valid age' do
    	(:age).should be_true
    end
    it 'has a valid birthday' do
     	(:birthday).should be_true
    end
    it 'has a valid NRCNo' do
    	(:NRCNo).should be_true
    end
    it 'has a valid Gender' do
     	(:Gender).should be_true
    end
    it 'has a valid specialize' do
    	(:specialize).should be_true
    end
    it 'has a valid phno' do
     	(:phno).should be_true
    end
    it 'has a valid address' do
    	(:address).should be_true
    end
    it 'has a valid travelfee' do
    	(:travelfee).should be_true
    end
    it 'has a valid entrydate' do
     	(:entrydate).should be_true
    end
    it 'has a invalid userid if nil' do
     	(:userid == nil).should be_false
    end
    it 'has a invalid username if nil' do
     	(:username == nil).should be_false
    end
    it 'has a invalid email if nil' do
     	(:email == nil).should be_false
    end
    it 'has a invalid password if nil' do
     	(:password == nil).should be_false
    end
    it 'has a invalid password_confirmation if nil' do
     	(:password_confirmation == nil).should be_false
    end
    it 'has a invalid age if nil' do
     	(:age == nil).should be_false
    end
    it 'has a invalid birthday if nil' do
     	(:birthday == nil).should be_false
    end
    it 'has a invalid NRCNo if nil' do
     	(:NRCNo == nil).should be_false
    end
    #it 'has a invalid Gender if nil' do
     #	(:Gender == nil).should be_false
    #end
    it 'has a invalid specialize if nil' do
     	(:specialize == nil).should be_false
    end
    it 'has a invalid phno if nil' do
     	(:phno == nil).should be_false
    end
    it 'has a invalid address if nil' do
     	(:address == nil).should be_false
    end
    it 'has a invalid travelfee if nil' do
     	(:travelfee == nil).should be_false
    end
    it 'has a invalid entrydate if nil' do
     	(:entrydate == nil).should be_false
    end
    it 'is invalid' do
    	(:userid == 'fff').should be_false
    end
    it 'is invalid' do
    	(:phno == 'fff').should be_false
    end
    it 'is invalid' do
    	(:travelfee == 'fff').should be_false
    end
    it 'is invalid' do
    	(:age == 'fff').should be_false
    end
    it 'username is invalid if number only' do
    	(:username == 123).should be_false
    end
    it do
        should validate_presence_of(:password_confirmation)
    end
    it  do
        should validate_confirmation_of(:password)
    end
    it { should ensure_inclusion_of(:Gender).in_array(['Male','Female']) }
    it { should validate_numericality_of(:age).only_integer }
    it { should validate_numericality_of(:phno).only_integer }
    it { should validate_numericality_of(:travelfee).only_integer }
    it { should validate_numericality_of( :userid).only_integer }
    it do
        should allow_value('phyu1@gmail.com').for(:email)
    end
    it do
        should allow_value('hh1').for(:username)
    end
end


