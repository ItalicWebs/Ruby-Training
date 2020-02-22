https://github.com/ileitch/hijack/blob/master/examples/rails_dispatcher.rb


# Not sure about this
ActionController::Dispatcher.class_eval do
# Not sure about this
  class << self
# Method called "dispatch_with_spying" created with 3 arguments available.
    def dispatch_with_spying(cgi, session_options, output)
# Send invokes a method specified and passes arguments. Env_table being the method I believe
      env = cgi.__send__(:env_table)
# Prints the time with a speific format specified by 'strftime'. Also printing out two keys inside of env
      puts "#{Time.now.strftime('%Y/%m/%d %H:%M:%S')} - #{env['REMOTE_ADDR']} - #{env['REQUEST_URI']}"
# We're passing 3 arguements to a new method
      dispatch_without_spying(cgi, session_options, output)
    end
# Basically, when using dispatch, it will refer to dispatch_without_spying and vice versa
    alias_method :dispatch_without_spying, :dispatch
    alias_method :dispatch, :dispatch_with_spying
  end
end
