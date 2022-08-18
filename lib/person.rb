# your code goes here
require "pry"

class Person
    attr_reader :name
    attr_accessor :hygiene, :bank_account, :happiness

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

    def happiness=(value)
        if (0..10).include?(value)
            @happiness = value
        elsif value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        end
    end

    def happiness
        @happiness
    end

    def hygiene=(value)
        if (0..10).include?(value)
            @hygiene = value
        elsif value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        end
    end

    def hygiene
        @hygiene
    end

    def happy?
        @happiness > 7? true: false
    end

    def clean?
        @hygiene > 7? true: false
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It\'s #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            friend.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            friend.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end



stella = Person.new("Stella")
felix = Person.new("Felix")







