require 'open-uri'
require 'uri'
require 'fileutils'

def download_file(url, local_path)
	begin
		puts "Downloading file from #{url}..."
		URI.open(url) do |file|
			FileUtils.mkdir_p(File.dirname(local_path)) # Create directory if it doesn't exist
			File.open(local_path, 'wb') do |output|
				output.write(file.read)
			end
		end
		puts "File downloaded and saved to #{local_path}."
	rescue StandardError => e
		puts "Error downloading file: #{e.message}"
	end
end

# Ensure correct usage
if ARGV.length != 2
	puts "Usage: #{$PROGRAM_NAME} URL LOCAL_FILE_PATH"
	exit
end

url = ARGV[0]
local_path = ARGV[1]

download_file(url, local_path)