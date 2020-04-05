def pet_shop_name(pet_shop)
    name = pet_shop[:name]
    return name
end

# -----------------------------------------

def total_cash(sum)
    sum = sum[:admin][:total_cash]   
end

# -----------------------------------------

def add_or_remove_cash (total_cash, amount_added)
    cash = total_cash[:admin][:total_cash] += amount_added
    return cash
end

# -----------------------------------------

def add_or_remove_cash (total_cash, amount_deducted)
    cash = total_cash[:admin][:total_cash] += amount_deducted
    return cash
end

# -----------------------------------------

def pets_sold(number_sold)
    sold = number_sold[:admin][:pets_sold]
end

# -----------------------------------------

def increase_pets_sold (initial_pets_sold, new_pets_sold)
    sold = initial_pets_sold[:admin][:pets_sold] += new_pets_sold
end

# -----------------------------------------

def stock_count (stock)
    count = stock[:pets].length
end

# -----------------------------------------

def pets_by_breed(pet_shop, breed_type)
    breed = []
    for pet in pet_shop[:pets]
      if pet[:breed] == breed_type
        breed.push(pet) 
      end
    end
    return breed 
end

#using Ruby Ternary Operator - not currently working (returns 6)

# def pets_by_breed(pet_shop, breed_type)
#     breed = []
#     for pet in pet_shop[:pets]
#     pet[:breed] == breed_type ? breed.push(pet) : breed
#     end
# end



# -----------------------------------------

def find_pet_by_name (pet_shop, name)
    for pet in pet_shop[:pets]
        if pet[:name] == name
            return pet
        end
    end
    return nil
end

# -----------------------------------------

def remove_pet_by_name(pet_shop, name)
    for pet in pet_shop[:pets]
      if pet[:name] == name
        pet_shop[:pets].delete(pet)
      end
    end
end


# -----------------------------------------

def add_pet_to_stock(pet_shop, name)
    pet_shop[:pets].push name
end

# -----------------------------------------

def customer_cash(customer)
    return customer[:cash]
end

# -----------------------------------------

def remove_customer_cash (customer, amount)
    customer[:cash] -= amount
end

# -----------------------------------------

def customer_pet_count(number_of_pets)
    return number_of_pets[:pets].count
end

# -----------------------------------------

def add_pet_to_customer(customer, new_pet)
    return customer[:pets].push new_pet.count 
end

# -----------------------------------------

# def customer_can_afford_pet(customer, cost_of_pet)
#     if customer[:cash] >= cost_of_pet[:price]
#         return true
#     end
#     return false
# end

#using Ruby Ternary Operator

def customer_can_afford_pet(customer, cost_of_pet)
    customer[:cash] >= cost_of_pet[:price] ? true : false
end



# -----------------------------------------

# def sell_pet_to_customer (pet_shop,customer, pet)
    
# end