class Node 
  attr_accessor :left, :right, :parent

  def initialize(value)
    @value = value
  end
  
  def value
    @value
  end
  
end

class Tree 
  attr_reader :root
  def initialize(root=nil)
    # parent node for all nodes
    @root = root
  end
  
  
  def insert(new_node, current_node=self.root)
    # if current_node is an object of node compare against its value
    if current_node.instance_of?(Node)
      # if it is smaller then take the element on the left
      if new_node.value < current_node.value
      #   # then check if value in left is nil and if its not then call function again till it is
        if current_node.left == nil
          new_node.parent = current_node
          current_node.left = new_node
        else
          insert(new_node, current_node.left)
        end
      else
        if current_node.right == nil
          new_node.parent = current_node
          current_node.right = new_node
        else
          insert(new_node, current_node.right)
        end
      end
    else
      # since insert always starts from the root then and comaprison always check for the existence of an object then the root will always be what need to be updated
      @root = new_node
    end
  end

  def search(value, node=self.root)
    # compare with current element if nil then return false

    # first condition
    if node
      # second condition
      if node.value == value
        p value
      # second condition
      else
        # third condition
        if node.value > value
          # gp left
          # fourth condition
          if node.left != nil
            search(value, node.left)
          else
            p "value is not present in tree"
          end
        # third condition
        else
          # go right
          if node.right != nil
            search(value, node.right)
          else
            p "value is not present in tree"
          end
        # third condition
        end
      # second condition
      end
    # first condition
    else
      p "no node present"
    # first condition
    end
  end
  
end


node = Node.new(10)
node2 = Node.new(7)
node3 = Node.new(15)
node4 = Node.new(4)
node5 = Node.new(8)
node6 = Node.new(11)
node7 = Node.new(20)
node8 = Node.new(9)
node9 = Node.new(13)
node10 = Node.new(17)
node11 = Node.new(25)


tree = Tree.new()

tree.insert(node)
tree.insert(node2)
tree.insert(node3)
tree.insert(node4)
tree.insert(node5)
tree.insert(node6)
tree.insert(node7)
tree.insert(node8)
tree.insert(node9)
tree.insert(node10)
tree.insert(node11)

tree.search()





