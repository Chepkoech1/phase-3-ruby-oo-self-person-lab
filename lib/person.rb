class Person
    attr_reader :name
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    attr_accessor :bank_account
  
    def happiness
      @happiness
    end
  
    def happiness=(value)
      @happiness = value > 10 ? 10 : value
      @happiness = 0 if value < 0
      @happiness
    end
  
    def hygiene
      @hygiene
    end
  
    def hygiene=(value)
      @hygiene = value > 10 ? 10 : value
      @hygiene = 0 if value < 0
      @hygiene
    end
  
    def clean?
      @hygiene > 7
    end
  
    def happy?
      @happiness > 7
    end
  
    def get_paid(amount)
      @bank_account += amount
      "all about the benjamins"
    end
  
    def take_bath
      self.hygiene = @hygiene + 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
      self.happiness = @happiness + 2
      self.hygiene = @hygiene - 3
      "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend)
      friend.happiness = friend.happiness + 3
      self.happiness = @happiness + 3
      "Hi #{friend.name}! It's #{@name}. How are you?"
    end
  
    def start_conversation(friend, topic)
      if topic == "politics"
        friend.happiness = friend.happiness - 2
        self.happiness = @happiness - 2
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        friend.happiness = friend.happiness + 1
        self.happiness = @happiness + 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end
  end
  