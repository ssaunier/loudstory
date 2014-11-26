# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Track.destroy_all
Exercise.destroy_all

track = Track.create!(
  { title: 'Core Story', description: 'Start writing the core story of your startup' }
  )

track.exercises.create!([
  { title: "The hero's avatar", description: "To speak to people's heart and find the tension that will set the story in motion, you have to validate your audience's fears, and recognize they have the potential to become a hero",
    uid: 'N43ZFg'},
  { title: "The hero's fears and dreams", description: "The hero tells how broken his world is, the lack of balance he experiences in his life.
    He dares speaking about that inkling that something more is possible.",
    uid: 'Aw8e8O'},
  { title: "The founders' entrepreneurial dream", description: "Explore the reason for being of your company.",
    uid: 'te4Ykf'}

  ])
