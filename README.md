# Assignment2-CS193P
Programming assignment 2 of the Stanford University CS193P course

# Source
https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/Assignment%202.pdf

# Short Description
The app is a memory game, the purpose of which is to find two cards with same emojis. Your score is kept by penalizing min(10 - (number of seconds since last card was chosen),1) point for every previously seen card that is
involved in a mismatch and giving 2*max(10 - (number of seconds since last card was chosen),1) points for every match (whether or not the cards involved have been “previously seen”).

Also the app supports 6 themes. Each theme has its own emoji set, color and number of card's pairs (by default the number of pairs is equal to a size of the emoji set). The theme is randomly changed by pressing the button.

The app is build with MVVM architecture pattern using SwiftUI framework.

