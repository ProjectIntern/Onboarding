# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(first_name: "Kobe", last_name: "Bryant", email: "kbryant@lakers.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Los Angeles", position: "small guard", image:"http://images.sportsworldreport.com/data/images/full/991/los-angeles-lakers-shooting-guard-kobe-bryant-24-reacts-after-he-is-fouled.jpg", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u2 = User.create(first_name: "Steve", last_name: "Kerr", email: "skerr@warriors.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Golden State", position: "coach", image: "http://palisadesparade.org/wordpress/wp-content/uploads/2014/06/Steve-Kerr1.jpg", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u3 = User.create(first_name: "Stephen", last_name: "Curry", email: "scurry@warriors.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Golden State", position: "point guard", facebook:"https://www.facebook.com/StephenCurryOfficial", linkedin: "http://linkedin.com", instagram: "https://instagram.com/wardell30/", twitter: "https://twitter.com/stephencurry30", image: "http://www.gannett-cdn.com/-mm-/9b82493af6d6321ddc22c7a31e72b33309d7a36f/c=1275-0-2925-2200&r=537&c=0-0-534-712/local/-/media/2015/02/14/USATODAY/USATODAY/635595490453065957-2015-02-14-Stephen-Curry1.jpg" , about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u4 = User.create(first_name: "Klay", last_name: "Thompson", email: "kthomspon@warriors.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Golden State", position: "small guard", image: "http://shandyfiles.s3-us-west-1.amazonaws.com/images/photos/thefumble/klay-thompson-scores-26-in-second-quarter.jpg", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u5 = User.create(first_name: "Andre", last_name: "Iguodala", email: "aiguodala@warriors.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Golden State", position: "small guard", image: "http://www4.pictures.zimbio.com/gi/Andre+Iguodala+Spain+v+USA+INUhVbxqhlUl.jpg", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u6 = User.create(first_name: "David", last_name: "Lee", email: "dlee@warriors.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Golden State", position: "power forward", image: "http://thesportsquotient.com/media/posts/16774/david%20lee.jpg", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u7 = User.create(first_name: "Draymond", last_name: "Green", email: "dgreen@warriors.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Golden State", position: "small forward", image: "http://www4.pictures.zimbio.com/gi/Draymond+Green+Chicago+Bulls+v+Golden+State+_NsXbWi0rdNl.jpg", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u8 = User.create(first_name: "Andrew", last_name: "Bogut", email: "abogut@warriors.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Golden State", position: "center",image: "http://warriorsworld.bayareaballllc1.netdna-cdn.com/wp-content/uploads/2014/01/Andrew-Bogut.jpg", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u9 = User.create(first_name: "Shaun", last_name: "Livingston", email: "slivingston@warriors.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Golden State", position: "point guard", image:"http://i.cdn.turner.com/drp/nba/warriors/sites/default/files/livingston_okc_20141218.jpg", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u10 = User.create(first_name: "Harrison", last_name: "Barnes", email: "hbarnes@warriors.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Golden State", position: "small forward", image:"http://www1.pictures.zimbio.com/gi/Harrison+Barnes+2012+NBA+Rookie+Photo+Shoot+4OCFXyO64dql.jpg", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u11 = User.create(first_name: "Leandro", last_name: "Barbosa", email: "lbarbosa@warriors.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Golden State", position: "small guard", image:"http://thumb.usatodaysportsimages.com/image/thumb/650-510nw/8379908.jpg", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u12 = User.create(first_name: "Festus", last_name: "Ezeli", email: "fezeli@warriors.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Golden State", position: "center", image:"http://www2.pictures.zimbio.com/gi/Golden+State+Warriors+v+Los+Angeles+Lakers+K7tzvJTm9zvl.jpg", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u13 = User.create(first_name: "Marreese", last_name: "Speights", email: "mspeights@warriors.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Golden State", position: "center", image:"http://ww1.hdnux.com/photos/33/24/11/7160408/11/920x920.jpg", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u14 = User.create(first_name: "Brandon", last_name: "Rush", email: "brush@warriors.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Golden State", position: "small guard", image:"http://l.yimg.com/j/assets/p/sp/getty/ec/fullj.fae835ba328d8c884ab981ca8c80c763/fae835ba328d8c884ab981ca8c80c763-getty-136725986.jpg", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u15 = User.create(first_name: "James", last_name: "McAdoo", email: "jmcadoo@warriors.com", password: "pa55w0rd", password_confirmation: "pa55w0rd", code: "gapinc", location: "Golden State", position: "small guard", image:"http://thumb.usatodaysportsimages.com/image/thumb/650-510nw/8521826.jpg", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.")


