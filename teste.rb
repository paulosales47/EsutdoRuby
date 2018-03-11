#CAPITULO 1

def plural(palavra)
    puts "#{palavra}s"
end

class String
    def pluralstring
        "#{self}s"
    end
end
    

plural("caneta")
puts "caneta".pluralstring

#FIM CAPITULO 1