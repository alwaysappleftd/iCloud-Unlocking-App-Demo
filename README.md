# iCloud-Unlocking-App-Demo
This is a basic Xcode project that simulates the interface of an iCloud unlocking GUI. You can modify it for your needs. This is best for beginners trying to learn Swift or just for reference. 

This basic GUI does not provide any sort of iCloud bypassing functions. 
It has three buttons, which can be modified, duplicated and the action can be edited.
It has a main title at the top, which can also be changed easily for your app name.
At the bottom, the app has some text for the version, which again can be easily edited.

For the backend, the app has code to run a shell script or executable in the apps' main Resources folder, and a pop-up message alert.

You can add the 'test.sh' script in this repository or your own scripts into the main Resources folder by (a) Right-clicking on the folder icon with your project name, below the app store icon with your project name, in the files editor to the left. If the files editor on the left is displaying something different, then select the first icon in the horizontal row of icons by the red "Close" and "Minimize" icons etc. The first icon will look like a folder, and the next one will be a square with an X through it, the third one will look like a very tiny bar at the top with two poles coming down on both sides. The first folder icon is the icon to click on. (b) Next, after step (a), select Add files to "iCloud-Unlocking-App-Demo". And finally, (c) Select a shell script from the file select dialog box. This should probably be the 'test.sh' script in this repository to start with. 

The pop-up message alert displays some simple text that says "Run command? This will run a demo shell script.". When the user clicks OK, then it runs a test shell script in the app's main Resources folder.

I would recommend creating a new Xcode project instead of working off this existing project. This will help you change the name of the app to your preferred name, and then you can paste the code from the ContentView into the new app's ContentView. You will also need to add the ".frame(minWidth: 350, minHeight: 350)" to the new project's YOUR_PROJECT_NAME.swift

You would paste this right below the part where it says "ContentView()".
The new YOUR_PROJECT_NAME.swift file should look somewhat like this: 

```
//  Created by You on [The Date].
//

import SwiftUI

@main
struct YOUR_PROJECT_NAME: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(minWidth: 350, minHeight: 350) // <- App Window Size here
        }
    }
}
```


I hope this helps you understand the structure and UI for an iCloud unlocking app in Swift!
