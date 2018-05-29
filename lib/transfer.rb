class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end 
  
  def valid?
    sender.valid?
    receiver.valid?
  end 
  
  def execute_transaction
    if sender.valid?   
      sender.take_out(amount)
      receiver.deposit(amount)
      @status = "complete"
    else
     "Transaction rejected"
 
    end
  end
      
end
