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

exercise = track.exercises.create!(
  { title: "The hero's avatar", description: "To speak to people's heart and find the tension that will set the story in motion, you have to validate your audience's fears, and recognize they have the potential to become a hero",
    }
  )

exercise.questions.create!([
  { title: "Are you a woman or a man?", description: "To speak to people's heart and find the tension that will set the story in motion, you have to validate your audience's fears, and recognize they have the potential to become a hero",
    },
  { title: "How does your friends call you?" },
  { title: "If you don't mind me asking... how old are you?" },
  { title: "Do you have a significant other?" },
  { title: "Where do you work?" },
  { title: "What inspired you to go into that?" }
  ])
