# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Smart.delete_all

Smart.create(
    :name => 'Samsung Galaxy S',
    :description => "The Samsung Galaxy S is a samrtphone wi",
    :image_url => '/images/sonyeric1.jpg',
    :price => 210.50
)

Smart.create(
    :name => 'Motorola Atrix',
    :description => "Holding the Motorola Atrix is like hol",
    :image_url => '/images/sonyeric2.jpg',
    :price => 240.99
)

Smart.create(
    :name => 'Google Phone Atrix',
    :description => "Holding the Motorola Atrix is like hol",
    :image_url => '/images/sonyeric3.jpg',
    :price => 260.99
)


Smart.create(
    :name => 'Google Phone Atrix',
    :description => "Holding the Motorola Atrix is like hol",
    :image_url => '/images/sonyeric4.jpg',
    :price => 200.99
)