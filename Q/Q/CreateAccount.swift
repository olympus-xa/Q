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
            Spacer() // this use all space available above the TextField
            
            TextField("Name",
                      text: $name,
                      prompt: Text("Name").foregroundColor(.blue))
                .padding(10)
                .overlay {
                     RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue, lineWidth: 2)
                   }
                   .padding(.horizontal)
            Spacer() // this use all space available
        }
        
    }
    
    struct CreateAccount_Previews: PreviewProvider {
        static var previews: some View {
            CreateAccount()
        }
    }
}
