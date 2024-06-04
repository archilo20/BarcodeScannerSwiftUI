//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Fernando Archila on 04.06.24.
//

import Foundation
import SwiftUI

struct AlertItem:Identifiable {
    let id = UUID()
    let title:String
    let message:String
    let dismissButton : Alert.Button
}

struct AlertContext{
    static let  invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Invalid input. Something is wrong with the camera ", dismissButton: .default(Text("OK")))
    static let  invalidScannedType = AlertItem(title: "Invalid Scanned Type", message: "Invalid value Scanned", dismissButton: .default(Text("OK")))
}
