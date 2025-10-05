//
//  CombineOberserverPatternView.swift
//  SwiftUILearning
//
//  Created by Mohit Sengar on 05/10/25.
//

import SwiftUI
import Combine

class UserViewModel: ObservableObject{
    @Published var isUserLoggerIn = false
    
    func loginUser(){
        isUserLoggerIn = true
        print("User Logged In Successfully.")
    }
}

struct CombineOberserverPatternView: View {
    @StateObject private var viewModel = UserViewModel()
    
    var body: some View {
        VStack{
            if(viewModel.isUserLoggerIn){
                Text("Welcome Back!")
            }else{
                Button("Login"){
                    viewModel.loginUser()
                }
            }
        }.onReceive(viewModel.$isUserLoggerIn){ newValue in
            print("Recieved Update with value: \(newValue)")
        }.navigationTitle("SwiftUI + Combine Observer Pattern")
    }
}

#Preview {
    CombineOberserverPatternView()
}
