#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Ojt1::Application.load_tasks
if defined?(RSpec)
	desc 'Run factory specs.'
	RSpec::Core::RakeTask.new(:factory_specs) do |t|
		t.pattern = './spec/requests/employees_spec.rb'
	end
end

task spec: :factory_specs