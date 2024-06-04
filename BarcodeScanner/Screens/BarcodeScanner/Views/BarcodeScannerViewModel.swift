//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Fernando Archila on 04.06.24.
//

import Foundation
import SwiftUI

final class BarcodeScannerViewModel:ObservableObject{
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText:String{
        scannedCode.isEmpty ? "Not Yet Scanned":scannedCode
    }
    var statusColor:Color{
        scannedCode.isEmpty ? .red: .green
    }
    
}
