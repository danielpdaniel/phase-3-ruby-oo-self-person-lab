# your code goes here
require 'pry'
class Person
    attr_reader :name, :happiness
    attr_accessor :bank_account, :hygiene

    def initialize (name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def check_num_range num_range
        # num_range >= 0 ? num_range <= 10 ? true : false : false
        if num_range < 0
            0
        elsif num_range > 10
            10
        else
            num_range
        end

    end

    # def check_levels level
    #     self.level > 7 ? true : false
    # end

    def happiness= happiness
       @happiness = check_num_range happiness
    end

    def hygiene= hygiene
        @hygiene = check_num_range hygiene
     end

     def clean?
        self.hygiene > 7 ? true : false
     end

     def happy?
        self.happiness > 7 ? true : false
     end

     def get_paid amount
        @bank_account = self.bank_account + amount
        "all about the benjamins"
     end

     def take_bath 
        self.hygiene= self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
     end

     def work_out
        self.happiness= self.happiness + 2
        self.hygiene = self.hygiene - 3
        "♪ another one bites the dust ♫"
     end

     def call_friend friend
        self.happiness = self.happiness + 3
        friend.happiness= friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
     end

     def start_conversation friend, topic
        if topic == "politics"
            self.happiness = self.happiness - 2
            friend.happiness = friend.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            friend.happiness= friend.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
     end

    
end

# binding.pry