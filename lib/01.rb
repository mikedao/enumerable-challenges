module Email
  def self.lowercase(input)
    input.each { |input| input.downcase! }
  end
end
