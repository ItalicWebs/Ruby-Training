order_information = {
# order id => "purchased-item", "order-date" "status" "arrived-date" "tracking-number"
	"000abc1" => ["item000001", "2020-02-10", "arrived", "2020-02-12", "390344839629"],
	"000abc2" => ["item000005", "2020-02-07", "arrived", "2020-02-12", "390344839631"],
	"000abc3" => ["item000023", "2020-02-05", "arrived", "2020-02-11", "390344839632"],
}

account_rep = {
	"0002" => ["James", "Hobo", "Active", "Master Representative", "200-200-2001", "james.hobo@somecompany.com"],
	"0003" => ["Christopher", "Turk", "Inactive", "Master Representative", "200-200-2002", "call.turk@somecompany.com"],
	"0004" => ["John", "Dorian", "Active", "Master Representative", "200-200-2003", "eagleeeeeeee@somecompany.com"],
}

customer_information = {
# "user_id" => "first", "last", "address", "city", "state", "zip", "ssn", "account rep", "last-order-id"
	"000000" => "Kris",
	"000001" => ["John", "Doe", "P.O Box 1001", "Fresno", "CA", "93702", "100-100-1001", account_rep["0002"], "000abc1"],
	"000002" => ["Jane", "Doe", "P.O Box 1001", "Fresno", "CA", "93702", "100-100-1002", account_rep["0002"], "000abc2"],
	"000003" => ["Juan", "Doe", "P.O Box 1003", "Fresno", "CA", "93702", "100- 100-1003", account_rep["0004"], "000abc3"],
}

# current_customer = "000002"

puts "Welcome to our order tracker!"
puts "To look up your last order, please type in your customer number below"
current_customer = gets.chomp

puts "Hello #{customer_information[current_customer][0]}! We've shipped your order #{customer_information[current_customer][8]} to your address at #{customer_information[current_customer][2]} in #{customer_information[current_customer][3]} , #{customer_information[current_customer][4]}."
puts "Your tracking information is  #{order_information[customer_information[current_customer][8]][4]}"
puts "If you require assistance, please contact your representative #{customer_information[current_customer][7][0]} #{customer_information[current_customer][7][1]} by phone at #{customer_information[current_customer][7][4]} or by email at #{customer_information[current_customer][7][5]}"