//
//  AstronautView.swift
//  Moonshot
//
//  Created by Aidan Bergerson on 12/26/24.
//

import SwiftUI

struct AstronautView: View {
    let astronauts: Astronaut
    var body: some View {
        ScrollView {
            VStack {
                Image(astronauts.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronauts.description)
                    .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronauts.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let astronaut: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    AstronautView(astronauts: astronaut["aldrin"]!)
        .preferredColorScheme(.dark)
}
