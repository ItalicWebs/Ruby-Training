online_orders = {
	'order_abc1' => {
		item_number: 'it0001', 
		order_date: '2020-02-10', 
		order_status: 'arrived', 
		order_arrival_date: '2020-02-12', 
		order_tracking_info: '390344839629',
		order_associated_customer: 'cid_001'},
	'order_abc2' => {
		item_number: 'it0005', 
		order_date: '2020-02-15', 
		order_status: 'shipping', 
		order_arrival_date: '2020-02-15', 
		order_tracking_info: 'pending',
		order_associated_customer: 'cid_002'},
	'order_abc3' => {
		item_number: 'it0025', 
		order_date: '2020-02-16', 
		order_status: 'pending credit', 
		order_arrival_date: 'pending', 
		order_tracking_info: 'pending',
		order_associated_customer: 'cid_002'},
}

# puts online_orders["order_abc1"].keys
# puts online_orders["order_abc1"][:order_associated_customer]

account_rep = {
	'ar_001' => {
		ar_first_name: 'James',
		ar_last_name: 'Hobo', 
		ar_company_title: 'Development',
		ar_contact_phone_1: '222-222-2222',
		ar_contact_phone_2: '0',
		ar_contact_email_1: 'hobo@italicwebs.com'},
	'ar_002' => {
		ar_first_name: 'Jose', 
		ar_last_name: 'Polar', 
		ar_company_title: 'Development',
		ar_contact_phone_1: '333-333-3333', 
		ar_contact_phone_2: '0', 
		ar_contact_email_1: 'jose.polar@italicwebs.com'},
		
}

# puts account_rep["ar_001"]
# puts account_rep["ar_002"][:ar_last_name]

customer_information = {
	'cid_001' => {
		ar_first_name: 'John',
		ar_middle_name: 'P.',
		ar_last_name: 'Doe',
		ar_address_street_1: 'P.O Box 1001',
		ar_address_street_2: 'Att: John',
		ar_address_city: 'Fresno',
		ar_address_state: 'CA',
		ar_address_zip: '93702',
		ar_address_country: 'United States',
		ar_account_rep: account_rep["ar_001"]},
	'cid_002' => {
		ar_first_name: 'Jane',
		ar_middle_name: 'P.',
		ar_last_name: 'Doe',
		ar_address_street_1: 'P.O Box 1002',
		ar_address_street_2: 'Att: Jane',
		ar_address_city: 'Clovis',
		ar_address_state: 'CA',
		ar_address_zip: '93702',
		ar_address_country: 'United States',
		ar_account_rep: account_rep["ar_002"]},
}

puts "-- Welcome to our order tracker --"
puts "Please enter your order number below for us to look up"
puts query_order_number = gets.chomp

# puts (online_orders.keys).include?(query_order_number)

# Does order exist?
if (online_orders.keys).include?(query_order_number)
	puts "Checking Your Order. Please wait"
else
	abort "[ERROR] Could not locate your order!"
end

resulting_customer_id = online_orders[query_order_number][:order_associated_customer]
resulting_customer_array = customer_information[resulting_customer_id]
resulting_account_rep = customer_information[resulting_customer_id][:ar_account_rep]

# Debugging
# puts resulting_customer_array
# puts resulting_customer_id
# puts customer_information[resulting_customer_id]
# puts resulting_account_rep
# puts customer_information[resulting_customer_id][:ar_account_rep]

puts "Hello #{resulting_customer_array[:ar_first_name]}!"

# puts online_orders[query_order_number][:order_status] == "arrived"

if online_orders[query_order_number][:order_status] == "arrived"
	puts "We currently show your package as arrived. If you're unable to find your package or you believe this is an error, please contact your representative using the information below."
	puts "#{resulting_account_rep[:ar_first_name]} #{resulting_account_rep[:ar_last_name]}"
	puts "Over the Phone:#{resulting_account_rep[:ar_contact_phone_1]} Over Email: #{resulting_account_rep[:ar_contact_email_1]}"
elsif online_orders[query_order_number][:order_status] == "shipping"
	puts "We're working on getting your package shipped out. We'll get back to you soon!"
elsif online_orders[query_order_number][:order_status] == "pending credit"
	puts "We're processing credit on your package. If this does not clear, contact us."
else
	puts "Could not locate a status. Please contact your representative for an update"
	puts "#{resulting_account_rep[:ar_first_name]} #{resulting_account_rep[:ar_last_name]}"
	puts "Over the Phone:#{resulting_account_rep[:ar_contact_phone_1]} Over Email: #{resulting_account_rep[:ar_contact_email_1]}"
end