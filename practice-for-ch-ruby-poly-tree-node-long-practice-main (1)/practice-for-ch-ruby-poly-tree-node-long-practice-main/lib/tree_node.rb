class PolyTreeNode

    attr_reader :value, :parent, :children
    attr_writer :children

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(new_parent)
        old_parent = @parent # A's parent is currently C
        @parent = new_parent


        if !old_parent.nil? 
            old_parent.children = old_parent.children.reject{ |child| self == child }
        end

        
        if !new_parent.nil? && !new_parent.children.include?(self)
            new_parent.children << self
        end
        

        

    end

    # def add_child(new_parent)
    #     new_parent.children << self
    # end
end