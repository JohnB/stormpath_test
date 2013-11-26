require 'stormpath-sdk'

#client = Stormpath::Client.new api_key_file_location: File.join(ENV['HOME'], '.stormpath', 'apiKey.properties')
client = Stormpath::Client.new( :api_key_file_location => File.join(ENV['HOME'], '.stormpath', 'apiKey.properties') )

client.applications.each do |application|
	  p "Application: #{application.name}"
end

client.directories.each do |directory|
	  p "Directory: #{directory.name}"
end

