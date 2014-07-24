require 'spec_helper'

describe "Employees" do
  describe "GET /employees" do
    it "has a name" do
     'views/employees/index'
       #Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get employees_path
      #response.status.should be(200)
    end
  end

  FactoryGirl.factories.map(&:name).each do |factory_name|
    describe "The #{factory_name} factory" do
        it 'is valid' do
            (factory_name).should be_true
        end
    end
  end
end
