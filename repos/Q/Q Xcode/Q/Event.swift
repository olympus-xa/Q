//
//  Event.swift
//  Q
//
//  Created by Jacob L on 6/24/23.
//

import SwiftUI

struct Event: View {
    @State var eventName: String = ""
    @State var address: String = ""
    @State var description: String = ""
    var isSubmitButtonDisabled: Bool {
        [eventName, address, description].contains(where: \.isEmpty)
    }
    var age = ["18 and Up", "21 and up", "All Ages"]
        @State private var selectedAge = "All Ages"
    var body: some View {
        VStack{
            ProgressView(value: 0.8)
            Text("Let's get some more information.")
            Form{
                Text("Event Name *")
                TextField("eventName",
                          text: $eventName,
                          prompt: Text("Enter name of events (max 50 chars)")
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
                          prompt: Text("Enter a brief description of your event. Feel free to include links to social media (max 300 chars)")
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
                Picker(selection: .constant(1), label: Text("Are you the event host/organizer?")) {
                        Text("Yes, this is my event.").tag(1)
                        Text("No, this is someone else's event.").tag(2)
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

struct Event_Previews: PreviewProvider {
    static var previews: some View {
        Event()
    }
}
