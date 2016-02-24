# ClassySizes
A demo app, demonstrating the use of size classes to change layout in code

Tab 1: labels print the vertical and horizontal size classes of the current device orientation
* these labels update when the view will be laid out, most notably when the device rotates
* at present, the only devices that will change size classes on rotation are the iPhone 6 Plus and 6S Plus

Tab 2: boxes rearrance based on the horizontal size class
* for device orientations with a compact horizontal size class, the boxes are shown stacked on top of one another
* for device orientations with a regular horizontal size class, the boxes are shown next to each other
* this updates on rotation when applicable (again, on the the iPhone 6 Plus and 6S Plus)
