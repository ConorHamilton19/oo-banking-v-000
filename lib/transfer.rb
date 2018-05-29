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
    if valid? 
      sender.take_out(amount)
      sender.balance
      receiver.deposit(amount)
      receiver.balance
      @status = "complete"
    elsif !valid?
     "Transaction rejected. Please check your account balance."
    end
  end
      
end
