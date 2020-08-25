# iOS13
* New functionality in iOS 13 like way of Presenting Controller and dismiss. Light mode and Dark mode
* Change the background color and title color for normal and selected segement control
* Use the symbol of SFSymbol Configuration
* Change the color of Navigation Configuration using NavigationBarAppearance.

# Preview
<img src = "http://hyperlocalnews.s3.amazonaws.com/uploads/202008/1598341800.png">

# Requirements
* iOS 13.0+
* Swift 5.0

# Static mode
If you have to set static mode then on SceneDelegate Class put this below code under "willConnectTo" method
 
*window?.overrideUserInterfaceStyle = .light*

else commit this line if you want to check in dynamic mode
