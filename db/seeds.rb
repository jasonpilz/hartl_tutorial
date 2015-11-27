# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

class Seed

  def self.plant
    new.generate
  end

  def generate
    create_users
  end

  def create_users
    @jason = User.create(name: "Jason Pilz",
                         email: "jasonpilz@gmail.com",
                         password: "enigma",
                         password_confirmation: "enigma")
  end
end

Seed.plant
