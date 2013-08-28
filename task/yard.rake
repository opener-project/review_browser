desc 'Generates the YARD documentation'
task :yard do
  sh('yard doc --verbose')
end
