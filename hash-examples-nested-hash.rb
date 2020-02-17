account_rep = {
	"0002" => {"first_name" => "James", "last_name" => "Hobo"},
	"0003" => {"first_name" => "James", "last_name" => "Hobo"},
	"0004" => {'first_name': 'Tester', 'last_name': 'Testerson'},
}

# puts account_rep["0002"[first_name]]
# puts account_rep["0002"]
# puts account_rep["0002"]["first_name"]
puts account_rep["0004"]
puts account_rep["0004"].keys
puts account_rep["0004"][:first_name]
puts account_rep['0004'].has_key?(:first_name)
puts account_rep['0004'].has_key?('first_name')
# puts account_rep["0004"[:first_name]]
# puts account_rep["0004"[first_name]]
# puts account_rep["0004"][first_name]
# puts account_rep["0004"]['last_name']


# For hashes, use ' ' instead of " ". ' ' is a symbol where " "  is a string. Symbols are much more memory efficient. 