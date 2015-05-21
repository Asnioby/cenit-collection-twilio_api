# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = 'cenit-collection-twilio_api'
  gem.license = "MIT"
  gem.summary = 'Shared Collection cenit-collection-twilio_api to be use in Cenit'
  gem.description = 'Shared Collection cenit-collection-twilio_api to be use in Cenit'
  gem.author = 'Asnioby Hdez'
  gem.email = 'asnioby@gmail.com'
  gem.homepage = 'https://github.com/asnioby/cenit-collection-twilio_api'
  
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

class Jeweler::Generator
  def target_dir
    '.'
  end
  def create_git_and_github_repo
    create_version_control
    create_and_push_repo
  end
end
      
desc "create a new git and related GitHub's repository'"
task :create_repo do
  options = {
    project_name: 'cenit-collection-twilio_api', 
    user_name: 'Asnioby Hdez', 
    user_email: 'asnioby@gmail.com',
    github_username: 'asnioby',
    summary: 'Shared Collection cenit-collection-twilio_api to be use in Cenit',
    description: 'Shared Collection cenit-collection-twilio_api to be use in Cenit',
    homepage: 'https://github.com/asnioby/cenit-collection-twilio_api',
    testing_framework: :rspec, 
    documentation_framework: :rdoc
  }
  g = Jeweler::Generator.new(options)
  g.create_git_and_github_repo
end

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['spec'].execute
end

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "cenit-collection-twilio_api #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
