require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'rack-plastic')

# This middleware demonstrates how you would add an HTML element to the beginning
# of a web page.
#
module Rack
  class Intro < Plastic
 
    def update_body(doc)
      h1 = create_node(doc, "h1", "Holy shnikes!")
      h1['style'] = "text-align: center;"
      add_first_child(doc.at_css("body"), h1)
    end
    
  end
end
