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
