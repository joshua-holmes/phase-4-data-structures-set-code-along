require 'pry'

class MySet
    attr_accessor :hash
    def initialize(enumerable = [])
        @hash = {}
        enumerable.each do |v|
            hash[v] = true
        end
    end

    def self.[](*values)
        self.new values
    end

    def include?(value)
        hash.has_key? value
    end

    def add(value)
        hash[value] = true
        self
    end

    def delete(value)
        hash.delete value
        self
    end

    def size
        hash.size
    end

    def clear
        self.hash = {}
        self
    end

    def each
        for key in hash do
            yield(key[0])
        end
        self
    end

    def length
        self.size
    end

    def inspect
        p "#<#{self.class}: {#{hash.keys.join(', ')}}>"
    end
end
