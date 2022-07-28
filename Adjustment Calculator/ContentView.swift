//
//  ContentView.swift
//  Adjustment Calculator
//
//  Created by Mark Ward on 7/27/22.
//

import SwiftUI

struct ContentView: View {
	
	@State var lineAmount = 0.0
	@State var tankLevel = 0.0
	var totalSystemQty = 0.0
	let thickenerPerGaFull = 0.005
	var thickenerFullHit = 0.0
	let thickenerPerGaHalf = 0.0025
	var thickenerHalfHit = 0.0
	let aminePerGaFull = 0.0005
	var amineFullHit = 0.0
	let aminePerGaHalf = 0.00025
	var amineHalfHit = 0.0
	let thickenerName = "VG46609 Thickener"
	let amineName = "H-28 Amine"
	
    var body: some View {
		NavigationView {
			Form {
				Section(header: Text("How many gallons in the lines?")) {
					Picker("Gallons", selection: $lineAmount) {
						ForEach(["122", "40"], id: \.self) { lineAmount in
							Text(lineAmount)
					}
				}
			}
				
				Section(header: Text("What is the tank level?")) {
					Picker("Gallons", selection: $tankLevel) {
						ForEach(1..<91, id: \.self) {
							Text("\($0)")
						}
					}
				}
					
				Section(header: Text("Thickener Adjustments:")) {
					//totalSystemQty = lineAmount + tankLevel
					//thickenerFullHit = totalSystemQty * thickenerPerGaFull
					//thickenerHalfHit = totalSystemQty * thickenerPerGaHalf
					//VStack {
						//Text("A full system hit is: \(thickenerFullHit) gallons")
						//Text("A half system hit is: \(thickenerHalfHit) gallons")
					//}
				}
				
				Section(header: Text("Amine Adjustments:")) {
					// Display half & whole hits
				}
			}
			.navigationTitle("Adjustments")
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView()
			
    }
}

