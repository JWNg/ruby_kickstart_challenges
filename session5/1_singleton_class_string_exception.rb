class ApplicationController  
    
  def body_class
    @body = String.new if @body.nil?
    return @body if @body
    
    def @body.<<(input)
      return self if self[/\b#{input}\b/]
      concat " " unless self.length.zero?       
      concat input   
      end  
    end
    
    def @body.+(input)    runtimeerror end
    def @body.*(input)    runtimeerror end      
    def @body.[]=(input)  runtimeerror end     
    
    private
    def runtimeerror
      raise(RuntimeError, "use << method instead")
    end  
    
    def duplicate_check(input)
      @body[input] ? true : false
    end
               
  end
end
