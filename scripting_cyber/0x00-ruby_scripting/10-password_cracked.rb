require 'digest'

# Function to perform dictionary attack
def crack_password(hashed_password, dictionary_file)
	# Read the dictionary file line by line
	File.foreach(dictionary_file) do |line|
		word = line.strip
		# Calculate the SHA-256 hash of the word
		hashed_word = Digest::SHA256.hexdigest(word)
		
		# Compare the hash of the word with the given hashed password
		if hashed_word == hashed_password
			puts "Password found: #{word}"
			return
		end
	end
	puts "Password not found in dictionary."
end

# Ensure correct usage
if ARGV.length != 2
	puts "Usage: #{$PROGRAM_NAME} HASHED_PASSWORD DICTIONARY_FILE"
	exit
end

hashed_password = ARGV[0]
dictionary_file = ARGV[1]

crack_password(hashed_password, dictionary_file)