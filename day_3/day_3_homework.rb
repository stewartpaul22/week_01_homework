# A. Given the following data structure:

stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# 1. Add "Edinburgh Waverley" to the end of the array
stops << "Edinburgh Waverley"
p "Answer 1: "
p stops

# 2. Add "Glasgow Queen St" to the start of the array
stops.unshift("Glasgow Queen St")
p "Answer 2: "
p stops

# 3. Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")
stops.insert(4, "Polmont")
p "Answer 3: "
p stops

# 4. Work out the index position of "Linlithgow"
p "Answer 4: "
index = 0
for stop in stops
  if stop == "Linlithgow"
    p "#{stop} is at index #{index}"
  end
  index += 1
end

# 5. Remove "Livingston" from the array using its name
stops.delete("Livingston")
p "Answer 5: "
p stops

# 6. Delete "Cumbernauld" from the array by index
stops.delete_at(2)
p "Answer 6: "
p stops

# 7. How many stops there are in the array?
p "Answer 7: "
p stops.length

# 8. How many ways can we return "Falkirk High" from the array?
#

# 9. Reverse the positions of the stops in the array
stops.reverse!()
p "Answer 9: "
p stops

# 10. Print out all the stops using a for loop
p "Answer 10: "
for stop in stops
  p stop
end


# B. Given the following data structure:
users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :favourite_numbers => [12, 42, 75, 12, 5],
    :home_town => "Stirling",
    :pets => {
      "fluffy" => :cat,
      "fido" => :dog,
      "spike" => :dog
    }
  },
  "Erik" => {
    :twitter => "eriksf",
    :favourite_numbers => [8, 12, 24],
    :home_town => "Linlithgow",
    :pets => {
      "nemo" => :fish,
      "kevin" => :fish,
      "spike" => :dog,
      "rupert" => :parrot
    }
  },
  "Avril" => {
    :twitter => "bridgpally",
    :favourite_numbers => [12, 14, 85, 88],
    :home_town => "Dunbar",
    :pets => {
      "colin" => :snake
    }
  },
}

# 1. Get Jonathan's Twitter handle (i.e. the string "jonnyt")
p "Answer 1: "
p users["Jonathan"][:twitter]

# 2. Get Erik's hometown
p "Answer 2: "
p users["Erik"][:home_town]

# 3. Get the array of Erik's favourite numbers
p "Answer 3: "
p users["Erik"][:favourite_numbers]

# 4. Get the type of Avril's pet Colin
p "Answer 4: "
p users["Avril"][:pets]["colin"]

# 5. Get the smallest of Erik's favourite numbers
p "Answer 5: "
sorted_numbers = users["Erik"][:favourite_numbers]
p sorted_numbers.first()

# 6. Add the number 7 to Erik's favourite numbers
p "Answer 6: "
users["Erik"][:favourite_numbers] << 7
p users["Erik"][:favourite_numbers]

# 7. Change Erik's hometown to Edinburgh
p "Answer 7: "
users["Erik"][:home_town] = "Edinburgh"
p users["Erik"][:home_town]

# 8. Add a pet dog to Erik called "Fluffy"
p "Answer 8: "
users["Erik"][:pets]["Fluffy"] = :dog
p users["Erik"][:pets]

# 9. Add yourself to the users hash
p "Answer 9: "
users["Paul"] = {
  twitter: "stewartpaul22",
  favourite_numbers: [ 2, 3, 5, 7 ],
  home_town: "Glasgow",
  pets: {
    "Lebowski" => :cat
  }
}
p users["Paul"]

# C. Given the following data structure:
united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# 1. Change the capital of Wales from "Swansea" to "Cardiff".
p "Answer 1: "
united_kingdom[1][:capital] = "Cardiff"
p united_kingdom[1][:capital]

# 2. Create a Hash for Northern Ireland and add it to the united_kingdom array (The capital is Belfast, and the population is 1,811,000).
p "Answer 2: "
northern_ireland = { name: "Northern Ireland", population: 1811000, capital: "Belfast" }
united_kingdom << northern_ireland
p united_kingdom[3]

# 3. Use a loop to print the names of all the countries in the UK.
p "Answer 3: "
for country in united_kingdom
  p country[:name]
end

# 4. Use a loop to find the total population of the UK.
p "Answer 4: "
total_pop = 0
for country in united_kingdom
  total_pop += country[:population]
end
p total_pop
