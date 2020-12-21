require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    item = find_item_by_name_in_collection(coupon[:item], cart)
    if item && item[:count] >= coupon[:num]
      discounted_item = {
        item: "#{item[:item} W/COUPON",
        price: coupon[:cost] / coupon[:num],
        clearance: item[:clearance],
        count: coupon[:num] - item[:count]
      }
      cart << discounted_item
      item[:count] -= coupon[:num]
    end
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
