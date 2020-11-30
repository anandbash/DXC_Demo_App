class HelloWorldJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts "Hello from HelloWorldJob"
    puts "I am starting to run at #{Time.now}"
  end
end
