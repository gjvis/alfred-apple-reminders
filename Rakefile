require 'plist'

task :default => :build

task :build => 'out/Create Reminder.alfredextension' do |t|
  puts "Extension created at '#{t.prerequisites[0]}'"
end

directory 'out/artifacts'

file 'out/Create Reminder.alfredextension' => ['out/artifacts/info.plist', 'out/artifacts/kudos.plist', 'out/artifacts'] do |t|
  require 'zip/zip'
  File.delete(t.name) if File.exists?(t.name)
  Zip::ZipFile.open(t.name, true) do |z|
    z.add('info.plist', 'out/artifacts/info.plist')
    z.add('kudos.plist', 'out/artifacts/kudos.plist')
  end
end

file 'out/artifacts/info.plist' => ['src/create_reminder.applescript', 'out/artifacts'] do |t|
  create_reminder_script = File.read(t.prerequisites[0])
  info = {
    :action => false,
    :background => true,
    :category => "APPLESCRIPTS",
    :command => create_reminder_script,
    :disabled => false,
    :keyword => "r",
    :parameter => 2,
    :subtitle => "Create a reminder in Apple Reminders",
    :title => "Create reminder"
  }  
  File.open(t.name, 'w') { |f| f.write(info.to_plist()) }
end

file 'out/artifacts/kudos.plist' do |t|
  kudos = {
    :creator => "Gareth Visagie",
    :website => "http://garethvisagie.com"
  }
  File.open(t.name, 'w') { |f| f.write(kudos.to_plist()) }
end
