# Witch Hunt!

This is a Tech Test for Which? 

## Brief Description

As you are probably aware, kittens have been disappearing across the neighbourhood. The news networks have been reporting that these kittens have been abducted by a mysterious woman, dressed in black. Not much is known about this woman and the town is fraught with fear as the search continues.

We have been tracking unusual anomalies above the rooftops that we have identified as some kind of flying craft. It seems that over the past few weeks, this craft has been present during the abductions of the missing kittens. Unfortunately, we have been unable to pinpoint its location.


## Getting started

Please clone: https://github.com/Denisglb/Witch_Hunt.git

Run `bundle install`
Then `ruby lib/controller.rb`

This will provide you with the co-ordinates to where the witch is hiding! Lets find her and save the kittens!

## Running tests

Unit Testing & Code Coverage are both implemented within the code

run 'rspec' to see all tests are passing with 100% coverage

## Description of classes
`WitchHunt` - receives a JSON file and output and Array of directions
`DirectionsProcess` - processes an array of directions and returns the directions array along with which way the witch is looking when traveling. 
`Co-Ordinates` - processes the direction array as well as which direction the witch is travelling and outputs co-ordinates to where the witch can be found.
`Controller` - dependency injection for the previous classes and the only class that needs to be run to receive the co-ordinates

