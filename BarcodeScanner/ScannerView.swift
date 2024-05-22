//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Fernando Archila on 16.05.24.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    @Binding var scannedCode:String

    func makeUIViewController(context: Context) -> ScannerVC  {
        
        return ScannerVC(scannerDelegate: context.coordinator)
    }
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {
        
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView:self)
    }
    
    final class Coordinator:NSObject,ScannerVCDelegate{
        private let scannerView: ScannerView
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        func didFind(barcode: String) {
            scannerView.scannedCode = barcode
            
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
        
        
    }
}


#Preview {
    ScannerView(scannedCode: .constant("1A2d1sdq"))
}
