# your code here

class MySet

    attr_reader :hash

    def initialize(enumerable = [])

        @hash = {}
        enumerable.each do |item|
            add item
        end
        
    end

    def include? value
        hash.has_key?(value)
    end

    def add value
        hash[value] = true
        self
    end

    def delete value
        hash.delete value
        self
    end

    def size
        hash.size       
    end

    def clear
        hash.clear
        self
    end

    def inspect
        "#<#{self.class.name}: {#{self.hash.keys.join(', ')}}>"
    end
end