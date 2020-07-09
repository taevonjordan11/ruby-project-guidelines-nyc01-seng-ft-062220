Engineer.destroy_all
Artist.destroy_all
Project.destroy_all

a1 = Artist.create(name: "Fern-O")
a2 = Artist.create(name: "whoisjames?")
a3 = Artist.create(name: "Sankofa.Kofa")
a4 = Artist.create(name: "Jazmine Hayes")

e1 = Engineer.create(name:"Nude Plus", credentials: "Grammy nominated")
e2 = Engineer.create(name:"Mike Dean", credentials: "Grammy Nominated")
e3 = Engineer.create(name:"Spike", credentials: "Gold Plaque")
e4 = Engineer.create(name:"Midnight1200", credentials: "Grammy Award Winning")

p1 = Project.create(title: "Point of Love", submitted: false, artist: a1, engineer: e1)
p2 = Project.create(title: "wonte.", submitted: false, artist: a2, engineer: e1)
p3 = Project.create(title: "Loony Tunes", submitted: false, artist: a3, engineer: e2)
p4 = Project.create(title: "Jaz-Tapes", submitted: false, artist: a4, engineer: e3)
p5 = Project.create(title: "The Carter 22", submitted: false, artist: a2, engineer: e4)
