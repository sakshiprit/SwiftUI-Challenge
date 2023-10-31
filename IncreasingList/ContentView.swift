//
//  ContentView.swift
//  IncreasingList
//
//  Created by Sakshi Patil on 30/10/2023.
//

// Build a UI with a List and a Button below it.
//
//Declare a property that contains an array of 5 strings. These can be any 5 words you want.
//
//Each time the button is tapped, choose a random word from the array and put it in the list.
//
//The number of items in the list should grow as you tap the button.

import SwiftUI

struct ContentView: View {
	var words: [String] = ["Kurkure", "Aliva", "Lays", "Balaji", "Cheetos"]
	@State var newWordList:[String] = []
    var body: some View {
		List(newWordList, id: \.self) { word in
			Text(word)
		}
		Button("Add chips") {
			buttonAction()
		}
    }
	
	func buttonAction(){
		let randomWord = words.randomElement()!
		newWordList.append(randomWord)
	}
}

#Preview {
    ContentView()
}
