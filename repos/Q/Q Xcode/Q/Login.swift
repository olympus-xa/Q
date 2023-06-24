//
//  Login.swift
//  Q
//
//  Created by Jacob L on 6/23/23.
//

import SwiftUI

struct Login: View {
    @State var name: String = ""
    @State var password: String = ""
    @State var showPassword: Bool = false
    var isSignInButtonDisabled: Bool {
        [name, password].contains(where: \.isEmpty)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Spacer()
            
            TextField("Name",
                      text: $name,
                      prompt: Text("Username")
                        .foregroundColor(.black)
                        .font(
                        Font.custom("Outfit", size: 20)
                        .weight(.semibold)
                        )
)
            .padding(6)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    
                    .stroke(.blue, lineWidth: 5)
            }
            .padding(.horizontal)
            
            
            HStack {
                Group {
                    if showPassword {
                        TextField("Password",
                                    text: $password,
                                    prompt: Text("Password")
                                        .foregroundColor(.black)
                                        .font(
                                        Font.custom("Outfit", size: 20)
                                        .weight(.semibold)
                                        )
                )
                        
                    } else {
                        SecureField("Password",
                                    text: $password,
                                    prompt: Text("Password")
                                        .foregroundColor(.black)
                                        .font(
                                        Font.custom("Outfit", size: 20)
                                        .weight(.semibold)
                                        )
                )
                    }
                }
                .padding(6)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue, lineWidth: 5)
                }

                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                        .foregroundColor(.black)
                }

            }.padding(.horizontal)
            
            Button {
              print("do login action")
            } label: {
              Text("Sign In")
                    .font(
                    Font.custom("Outfit", size: 25)
                    .weight(.semibold)
                    )
              .bold()
              .foregroundColor(.blue)
                
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .cornerRadius(20)
            .disabled(isSignInButtonDisabled)
            .padding(.horizontal)
            Spacer()
        }
        
    }
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

