require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#AIRBNB TESTING

house = Listing.new("house")
airstream = Listing.new("airstream")
apartment = Listing.new ("apartment")
houseboat = Listing.new("houseboat")
condo = Listing.new("condo")

airstream.city = "Terlingua"
house.city = "Terlingua"
houseboat.city = "Galveston"

jonathan = Guest.new("Jonathan")
blaire = Guest.new("Blaire")
marshall = Guest.new("Marshall")
jill = Guest.new("Jill")
charles = Guest.new("Charles")

trip1 = Trip.new("vacation", house, blaire)
trip2 = Trip.new("staycation", houseboat, blaire)
trip3 = Trip.new("floating", houseboat, jonathan)

#BAKERY TESTING

sprinkles = Bakery.new("Sprinkles")
crave = Bakery.new("Crave")
jeff = Bakery.new("Jeff's Breads")
melissa = Bakery.new("Baked By Melissa")
levain = Bakery.new("Levain")

cupcake = Dessert.new("Cupcake")
sourdough = Dessert.new("Sourdough Bread")
foccacia = Dessert.new("Foccacia")
cake = Dessert.new("Cake")
cookie = Dessert.new("Cookie")

sourdough.bakery = jeff
foccacia.bakery = jeff
cookie.bakery = levain
cupcake.bakery = sprinkles

flour = Ingredient.new("Flour", 100)
chips = Ingredient.new("Chocolate Chips", 150)
eggs = Ingredient.new("Eggs", 50)
butter = Ingredient.new("Butter", 200)
yeast = Ingredient.new("Yeast", 10)

flour.dessert = cookie
chips.dessert = cookie
butter.dessert = cookie
eggs.dessert = cookie
yeast.dessert = sourdough

#LYFT TESTING

blaire = Passenger.new("Blaire")
jonathan = Passenger.new("Jonathan")
jack = Passenger.new("Jack")
zoe = Passenger.new("Zoe")
catherine = Passenger.new("Catherine")

sean = Driver.new("Sean")
mo = Driver.new("Mo")
greg = Driver.new("Greg")
jess = Driver.new("Jess")
vi = Driver.new("Vi")

ride1 = Ride.new(jonathan, jess, 4.5)
ride2 = Ride.new(jonathan, vi, 10.3)
ride3 = Ride.new(blaire, jess, 50.7)
ride4 = Ride.new(blaire, mo, 107.6)
ride5 = Ride.new(jack, greg, 1.5)

#IMDB TESTING

sex = Movie.new("Sex and the City")
thegrinch = Movie.new("The Grinch")
liar = Movie.new("Liar Liar")
truman_show = Movie.new("The Truman Show")
spider = Movie.new("Spiderman")

mandalorian = Show.new("The Mandalorian")
schitt = Show.new("Schitt's Creek")
got = Show.new("Game of Thrones")
satc = Show.new("Sex and the City")
ozark = Show.new("Ozark")

sarah = Actor.new("Sarah Jessica Parker")
jim = Actor.new("Jim Carrey")
jason = Actor.new("Jason Bateman")
kit = Actor.new("Kit Harrington")
kim = Actor.new("Kim Catrall")

carrie = Character.new("Carrie Bradshaw", sarah)
grinch = Character.new("The Grinch", jim)
samantha = Character.new("Samantha", kim)
jon = Character.new("Jon Snow", kit)
truman = Character.new("Truman", jim)

sex.character = samantha
sex.character = carrie
thegrinch.character = grinch
truman_show.character = truman

satc.character = samantha
satc.character = carrie
got.character = jon

#CROWDFUNDING TESTING

blaire = User.new("Blaire")
jack = User.new("Jack")
cheryl = User.new("Cheryl")
patty = User.new("Patty")
stephanie = User.new("Stephanie")

wig = Project.new("Wig Fund", stephanie, 6000)
treats = Project.new("Cat Treat Fund", jack, 50)
homeless = Project.new("Homeless Shelter", blaire, 1000)
pantry = Project.new("Food Pantry", cheryl, 100)
spca = Project.new("SPCA", cheryl, 200)

pledge1 = Pledge.new(treats, patty, 100)
pledge2 = Pledge.new(wig, cheryl, 50)
pledge3 = Pledge.new(wig, jack, 25)
pledge4 = Pledge.new(spca, patty, 20)
pledge5 = Pledge.new(pantry, blaire, 500)

#GYM TESTING

alex = Trainer.new("Alex")
julia = Trainer.new("Julia")
stef = Trainer.new("Stef")
heather = Trainer.new("Heather")
corinne = Trainer.new("Corinne")

carissa = Client.new("Carissa")
blaire = Client.new("Blaire")
annie = Client.new("Annie")
mary = Client.new("Mary")
lexie = Client.new("Lexie")

uws = Location.new("UWS")
harlem = Location.new("Harlem")
midtown = Location.new("Midtown")
chelsea = Location.new("Chelsea")
soho = Location.new("SoHo")

carissa.assign_trainer(alex)
blaire.assign_trainer(alex)
annie.assign_trainer(julia)
mary.assign_trainer(stef)
lexie.assign_trainer(corinne)

alex.add_location(uws)
corinne.add_location(chelsea)
corinne.add_location(soho)
corinne.add_location(midtown)
heather.add_location(midtown)

Pry.start


