//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Roman Golubinko on 17.12.2022.
//

import Foundation
import SwiftUI

class StorageManager: ObservableObject {
    @AppStorage("name") var name: String = "User"
    @AppStorage("isRegister") var isRegister: Bool = false
}
