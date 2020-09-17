# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Workout.create([
                 { workout_type: 'cardio', name: 'basketball', distance: '1', duration: '1' },
                 { workout_type: 'cardio', name: 'running', distance: '2', duration: '1' },
                 { workout_type: 'cardio', name: 'bike riding', distance: '1', duration: '1.5' },
                 { workout_type: 'cardio', name: 'basketball', distance: '1', duration: '1.5' },
                 { workout_type: 'cardio', name: 'bike riding', distance: '1', duration: '1.5' },
                 { workout_type: 'cardio', name: 'jogging', distance: '1', duration: '1' },
                 { workout_type: 'cardio', name: 'sprinting', distance: '1', duration: '2.5' },
                 { workout_type: 'cardio', name: 'bike riding', distance: '1', duration: '1.5' },
                 { workout_type: 'cardio', name: 'sprinting', distance: '1', duration: '2.5' },
                 { workout_type: 'cardio', name: 'bike riding', distance: '2', duration: '3.5' }
               ])

Routine.create([
                 { name: 'Weight Training' },
                 { name: 'Cardio Rush' },
                 { name: 'Hoops' },
                 { name: 'Batman Chest' },
                 { name: 'Gym Glutes' }
               ])
