//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by Mohit Sengar on 05/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing:15) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Visit the button below to learn more covering the concepts of swiftUI")
                NavigationLink("SwiftUI + Combine (observer Pattern)", destination: CombineOberserverPatternView()).buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
