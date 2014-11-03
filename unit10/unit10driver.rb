require_relative 'unit10assignment'

a = AppleStore.new()
ipod = a.createGadget(:Apple, :iPodShuffle, 49, 1.14, 1.24, 0.44, :ounces)
# arguments are make, model, price, height, width,
# weight and weight scale
puts("here is your ipod!!")
puts ipod.create() 
puts("here is your AppleStore!!")
puts a.products_sold
macmini = a.createGadget(:Apple, :MacMini, 599, 1.4, 7.7, 2.7, :pounds)
puts("here is your macmini!")
puts macmini.create()
puts("here is your AppleStore!")
puts a.products_sold
iphone6 = a.createiPhone(:iPhone6)
puts("here is your iphone6!")
puts iphone6.to_s
puts("here is your AppleStore!")
puts a.products_sold