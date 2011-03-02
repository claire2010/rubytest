class Human
   @@human_count = 0
   attr_accessor :name
   
   def initialize(name)
     @name= name
     @@human_count += 1
   end
   def get_human
      return @@human_count
   end
   def get_name
      return @name
   end
   def get_talk
      "Tactics and Hitlist"
   end
   def call_pat
       is_pat
   end
   def is_pat
      if @name == "Pat"
      	      return "is pat"
      else
      	      return "is not pat"
      end
   end
   def get_human_count
     get_human
   end
   public :get_name
   private :is_pat
   protected :get_human
end
class Bomber < Human
  def get_talk(talk)
    "Bombing and attack and "+talk
  end   
end
class Killer < Human
 def get_talk
     "Experience and Killing!"
 end
 def get_human_count
     get_human
 end
end

humans = [Killer.new("Oliver"), Human.new("Claire")]
humans.each do |human|
	puts "#{human.get_name} talks about #{human.get_talk}"
end
looter = Bomber.new("Pat")
puts "#{looter.get_name} talks about #{looter.get_talk("more tactics")}"
puts "total number of humans is: " +looter.get_human_count.to_s
puts "The one who talks about #{looter.get_talk("more tactics")} "+looter.call_pat.to_s