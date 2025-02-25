# Score Card SwiftUI Demo

This is a demo app to show `redraw` performance improvements in SwiftUI.

You can select one of the four different versions from the main screen. You should compile the app and under the `Product` menu choose `Profile` to launch instruments and get the app ready for running / testing with instruments. Choose the new `SwiftUI` instrument. Once recording, use the `View Body` track to show you how many SwiftUI view bodies are draw each time you click on a button, or enter text for the game name. 

The `Nieve` scene has no optimisations, and generated over 6000 view draws with just a few button clicks.
The `Better` scene improves on this,
and the `More better` scene tries to improve on that,
the `Best` scene gets to the point where when you press one of the buttons to increment the score, it only redraws that button, and the total at the bottom of the screen.
