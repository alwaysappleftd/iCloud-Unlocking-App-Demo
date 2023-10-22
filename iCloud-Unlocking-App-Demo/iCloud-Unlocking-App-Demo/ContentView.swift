// Import the required dependencies

import SwiftUI
import Foundation
import AppKit

// To adjust the GUI window size, look in the iCloud_Unlocking_App_DemoApp file


// Specify the ContentView

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 20) {
            
            // App Title
            Text("Welcome to iCloud Unlocking App Demo")
                .font(.largeTitle)
                .padding(.top)
            
            Spacer()
            
            // Buttons
            Button {
                // Action for "Search for Device"
                // Print a message
                print("Search for Device button pressed")
            } label: {
                Text("Search for Device")
                    // Set the width of the buttons (You can adjust this to fit your needs)
                    .frame(minWidth: 0, maxWidth: 250, minHeight: 0, maxHeight: 200)
                    //.font(.largeTitle)
            }
            
            Button {
                // Action for "Generate Activation Files"
                // Print a message
                print("Generate Activation Files button pressed")
            } label: {
                Text("Generate Activation Files")
                    // Set the width of the buttons (You can adjust this to fit your needs)
                    .frame(minWidth: 0, maxWidth: 250, minHeight: 0, maxHeight: 200)
            }
            
            Button {
                // The function to run when the current button is pressed
                runShellScript()
            } label: {
                Text("Bypass Device!")
                    // Set the width of the buttons (You can adjust this to fit your needs)
                    .frame(minWidth: 0, maxWidth: 250, minHeight: 0, maxHeight: 200)
            }
            
            Spacer()
            
            // App version text
            Text("App Version 1.0")
                .font(.footnote)
                .padding(.bottom)
            
        }
    }
    
    // The function that allows running the shell script in the apps' Resources folder
    func runShellScript() {
        // Make an Alert pop-up
        let alert = NSAlert()
        alert.messageText = "Info"
        alert.informativeText = "Run command? This will run a demo shell script."
        alert.addButton(withTitle: "OK")
        alert.addButton(withTitle: "Cancel")
        
        let response = alert.runModal()
        // If the 'OK' button was pressed, then execute the 'test.sh' script
        if response == .alertFirstButtonReturn {
            guard let resourcePath = Bundle.main.resourcePath else {
                print("Failed to find the main bundle's resource path")
                return
            }
            
            let scriptPath = "\(resourcePath)/test.sh"
            
            let process = Process()
            process.executableURL = URL(fileURLWithPath: "/bin/sh")
            process.arguments = [scriptPath]
            
            do {
                try process.run()
                process.waitUntilExit()
            } catch {
                // If failed, then print the error
                print("Failed to run script: \(error)")
            }
        }
    }
}

// An optional struct for the Button Style
struct RoundedRectangleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
