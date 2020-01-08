require './lib/artist'
require './lib/stage'
require 'pg'

DB = PG.connect({:dbname => "sql_tests"})

stage_one = Stage.new({:name => "green"})
stage_one.save
stage_two = Stage.new({:name => "blue"})
stage_two.save

puts "enter another stage:"
stage3 = gets

stage_three = Stage.new({:name => "#{stage3}"});

# DB.exec("UPDATE stages SET name = 'yer mom' WHERE id = 1;"); ({""});

stage_three.save

puts "here are your stages: #{Stage.all}"
