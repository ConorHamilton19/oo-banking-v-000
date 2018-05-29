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
    sender.valid? && @amount <= sender.balance
  end 
  
  def execute_transaction
    if valid?   
      sender.take_out(amount)
      receiver.deposit(amount)
      @status = "complete"
    else
      @status = "rejected"
    "Transaction rejected"
    end
  end
  
  def reverse_transfer
  end 
      
end
