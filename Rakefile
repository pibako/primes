require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib/primes'
  t.test_files = FileList['test/lib/primes/test_*.rb'] + FileList['test/lib/test_*.rb']
  t.verbose = true
end

task :default => :test
