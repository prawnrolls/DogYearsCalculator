//
//  ContentView.swift
//  DogYearsCalculator
//
//  Created by Linda Dang on 20/2/2025.
//

import SwiftUI

struct ContentView: View {
    //write values outside the body, views inside the body
    @State private var age = 0.0
    
    //declare a function that returns a double
    func calculateDogYears() -> Double {
        return age * 7
    }
    
    var body: some View {
        VStack {
           
            switch age {
            case 0...15:
                Text("🐶") //hold function to search emojis
                    .font(.system(size: 50))
            case 16...25:
                Text("😇")
                    .font(.system(size: 50))
            default:
                Text("🤔")
                    .font(.system(size: 50))
            }
            Text("Dog Years Calculator")
                .font(.largeTitle)
                .fontDesign(.rounded)
                .fontWeight(.black)
            Slider(value: $age, in: 0...25, step: 1)
            Text("My age: \(Int(age))")
                .font(.title2)
            Text("Dog's age: \(Int(calculateDogYears()))")
                .font(.title2)

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
