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

# Can be changed to

online_orders = {
	'order_abc1': {
		item_number: 'it0001',
		order_date: '2020-02-10',
		order_status: 'arrived',
		order_arrival_date: '2020-02-12',
		order_tracking_info: '390344839629',
		order_associated_customer: 'cid_001'},
	'order_abc2': {
		item_number: 'it0005',
		order_date: '2020-02-15',
		order_status: 'shipping',
		order_arrival_date: '2020-02-15',
		order_tracking_info: 'pending',
		order_associated_customer: 'cid_002'},
	'order_abc3': {
		item_number: 'it0025',
		order_date: '2020-02-16',
		order_status: 'pending credit',
		order_arrival_date: 'pending',
		order_tracking_info: 'pending',
		order_associated_customer: 'cid_002'},
}


# In Exercise, Kris had mentioned open(filename) wasn't best practice. Should be File.open(filename)
# Homework 21-26
