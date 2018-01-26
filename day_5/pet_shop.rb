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
# test_pets_sold
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end
# test_increase_pets_sold
def increase_pets_sold(pet_shop, quantity)
  pet_shop[:admin][:pets_sold] += quantity
end
# test_stock_count
def stock_count(pet_shop)
  return pet_shop[:pets].count()
end
# test_all_pets_by_breed__found
def pets_by_breed(pet_shop, breed)
  breed_quantity = []
  #puts pet_shop[:pets][0][:breed].class
  for pet in pet_shop[:pets]
    breed_quantity << pet if pet[:breed] == breed
  end
  return breed_quantity
end
# test_all_pets_by_breed__not_found
# same method as above
# test_find_pet_by_name__returns_pet
def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == pet_name
  end
  return nil
end
# test_find_pet_by_name__returns_nil
# same method as above
# test_remove_pet_by_name
def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    pet_shop[:pets].delete(pet) if pet[:name] == pet_name
  end
end
# test_add_pet_to_stock
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end
# test_customer_pet_count
def customer_pet_count(customer)
  return customer[:pets].count()
end
# test_add_pet_to_customer
def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end
# # OPTIONAL
# test_customer_can_afford_pet__insufficient_funds
def customer_can_afford_pet(customer, new_pet)
  return customer[:cash] >= new_pet[:price]
end
# test_customer_can_afford_pet__sufficient_funds
# same method as above
# test_sell_pet_to_customer__pet_found
def sell_pet_to_customer(pet_shop, pet, customer)
  # add pet to customer's pets array
  customer[:pets] << pet
  # increase pets sold amount
  pet_shop[:admin][:pets_sold] += 1
  # increase total_cash by pet price
  pet_shop[:admin][:total_cash] += pet[:price]
end
