class Transfer
  attr_accessor :status
  attr_reader :sender, :reciever, :amount
  
  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @status = "pending"
    @amount = amount
  end 
end
