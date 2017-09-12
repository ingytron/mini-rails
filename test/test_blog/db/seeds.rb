# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |post|
  Post.create!(
    title: "Blog entry #{post}",
    body: " Lt. Kara 'Starbuck' Thrace: [reacts to a joke] That was weak! So very, very weak!  Samuel T. Anders: [playfully] Lighten up a little bit. It's only the end of the world.
 Captain Lee 'Apollo' Adama: I thought we were sparring.  Commander William Adama: That's why you don't win.
 Doctor Gaius Baltar: [after finding out that he's being forced into becoming a politician while testing blood samples] Politics is the only thing more boring than blood samples.
 Racetrack: Been playing with these cards for so long, I know every fold.  Lt. Kara 'Starbuck' Thrace: So life's a bitch. What do you want to do, cry about it?  Racetrack: No, I just want it to end, okay? The bad food, the endless rotations, pretending that a card game is the high point of our day.  Lt. Kara 'Starbuck' Thrace: It's not going to last forever, all right? Earth is out there.  Racetrack: Right. We could all be chasing our tails over some half-assed planetarium show.  Lt. Kara 'Starbuck' Thrace: And you guys can all go to hell. I'm going to go find Helo.  Racetrack: Good idea... maybe that Cylon whore taught him a few tricks!  [Starbuck calmly turns around, walks over to Racetrack, then violently grabs Racetrack by the neck and slams her head into the card table]
 President Laura Roslin: [talking about Baltar] He's an odd one, isn't he?  Billy Keikeya: [in falsetto] Cuckoo..."
  )
end

puts "Created 10 blog posts"
