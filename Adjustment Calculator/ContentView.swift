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
					// Display half & whole hits
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

