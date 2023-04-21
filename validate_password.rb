class ValidatePassword
  def initialize(password)
    @password = password
  end

  def perform
    @password =~ /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%&*+=:;?<>])(?!.*(.)\1{2,})([\S]){6,24}$/ ? true : false
  end
end
