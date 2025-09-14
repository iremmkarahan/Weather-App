//
//  ContentView.swift
//  WeatherApp
//
//  Created by İreemmmm on 7.09.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNightModeOn = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNightModeOn ? .black : .blue,
                           bottomColor: isNightModeOn ? .white : Color("lightblue")
            )
            
            
            VStack {
               CityTextView(cityName: "San Francisco, CA")
                
                WeatherStatusView(image: isNightModeOn ? "moon.stars.fill": "cloud.sun.fill",
                                  temperature: 63)
                    
        
                HStack(spacing: 18) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 63)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 70)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind",
                                   temperature: 57)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sunset.fill",
                                   temperature: 59)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "moon.stars.fill",
                                   temperature: 53)
                    WeatherDayView(dayOfWeek: "SUN",
                                   imageName: "cloud.drizzle.fill",
                                   temperature: 47)
                    
                }
                Spacer()
                
                Button {
                    // toggle between true and false
                    isNightModeOn.toggle()
                } label: {
                    ButtonView(buttonText: "Change Day Time",
                               textColor: .blue,
                               backgroundColor: Color.white,
                              )
        
                }
                
                Spacer()
                
            }
        }
    }
        
}
    
    #Preview {
        ContentView()
    }


struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium , design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName).renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°").font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor ]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}


struct CityTextView: View {
    
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
        
    }
}
struct WeatherStatusView: View {
    
    var image: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°").font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom,40)
   
    }
}
struct ButtonView: View {
    
    var buttonText: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(buttonText)
            .frame(width:280,height:50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size:20, weight: .bold, design: .default))
            .cornerRadius(10)
        
        
    }
}


