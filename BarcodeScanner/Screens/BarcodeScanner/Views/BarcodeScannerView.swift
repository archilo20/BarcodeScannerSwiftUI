//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Fernando Archila on 16.05.24.
//

import SwiftUI



struct BarcodeScannerView: View {
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    
    var body: some View {
        NavigationView{
            VStack {
                
                ScannerView(scannedCode: $viewModel.scannedCode,alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight:300)
                Spacer()
                    .frame(height: 60)
                Label("Scan Barcode:",systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(viewModel.statusText)
                    .tint(.red)
                    .font(.largeTitle)
                    .bold()
                    .padding()
                    .foregroundColor(viewModel.statusColor)
                
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
            }
        }
            
        
        
        
    }
}

#Preview {
    BarcodeScannerView()
}
