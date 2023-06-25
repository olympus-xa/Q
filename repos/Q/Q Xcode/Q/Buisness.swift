//
//  Buisness.swift
//  Q
//
//  Created by Jacob L on 6/24/23.
//

import SwiftUI

struct Buisness: View {
    @State var buisnessName: String = ""
    @State var address: String = ""
    @State var description: String = ""
    var isSubmitButtonDisabled: Bool {
        [buisnessName, address, description].contains(where: \.isEmpty)
    }
    var body: some View {
        VStack{
            ProgressView(value: 0.8)
            Text("Let's get some more information.")
            Form{
                Text("Buisness Name *")
                TextField("buisnessName",
                          text: $buisnessName,
                          prompt: Text("Enter name of buisness (max 50 chars)")
                    .foregroundColor(.black)
                    .font(
                        Font.custom("Outfit", size: 16)
                            .weight(.semibold)
                    )
                )
                .padding(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                    
                        .stroke(.blue, lineWidth: 5)
                }
                .padding()
                Text("Address")
                TextField("address",
                          text: $address,
                          prompt: Text("Enter vaild address (Street 1, City, State)")
                    .foregroundColor(.black)
                    .font(
                        Font.custom("Outfit", size: 16)
                            .weight(.semibold)
                    )
                )
                .padding(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                    
                        .stroke(.blue, lineWidth: 5)
                }
                .padding()
                Text("Description")
                TextField("description",
                          text: $description,
                          prompt: Text("Enter a brief description of your buisness. Feel free to include links to social media (max 300 chars)")
                    .foregroundColor(.black)
                    .font(
                        Font.custom("Outfit", size: 16)
                            .weight(.semibold)
                    ),
                          axis: .vertical
                )
                .lineLimit(3...10)
                .padding(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue, lineWidth: 5)
                }
                .padding()
                Picker(selection: .constant(1), label: Text("Age Restriction")) {
                    Text("All Ages").tag(1)
                    Text("18 and Up").tag(2)
                    Text("21 and Up").tag(3)
                        .padding(10)
                }
                Picker(selection: .constant(1), label: Text("Are you Buiness owner and/or assoicated with the buisness?")) {
                        Text("Yes, I am the owner.").tag(1)
                        Text("Yes, I am assoicated with the buisness").tag(2)
                        Text("No, I have no assication with the buisness").tag(3)
                    }
                }
            Button {
              print("submit form")
            } label: {
              Text("Submit")
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
            .disabled(isSubmitButtonDisabled)
            .padding(.horizontal)
        }
    }
}

struct Buisness_Previews: PreviewProvider {
    static var previews: some View {
        Buisness()
    }
}
