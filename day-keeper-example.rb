end_user_information = {
	1000001 => {
		usr_first_name: 'Jose',
		usr_middle_name: '',
		usr_last_name: 'Polar',
		usr_title: 'Administrator',
		usr_office_id: 'Fresno',
		usr_office_city: 'Fresno',
		usr_office_state: 'CA',
		usr_office_country: 'United States',
		usr_last_status: 'away',
		usr_permissions: 'admin'},
	1000002 => {
		usr_first_name: 'James',
		usr_middle_name: '',
		usr_last_name: 'Hobo',
		usr_title: 'President',
		usr_office_id: 'Fresno',
		usr_office_city: 'Fresno',
		usr_office_state: 'CA',
		usr_office_country: 'United States',
		usr_last_status: 'available',
		usr_permissions: 'staff'},
}

def menu_options_start(user_array:)
	puts "DayKeeper - ItalicWeb, 2020\n\n"
	puts "\t(1) List All Users"
	puts "\t(2) Create New User"
	start_menu_selection = gets.chomp
	if start_menu_selection == 1
		list_all_users(user_array: user_array)
	elsif start_menu_selection == 2
		administrate_create_new_user(user_array: user_array)
	end
end

def list_all_users(user_array:)
	puts "Here's a list of all users :)"
	user_array.keys.each do |key|
		puts "\t #{user_array[key][:usr_first_name]} #{user_array[key][:usr_last_name]} is currently: #{user_array[key][:usr_last_status].upcase}"
		# puts "#{key[usr_last_name]} #{key} testing"
	end
end

def administrate_create_new_user(end_user_array)
	new_user_id = end_user_information.keys.last + 1
	if new_user_id != end_user_array.keys.include?
	end
end

def administrate_delete_new_user
end

list_all_users(user_array: end_user_information)
