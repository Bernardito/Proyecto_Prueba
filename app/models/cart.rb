class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy  # crea ciertos metodos en el modelo

  def total_amount

    #total = 0
    #line_items.each do |line_item|
    #  total += line_item.smart.price
    #end

    #return total
    total_amount = Smart.joins(:line_items)
      .where(:line_items => {:cart_id => self.id})
        .sum(:price)
    total_amount.to_f
  end
end
