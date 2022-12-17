//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @State private var counterColor = Color.red
    @EnvironmentObject private var storageManager: StorageManager
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .padding(.trailing)
                    .foregroundColor(switchCounterColor())
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
                .disabled(name.count < 3)
            }
        }
    }
    
    private func switchCounterColor() -> Color {
        name.count < 3 ? Color.red : Color.green
    }
    
    private func registerUser() {
        if !name.isEmpty {
            StorageManager().name = name
            StorageManager().isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
