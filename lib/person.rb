# your code goes here
class Person
    # Initiallize the class and give a defualt value to name
    def initialize(name=nil)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end

    attr_reader :name, :happiness
    attr_accessor :bank_account, :hygiene

    def happiness=(new_happiness)
        if new_happiness > 10
            @happiness=10
        elsif new_happiness < 0
            @happiness = 0
        else 
            @happiness = new_happiness
        end
    end

    def hygiene=(new_hyg)
      if new_hyg > 10
          @hygiene=10
      elsif new_hyg < 0
          @hygiene = 0
      else 
          @hygiene = new_hyg
      end
    
    end 

    def happy?
      @happiness > 7
    end

    def clean?
      @hygiene > 7
    end

    def get_paid(salary)
      @bank_account += salary
      return 'all about the benjamins'
    end

    def take_bath 
      self.hygiene += 4 
      return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3 
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
      if topic == 'politics'
        self.happiness -= 2
        person.happiness -= 2
        return 'blah blah partisan blah lobbyist' 
      elsif topic == 'weather'
        self.happiness += 1
        person.happiness += 1
        return 'blah blah sun blah rain'
      elsif topic == 'programming'
        return 'blah blah blah blah blah'
      end

    end

end