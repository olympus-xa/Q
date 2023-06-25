//
//  Event.swift
//  Q
//
//  Created by Jacob L on 6/24/23.
//

import SwiftUI

struct Event: View {
    var body: some View {
        VStack{
            ProgressView(value: 0.8)
            Text("Let's get some more information.")
        }
    }
}

struct Event_Previews: PreviewProvider {
    static var previews: some View {
        Event()
    }
}
