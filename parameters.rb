your_name, your_time, your_day = ARGV

def application_starter(name:, time:, day:)
	puts "Hi #{name}! \n Welcome to our application and hope you're having a great #{day}."
	puts "I've realized it's #{time} so I'll be quick! \n but can you answer a few quick questions for me? (yes/no)"
	can_you_answer = $stdin.gets.chomp.downcase
	if can_you_answer == "yes"
		puts "Sweet! How are ya? (well, okay, decent, bad)"
		your_mood = $stdin.gets.chomp.downcase
		mood_check(your_mood)
	elsif can_you_answer == "no"
		puts "Ah. No worries. Off ya go"
		exit
	else 
		puts "hmm, I don't understand. Press any key to continue"
		$stdin.gets
		application_starter(name: name, time: time, day: day)
	end	
end

def mood_check(your_mood)
	if your_mood == "well"
		puts "Great!"
		exit
	elsif your_mood == "okay"
		puts "Well okay"
		exit
	elsif your_mood == "decent"
		put "Hope it gets better"
		exit
	elsif your_mood == "bad"
		puts "Eek. Sorry to hear that. Hope you feel better"
		exit
	else
		puts "hmm. I don't understand. Sorry"
		exit
	end
end
some_user_name = ARGV.first
puts "I see you #{some_user_name}"
application_starter(name: your_name, time: your_time, day: your_day)


# Doesn't work but should ask Kris
# name: your_name, job: your_job, = ARGV
# prints "Your name is #{your_name}"
# prints "and your job is #{your_job}"