//
//  MyProfile.swift
//  Q
//
//  Created by Jacob L on 6/24/23.
//

import SwiftUI

struct MyProfile: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("No profile selected!")
                    .font(
                        Font.custom("Outfit", size: 20)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color.blue)
                NavigationLink(destination: CreateAccount()) {
                    Text("Create Account")
                        .font(
                            Font.custom("Outfit", size: 20)
                                .weight(.semibold)
                        )
                    .foregroundColor(Color.black)                }
                .padding(10)
                
                NavigationLink(destination:
                                Login()) {
                    Text("Login")
                        .font(
                            Font.custom("Outfit", size: 20)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color.black)
                }
                                .padding()
                                .frame(maxWidth: .infinity)
                            }
            }
        }
}

struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
    }
}
