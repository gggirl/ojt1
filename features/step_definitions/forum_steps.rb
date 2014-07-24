##GIVEN##
Given /^I am signed_in as a member$/ do
	
end

##WHEN##
When /^I have edited$/ do
	visit '/home'
end

When /^I have edited with blank field$/ do
end

When /^I see forums,comments$/ do
end

When /^I post title,content$/ do
end

When /^I post title,content to fill anything$/ do
end

##THEN##
Then /^I will see message$/ do
	"You have edited successfully"
end

Then /^I will see unsuccessfully message$/ do
	"Please fill the blank field"
end

Then /^I can read titles,contents of forum$/ do
	
end

Then /^I can edit my post$/ do
end

Then /^I will see forum error message$/ do
	"Need to fill the blank field"
end