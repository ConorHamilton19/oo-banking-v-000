class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @reciever = receiver
    @status = "pending"
    @amount = amount
  end 
end
