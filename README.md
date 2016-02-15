## Carousel App
#### Create by Ashkhen Sargsyan
##### Approximate Time Spent: **15 hours**

##Completed stories
Implemented flow for Carousel App from signed out to signed in state.

- Static photo tiles on the initial screen
	- Optional: Photo tiles move with scrolling
- Sign In
	- Tapping on email/password reveals the keyboard and shifts the scrollview and Sign In button up.
	- Upon tapping the Sign In button.
		- If the username or password fields are empty, user sees an error alert.
		- If credentials are incorrect, user sees a loading indicator for 2 seconds followed by an error alert.
		- If the credentials are correct, user sees a loading indicator for 2 seconds followed by a transition to the Sign In screens.
		- Optional: When the keyboard is visible, if the user pulls down on the scrollview, it will dismiss the keyboard.
		- Optional: On appear, scale the form up and fade it in.
- Optional: Create a Dropbox
	- Optional: Tapping in the form reveals the keyboard and shifts the scrollview and "Create a Dropbox" button up.
	- Optional: Tapping the Agree to Terms checkbox selects the checkbox.
	- Optional: Tapping on Terms shows a webview with the terms.
	- Optional: User is taken to the tutorial screens upon tapping the "Create a Dropbox" button.
	
- Tutorial Screens
		- User can page between the screens
		- Optional: User can page between the screens with updated dots
		- Optional: Upon reaching the 4th page, hide the dots and show the "Take Carousel for a Spin" button.

- Image Timeline
	- Display a scrollable view of images.
	- User can tap on the conversations button to see the conversations screen (push).
	- User can tap on the profile image to see the settings view (modal from below).
	- Conversations
		- 	User can dismiss the conversations screen
	- Settings
		- User can dismiss the settings screen.
		- User can log out
- Optional: Learn more about Carousel
	- Optional: Show the "Learn more about Carousel" button in the photo timeline.
	- Optional: Tap the X to dismiss the banner

![ScreenShot](https://github.com/Ashkhen/Carousel/raw/master/CarouselWalkthrough.gif)

## License

The MIT License (MIT)
Copyright (c) 2016 Ashkhen Sargysan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
