require 'json'

def count_user_ids(path)
	file = File.read(path)
	data = JSON.perse(file)

	user_counts = Hash.new(0)

	data.each do [item]
		user_id = item["userId"]
		user_counts[user_id] += 1
	end

	user_counts.sort.each do |user_id, count|
		puts "#{user_id}: #{count}"
	end
end