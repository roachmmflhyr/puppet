SSH = 'ssh -A -i ~/.ssh/id_rsa.pub -l vagrant'

desc "Run Puppet on ENV['CLIENT']"
task :apply do
  client = ENV['CLIENT']
  sh "git push"
  sh "#{SSH} #{client} pull-updates"
end
