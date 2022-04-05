//
//  main.swift
//  swift_02_lekcija
//
//  Created by Paulis Zabarovskis on 05/04/2022.
//

import Foundation

var num = [5, 4, 24, 42, 7, -5, -25]
func getMinMax(widthArray list: [Int]) -> (min: Int, max: Int){
guard list.count > 0 else {
  print ("masīvs ir tukšs")
  return (1, -1)
  }
var minValue = list[0]
var maxValue = list[0]
for value in list {
  minValue = value < minValue ? value : minValue
  maxValue = value > maxValue ? value : maxValue
}
return (minValue, maxValue)
}

print(num)
if getMinMax(widthArray: num) == (1, -1) {print("Error!")} else {
let bounds = getMinMax(widthArray: num)
print(bounds)
}
num = []
if getMinMax(widthArray: num) == (1, -1) {print("Error!")} else {
let bounds = getMinMax(widthArray: num)
print(bounds)
}

// ========= Filtresana ========
var cars = ["Audi a4", "BMW 320", "Audi Q4", "Ford Mondeo"]

// Elementa pievienosana beigas. - append
cars.append("Renault Megane")

// Elementa ievietosana masiva vidu - insert(:at:)
cars.insert("Mazda 6", at: 2)

var numbers = Array(repeating: 10, count: 20)

// Masivu apvienosana
var moto = ["Honda 1000", "Suzuki 2000"]

var vehicles = cars + moto // apvienojam masivus un pieskiram treasajam

// Update
vehicles[4] = "MB 250" // 4: "Ford Mondeo" -> "MB 250"

vehicles[4...6] = ["Ford Mustang", "Bernu velosipeds", "Harley Davidson"]


// Remove - elementa iznemsana
vehicles.remove(at: 5) // iznemam 5 : "Bernu velosipeds"


// Iteracija
for (indeks, autins) in vehicles.enumerated() {
print("Indekss=\(indeks) vertiba=\(autins)")
}
var carsAudi:[String] = []
for car in vehicles {
// if car == "Audi Q4" {
// carsAudi.append(car) // copy uz carsAudi
// }
if car.contains("Audi") {
carsAudi.append(car) // copy uz carsAudi
}
}

// Metode filter

carsAudi = vehicles.filter { autins in
return autins.contains("Audi")
}
// Tas pats, bez "autins"
let carsLong = vehicles.filter {
return $0.count > 7
}

print(carsAudi)
print(carsLong)
