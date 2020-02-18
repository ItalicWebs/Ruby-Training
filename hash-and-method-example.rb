# Static Database

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

# Debugging
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

# Debugging
# puts account_rep["ar_001"]
# puts account_rep["ar_002"][:ar_last_name]

customer_information = {
	'cid_001' => {
		cus_first_name: 'John',
		cus_middle_name: 'P.',
		cus_last_name: 'Doe',
		cus_address_street_1: 'P.O Box 1001',
		cus_address_street_2: 'Att: John',
		cus_address_city: 'Fresno',
		cus_address_state: 'CA',
		cus_address_zip: '93702',
		cus_address_country: 'United States',
		cus_account_rep: account_rep["ar_001"]},
	'cid_002' => {
		cus_first_name: 'Jane',
		cus_middle_name: 'P.',
		cus_last_name: 'Doe',
		cus_address_street_1: 'P.O Box 1002',
		cus_address_street_2: 'Att: Jane',
		cus_address_city: 'Clovis',
		cus_address_state: 'CA',
		cus_address_zip: '93702',
		cus_address_country: 'United States',
		cus_account_rep: account_rep["ar_002"]},
}

# Methods

def status_order_arrived(ar_first_name:, ar_last_name:, ar_contact_phone:, ar_contact_email:)
	puts "Our tracking shows your package has arrived! If this is an error, please contact your representative using the information below:"
	puts "#{ar_first_name} #{ar_last_name}"
	puts "Over the phone: #{ar_contact_phone}"
	puts "Over email: #{ar_contact_email}"
end
 
def status_order_shipping()
	puts "We're working on getting your package shipped out. We'll get back to you soon!"
end
 
def status_order_pending_credit(ar_first_name:, ar_last_name:, ar_contact_phone:, ar_contact_email:)
	puts "We're processing credit on your package. If this does not clear, please contact your representative using the information below:"
	puts "#{ar_first_name} #{ar_last_name}"
	puts "Over the phone: #{ar_contact_phone}"
	puts "Over email: #{ar_contact_email}"
end
 
def status_order_error(ar_first_name:, ar_last_name:, ar_contact_phone:, ar_contact_email:)
	puts "Could not locate a status. For an update, please contact your representative using the information below:"
	puts "#{ar_first_name} #{ar_last_name}"
	puts "Over the phone: #{ar_contact_phone}"
	puts "Over email: #{ar_contact_email}"
end
 

# Customer Output

puts "-- Welcome to our order tracker --"
puts "Please enter your order number below for us to look up"
puts query_order_number = gets.chomp

# puts (online_orders.keys).include?(query_order_number)

# Error checking on order existing
if (online_orders.keys).include?(query_order_number)
	puts "Checking Your Order. Please wait"
else
	abort "[ERROR] Could not locate your order!"
end

# Pulls the customer ID from the order. This could be eliminated as we could reference the array for information. 
resulting_customer_id = online_orders[query_order_number][:order_associated_customer]
# Pulls the complete array for the computer customer ID
resulting_customer_array = customer_information[resulting_customer_id]
# Pulls the customer's Account representative
resulting_account_rep = customer_information[resulting_customer_id][:cus_account_rep]

# Debugging
# puts resulting_customer_array
# puts resulting_customer_id
# puts customer_information[resulting_customer_id]
# puts resulting_account_rep
# puts customer_information[resulting_customer_id][:cus_account_rep]

# Welcomes the customer by their first name
puts "Hello #{resulting_customer_array[:cus_first_name]}!"

# Debugging
# puts online_orders[query_order_number][:order_status] == "arrived"

# Outputs order, it's current status and any action the customer should take
if online_orders[query_order_number][:order_status] == "arrived"
	status_order_arrived(
		ar_first_name: resulting_account_rep[:ar_first_name],
		ar_last_name: resulting_account_rep[:ar_last_name],
		ar_contact_phone: resulting_account_rep[:ar_contact_phone_1],
		ar_contact_email: resulting_account_rep[:ar_contact_email_1],
	)
	
elsif online_orders[query_order_number][:order_status] == "shipping"
	status_order_shipping
	
elsif online_orders[query_order_number][:order_status] == "pending credit"
	status_order_pending_credit(
		ar_first_name: resulting_account_rep[:ar_first_name],
		ar_last_name: resulting_account_rep[:ar_last_name],
		ar_contact_phone: resulting_account_rep[:ar_contact_phone_1],
		ar_contact_email: resulting_account_rep[:ar_contact_email_1],
	)
	
else
	status_order_pending_credit(
		ar_first_name: resulting_account_rep[:ar_first_name],
		ar_last_name: resulting_account_rep[:ar_last_name],
		ar_contact_phone: resulting_account_rep[:ar_contact_phone_1],
		ar_contact_email: resulting_account_rep[:ar_contact_email_1],
	)
end