#!/usr/bin/env ruby

# difine class
class HelloWorld
  #variable message
  def initialize
    @message = "Hello, World!"
  end

#define method
  def print_hello
    puts @message
  end
end

#Create an instance and call the method
hello = HelloWorld.new
hello.print_hello