class Mygit
   
   attr_accessor :name
   def initialize(name)
      @message= name
   end
   
   def message
      return @message
   end
      
end

mg = Mygit.new("hello")
puts "#{mg.message}"