require 'pry'

class Transfer
  attr_reader :sender, :receiver, :status, :amount
  
  @last_transfer = { @sender => nil, @receiver => nil, @amount => nil }
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    if @sender.valid? && @receiver.valid?
      true 
    else
      false 
    end
  end
  
  def execute_transaction
    if @status == "pending" && self.valid? && @sender.balance > @amount
      @sender.balance -= @amount
      @receiver.balance += @amount
      @last_transfer[@sender] = @sender 
      @last_transfer[@receivender 
      @last_transfer[@sender] = @sender 
      @status = "complete"
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end
  
end
