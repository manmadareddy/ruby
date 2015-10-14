#!/usr/bin/env ruby
class MegaGreeter
    attr_accessor :names

    def initialize (names ="World")
        @names = names
    end

    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to? ("each")
            @names.each do|name|
                puts "Hello #{name}"
            end
        else
            puts "Hello #{names}"
        end
    end
end


if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi

  mg.names = "Manmada"
  mg.say_hi

  mg.names = ["Nallagonda","Manmada"]
  mg.say_hi

  mg.names = nil
  mg.say_hi
  
end
