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
                      prompt: Text("Username").foregroundColor(.blue))
            .padding(6)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.blue, lineWidth: 5)
            }
            .padding(.horizontal)
            
            
            HStack {
                Group {
                    if showPassword {
                        TextField("Password", // how to create a secure text field
                                    text: $password,
                                    prompt: Text("Password").foregroundColor(.red)) // How to change the color of the TextField Placeholder
                    } else {
                        SecureField("Password", // how to create a secure text field
                                    text: $password,
                                    prompt: Text("Password").foregroundColor(.red)) // How to change the color of the TextField Placeholder
                    }
                }
                .padding(6)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.red, lineWidth: 5) // How to add rounded corner to a TextField and change it colour
                }

                Button { // add this new button
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                        .foregroundColor(.red)
                }

            }.padding(.horizontal)
            
            Button {
              print("do login action")
            } label: {
              Text("Sign In")
              .font(.title3)
              .bold()
              .foregroundColor(.white)
                
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

