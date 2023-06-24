//
//  ContentView.swift
//  Q
//
//  Created by Jacob L on 6/23/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Create.  Host.  Review.")
                    .font(
                    Font.custom("Outfit", size: 25)
                    .weight(.semibold)
                    )
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(10)
                Text("Find your LGBTQ+ friendly community.")
                    .font(
                    Font.custom("Outfit", size: 25)
                    .weight(.semibold)
                    )
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Spacer()
                NavigationLink(destination: CreateAccount()) {
                    Text("Create Account")
                        .font(
                        Font.custom("Outfit", size: 20)
                        .weight(.semibold)
                        )
                        .foregroundColor(Color.white)                }
                .padding(10)
                NavigationLink(destination:
                                Login()) {
                    Text("Login")
                        .font(
                        Font.custom("Outfit", size: 20)
                        .weight(.semibold)
                        )
                        .foregroundColor(Color.white)

                }
                NavigationLink(destination: LandingPage()) {
                    Text("CONTINUE AS GUEST")
                      .font(
                        Font.custom("Outfit", size: 12)
                          .weight(.medium)
                      )
                      .kerning(0.96)
                      .foregroundColor(.white.opacity(0.75))
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
                .background(Color(red: 0.6, green: 0.6, blue: 0.99))
            
        }
        
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

