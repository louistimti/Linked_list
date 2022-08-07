require_relative './node'
require_relative './linked_list'

bitches = LinkedList.new
bitches.append("carol")
# # puts bitches
bitches.append("louisa")
bitches.append("samantha")
# # puts bitches
bitches.prepend("jessica")
bitches.prepend("paula")
# # puts bitches.size

# bitches.append("roseline")
# puts bitches
bitches.insert_at("noela", 1)
bitches.remove_at(2)
puts bitches

