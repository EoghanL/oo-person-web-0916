class Person

  attr_accessor :bank_account
  attr_reader :name


  @@people = []

  def initialize(name)

    @name = name
    @@people << self
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

  end

  def happiness=(happiness)
    @happiness = happiness
  end

  def happiness

    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness
    end

  end

  def hygiene=(hygiene)
    @hygiene = hygiene
  end

  def hygiene

    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end

  end



  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(amount)
    @bank_account += amount
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend_to_call)
    self.happiness += 3
    friend_to_call.happiness += 3
    "Hi #{friend_to_call.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      self.happiness -= 2
      person.happiness -= 2
      'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      self.happiness += 1
      person.happiness += 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end

  end

end
