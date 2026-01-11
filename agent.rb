class Product
    attr_accessor :name, :price, :stock_qty
    attr_reader :name, :price, :stock_qty
  
     # 1. The "Setup" (Constructor)
  
  # This runs automatically when you create a NEW agent.
  def initialize(name, price, stock_qty)
    @name = name      # The '@' makes it a permanent label for THIS agent
    @price = price
    @stock_qty = stock_qty
  end   

  # 2. A Logic Method
  def check_stock
    puts "Checking #{@name} stock quantity..."
    if @stock_qty > 0
      puts "#{@name} is in stock ($#{@price}). Qty: #{@stock_qty}"
    else
      puts "OUT OF STOCK: #{@name}"
    end
  end
end

# --- The Main Logic ---

# Array of products
products = [
  Product.new("Laptop",1000,5),
  Product.new("Mouse", 20,0),
  Product.new("Monitor",200,10)
]

# Ask them to do things
# The Loop (Iterate)
products.each do |product|
  puts "\n--- Stock check for #{product.name}  ---"
  product.check_stock
end 