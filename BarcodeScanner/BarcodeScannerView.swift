//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Fernando Archila on 16.05.24.
//

import SwiftUI

struct BarcodeScannerView: View {
    @State private var scannedCode = ""
    
    var body: some View {
        NavigationView{
            VStack {
            
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight:300)
              Spacer()
                    .frame(height: 60)
                Label("Scan Barcode:",systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(scannedCode.isEmpty ? "Not Yet Scanned":scannedCode)
                    .tint(.red)
                    .font(.largeTitle)
                    .bold()
                    .padding()
                    .foregroundColor(scannedCode.isEmpty ? .red: .green)
            }
        .navigationTitle("Barcode Scanner")
        }
            
        
        
        
    }
}

#Preview {
    BarcodeScannerView()
}
