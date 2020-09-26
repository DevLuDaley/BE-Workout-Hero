# frozen_string_literal: true

require 'faker'

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

r1 = Routine.all[0]
r1.workouts.create(workout_type: 'Cardio', name: Faker::Team.sport, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r1.workouts.create(workout_type: 'Cardio', name: Faker::Team.sport, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r1.workouts.create(workout_type: 'Cardio', name: Faker::Team.sport, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r2 = Routine.all[1]
r2.workouts.create(workout_type: 'Cardio', name: Faker::Team.sport, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r2.workouts.create(workout_type: 'Cardio', name: Faker::Team.sport, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r3 = Routine.all[2]
r3.workouts.create(workout_type: 'Cardio', name: Faker::Team.sport, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r5 = Routine.all[4]
r5.workouts.create(workout_type: 'Cardio', name: Faker::Team.sport, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r5.workouts.create(workout_type: 'Cardio', name: Faker::Team.sport, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))

# 1.upto(5) do |_i|
#   Routine.workout.create(workout_type: 'Cardio', name: 'Jogging', distance: '1', duration: '1')
# end

# Routine.workouts.create(workout_type: 'Cardio', name: 'Jogging', distance: '1', duration: '1')

# .workouts.create(workout_type: 'Cardio', name: 'Basketball', distance: '5', duration: '2')

# r = Routine.all[0]
# r = Routine.all[1]
# r.workouts.create(workout_type:"Cardio", name: "Basketball", distance: "42", duration: "22")
