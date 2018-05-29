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
    if valid? == false  
      "Transaction rejected. Please check your account balance."
    elsif 
      sender.take_out(amount)
      sender.balance
      receiver.deposit(amount)
      receiver.balance
      @status = "complete"
 
    end
  end
      
end
