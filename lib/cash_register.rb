
require "pry"

class CashRegister
attr_accessor :total, :discount, :items, :last_transaction, :last_quantity
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        @price = price
        quantity.times do
            @items << item
        end
        @last_quantity = quantity
        @last_transaction = price * quantity
        @total += @last_transaction
    end
    def apply_discount
        if @discount > 0
            @reduction = (@price * @discount)/100
            @total -= @reduction
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end
    def void_last_transaction
        # @additional_acc = @items.to_f.last
        @total -= @last_transaction
    # binding.pry
        #@items = ["apple", "tomato"]
    #     addition = @items.to_f.split(",")
    # binding.pry
    #     @total -= addition[-1]
    #     @total
        ##RIGHT HERE PRICE = 1.76
        def void_last_transaction
            @total -= @last_transaction
        end
        

        ##End result is (0.99) <#price of first item added by test- apple
        ##End result removes tomato
    end
end

        # if quantity > 1
        #     n = 0
        #     while n < quantity
        #     @items << title
        #     n += 1
        #     end
        # else 
        #     @items << title
        # end