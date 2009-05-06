module Simplabs

  module Excellent

    module Core

      class IteratorVisitor

    	  def initialize(payload)
      	  @payload = payload
    	  end
	
    	  def visit(visited)
    		  visited.accept(@payload)
    		  visitable_nodes = visited.is_language_node? ? visited.sexp_body : visited
    		  visitable_nodes.each do |child|
    		    if child.is_a?(Sexp) then
      		    child.accept(self)
    		    end
  		    end
    	  end

      end

    end

  end

end
