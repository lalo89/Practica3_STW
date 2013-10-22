desc "run the server"
task :default do
  sh "rackup"
end

desc "run the client with rock"
task :rock do
  sh %q{curl -v 'http://localhost:8080?choice=rock'}
end

desc "run the client with paper"
task :paper do
  sh %q{curl -v 'http://localhost:8080?choice=paper'}
end

desc "run the client with scissors"
task :scissors do
  sh %q{curl -v 'http://localhost:8080?choice=scissors'}
end

desc "ejecutando los test"
task :test do
  sh "ruby -Ilib -Itest test/test.rb"
end