require_relative 'item'
require_relative 'shopping_cart'
require_relative 'receipt'
require_relative 'inventory_file'
require_relative 'government'

module SalesTax
  class CommandLine
    def initialize(files)
      if ARGV.length == 0
        puts "Usage: #{ARGV[0]} [files]"
        exit false
      end 

      ARGV.each do |path|
        shopping_cart = InventoryFile.new(path).read
    
        shopping_cart.purchase
      end
    end
  end
end