class NoEmailError < StandardError
end

class UserAccountValidator
  attr_reader :email, :username, :name
  def initialize(hash)
    @email = hash[:email]
    @username = hash[:username]
    @name = hash[:name]
    if @email == nil || @email == ""
      raise NoEmailError
    elsif @username == nil || @username == ""
      raise "no username"
    elsif !@email.include?('@')
      raise "no \'@\' symbol in email"
    elsif @name == nil || @name == ""
      raise "no name"
    end
  end

end
