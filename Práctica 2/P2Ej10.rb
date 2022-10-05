module Countable

    def invocations
        @invocations ||= Hash.new(0)
    end

    module ClassMethods
        def count_invocations_of(sym)
            alias_method(":original_#{sym}", sym) 

            define_method "#{sym}" do
                invocations[__method__] += 1
                send(":original_#{sym}")
            end
        end
    end

    def invoked?(sym)
        @invocations[sym] > 0
    end

    def invoked(sym)
        @invocations[sym]
    end

    def self.included(base)
        base.extend ClassMethods
    end

end


class Prueba

    include Countable

    def met1
    end

    def met2
    end

    count_invocations_of :met1
end

p = Prueba.new

p.met1
p.met1
p.met1
p.met1

puts p.invoked? :met1 #true
puts p.invoked? :met2 #false

puts p.invoked :met1 #4
puts p.invoked :met2 #0
