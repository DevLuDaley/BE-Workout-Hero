# frozen_string_literal: true

require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Routine.create([
                 { routine_name: 'Rehab: Ankle' },
                 { routine_name: 'Rehab: Quads' },
                 { routine_name: 'Cardio Rush' },
                 { routine_name: 'Basketball Drills' },
                 { routine_name: 'Batman Chest' },
                 { routine_name: 'Rehab: Glutes' }
               ])

Workout.create([
                 { workout_type: 'cardio', workout_name: 'basketball', distance: '1', duration: '1' },
                 { workout_type: 'cardio', workout_name: 'running', distance: '2', duration: '1' },
                 { workout_type: 'cardio', workout_name: 'bike riding', distance: '1', duration: '1.5' },
                 { workout_type: 'cardio', workout_name: 'floor bridges', distance: '1', duration: '1.5' },
                 { workout_type: 'cardio', workout_name: 'jogging', distance: '1', duration: '1' },
                 { workout_type: 'cardio', workout_name: 'sprinting', distance: '1', duration: '2.5' },
                 { workout_type: 'cardio', workout_name: 'push ups', distance: '1', duration: '1.5' },
                 { workout_type: 'cardio', workout_name: 'crunches', distance: '1', duration: '2.5' },
                 { workout_type: 'cardio', workout_name: 'squats', distance: '2', duration: '3.5' }
               ])

#  { workout_type: 'cardio', workout_name: 'floor bridges', distance: '1', duration: '1.5', routines: [{ id: 4, routine_name: 'Rehab: Quads' }] },

r1 = Routine.all[0]
r1.workouts.create(workout_type: 'Cardio', workout_name: 'squats', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r1.workouts.create(workout_type: 'Cardio', workout_name: 'boogie board', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r1.workouts.create(workout_type: 'Cardio', workout_name: 'one-legged-squats', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r1.workouts.create(workout_type: 'Cardio', workout_name: 'floor calf stretch', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r2 = Routine.all[1]
r2.workouts.create(workout_type: 'Cardio', workout_name: 'floor clam shells', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r2.workouts.create(workout_type: 'Cardio', workout_name: 'tke\'s', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r3 = Routine.all[2]
r3.workouts.create(workout_type: 'Cardio', workout_name: 'elliptical', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r4 = Routine.all[3]
r4.workouts.create(workout_type: 'Cardio', workout_name: 'suicides', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r4.workouts.create(workout_type: 'Cardio', workout_name: 'mican drill', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r5 = Routine.all[4]
r5.workouts.create(workout_type: 'Cardio', workout_name: 'bear crawls', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r5.workouts.create(workout_type: 'Cardio', workout_name: 'pull-ups', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))

# 1.upto(5) do |_i|
#   Routine.workout.create(workout_type: 'Cardio', name: 'Jogging', distance: '1', duration: '1')
# end

# Routine.workouts.create(workout_type: 'Cardio', name: 'Jogging', distance: '1', duration: '1')

# .workouts.create(workout_type: 'Cardio', name: 'Basketball', distance: '5', duration: '2')

# r = Routine.all[0]
# r = Routine.all[1]
# r.workouts.create(workout_type:"Cardio", name: "Basketball", distance: "42", duration: "22")
