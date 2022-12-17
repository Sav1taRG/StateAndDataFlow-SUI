//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Roman Golubinko on 17.12.2022.
//

import Foundation
import SwiftUI

class StorageManager: ObservableObject {
    @AppStorage(wrappedValue: "User", "name") var name: String
    @AppStorage(wrappedValue: false, "isRegister") var isRegister: Bool
}
