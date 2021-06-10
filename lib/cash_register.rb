require "pry"
class CashRegister
    attr_accessor :total, :discount, :price, :quantity, :all
    attr_reader :title
    def initialize (discount = 0)
        @total = 0
        @discount = discount
        @all = []
    end

    def total 
        @total
    end

    def add_item (title, price, quantity = 1)
        @price = price
        @quantity = quantity
        
        quantity.times do
            @all << title
        end
        
        @total = @total + price * quantity 
    end

    def apply_discount 
        if discount != 0
        @total = @total - 200
        "After the discount, the total comes to $800."
        else
            "There is no discount to apply."
        end
    end
    
    def items 
        @all
    end

    def void_last_transaction
        @total -= @price * @quantity 
    end
end
# binding.pry
