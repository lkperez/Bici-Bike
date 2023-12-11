# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
Station.destroy_all
Station.create!([{identifier: 1, name: "Smith college", address: "1 Chapin Way", map_id: 1},{identifier: 2, name: "Academy of Music", address: "274 Main Street", map_id: 2},{identifier: 3, name: "Stop n Shop", address: "228 King St", map_id: 3}])
p "Created #{Station.count} stations"

Bike.destroy_all
Bike.create!([{identifier: 01, current_station_id: 1},{identifier: 02, current_station_id: 1},{identifier: 03, current_station_id: 1},{identifier: 04, current_station_id: 1},{identifier: 05, current_station_id: 3},{identifier: 06, current_station_id: 2},{identifier: 07, current_station_id: 3}])

p "Created #{Bike.count} bikes"
Station.find { | station | station.identifier == 1}.docked_bikes << Bike.select {| bike | bike.current_station_id == 1}
Station.find { | station | station.identifier == 2}.docked_bikes << Bike.select {| bike | bike.current_station_id == 2}
Station.find { | station | station.identifier == 3}.docked_bikes << Bike.select {| bike | bike.current_station_id == 3}