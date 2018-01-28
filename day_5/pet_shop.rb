# 1 test_pet_shop_name
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end
# 2 test_total_cash
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end
# 3 test_add_or_remove_cash__add
def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end
# 4 test_add_or_remove_cash__remove
# same method as above
# 5test_pets_sold
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end
# 6 test_increase_pets_sold
def increase_pets_sold(pet_shop, quantity)
  pet_shop[:admin][:pets_sold] += quantity
end
# 7 test_stock_count
def stock_count(pet_shop)
  return pet_shop[:pets].count()
end
# 8 test_all_pets_by_breed__found
def pets_by_breed(pet_shop, breed)
  breed_quantity = []
  #puts pet_shop[:pets][0][:breed].class
  for pet in pet_shop[:pets]
    breed_quantity << pet if pet[:breed] == breed
  end
  return breed_quantity
end
# 9 test_all_pets_by_breed__not_found
# same method as above
# 10 test_find_pet_by_name__returns_pet
def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == pet_name
  end
  return nil
end
# 11 test_find_pet_by_name__returns_nil
# same method as above
# 12 test_remove_pet_by_name
def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    pet_shop[:pets].delete(pet) if pet[:name] == pet_name
  end
end
# 13 test_add_pet_to_stock
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end
# 14 test_customer_pet_count
def customer_pet_count(customer)
  return customer[:pets].count()
end
# 15 test_add_pet_to_customer
def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end
# # OPTIONAL
# 16 test_customer_can_afford_pet__insufficient_funds
def customer_can_afford_pet(customer, new_pet)
  return customer[:cash] >= new_pet[:price]
end
# 17 test_customer_can_afford_pet__sufficient_funds
# same method as above
# 18 test_sell_pet_to_customer__pet_found
def sell_pet_to_customer(pet_shop, pet, customer)
  if ((pet != nil) && customer_can_afford_pet(customer, pet))
    add_pet_to_customer(customer, pet)
    increase_pets_sold(pet_shop, customer[:pets].count())
    add_or_remove_cash(pet_shop, pet[:price])
  end
end
# 19 test_sell_pet_to_customer__pet_not_found
# same method as above
# 20 test_sell_pet_to_customer__insufficient_funds
# same method as above
