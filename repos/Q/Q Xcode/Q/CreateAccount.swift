//
//  CreateAccount.swift
//  Q
//
//  Created by Jacob L on 6/23/23.
//

import SwiftUI

struct CreateAccount: View {
    @State var name: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Spacer()
            HStack{
                Text("Q")
                  .font(Font.custom("Ramaraja", size: 170))
                  .foregroundColor(Color.yellow)
                  .padding()
                Text("Glad you can join us!")
            }
            TextField("Name",
                      text: $name,
                      prompt: Text("Name").foregroundColor(.blue))
                .padding(10)
                .overlay {
                     RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue, lineWidth: 2)
                   }
                   .padding(.horizontal)
            Spacer()
        }
        
    }
    
    struct CreateAccount_Previews: PreviewProvider {
        static var previews: some View {
            CreateAccount()
        }
    }
}
