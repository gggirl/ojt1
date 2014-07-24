# encoding: utf-8
### UTILITY METHODS ###

def create_employee
  @employee = Fabricate(:employee)
end

def delete_employee
  #@employee ||= Employee.where(:name => @employee[:name]).first
  @employee.destroy unless @employee.nil?
end

def find_employee
 # @employee ||= Employee.where(:name => @category[:name]).first
end

def employee_register
  #delete_place
  visit '/employees/new'
   fill_in 'userid', :with => "006"
   fill_in 'username', :with => "pp3"
   fill_in 'email', :with => "pp3@gmail.com"
   fill_in 'password', :with => "aaaaa"
   fill_in 'password_confirmation', :with => "aaaaa"
   fill_in 'age', :with => "22"
   fill_in 'birthday', :with => "2011-03-07"
   fill_in 'NRCNo', :with => "hgkf(ff)445"
   fill_in 'Gender', :with => "Female"
   fill_in 'specialize', :with => "rails"
   fill_in 'phno', :with => "09876655"
   fill_in 'address', :with => "no.3,jfaji street"
   fill_in 'travelfee', :with => "300"
   fill_in 'entrydate', :with => "2014-06-04"
  click_button "New Employee"
end

### GIVEN ###

Given /^I reached to new_employee lists$/ do
  visit '/employees'
end

Given /^I registered employee$/ do
  create_employee
  employee_register
end

Given /^I sign up with valid data$/ do
  
end

Given /^I am logged_in as a member$/ do
end

Given /^I sign up with invalid data$/ do
end

Given /^I sign up with empty field$/ do
end

Given /^I sign up password field differ with password_confirmation field$/ do
end

Given /^I sign up userid field,age field,ph field,travelfee field with letters$/ do
end

Given /^I sign up username field with numbers only$/ do
end

Given /^I sign up email field with invalid format$/ do
end

### WHEN ###

When /^I register employee with valid data$/ do
  #create_employee
  #employee_register
end

When /^I see other profile$/ do
end

When /^I register with an invalid employee name$/ do
  #create_employee
  #@employee = @employee.merge(:name => "")
  #employee_register
end

When /^I have signed up$/ do
end

When /^I sign up$/ do
end

When /^I look at the list of employee$/ do
  #visit '/employees'
end

When /^I have edited with valid data$/ do
  visit '/home'
end

When /^I fill nothing$/ do
end
### THEN ###

Then /^I reach to homepage$/ do
  visit '/home'
  end

Then /^I will see error message$/ do 
  "Your data are invalid"
end

Then /^I cannot edit other profile expect mine$/ do
end

Then /^I already reach to homepage$/ do
end

Then /^I will see a message$/ do
  "Please fill all fields"
end

Then /^I will see mismatching message$/ do
  "Please check your password_confirmation filed to match with password field"
end

Then /^I will see warning message$/ do
  "Not allowed letters or words to fill"
end

Then /^I will see invalid username message$/ do
  "You have to start with letter"
end

Then /^I will see email format error message$/ do
  "Email format is invaild"
end

Then /^I will see profile editing is unsuccessfully$/ do
  "Profile editing is unsucccessfully"
end