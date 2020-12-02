# Wonders of the Nature Swift

This is a swift test project demonstrating how to use UIKit programmaticly to create tableView stack navigation. This uses `UITableView` as a `UINavigationController` to render navigation menu. By pressing `UITableViewCell` the application will push on top of the view another view where are the details.

![Animation of the image sliding on select on iPhone 11](wonders.gif)



## Highlights


### This uses UIKit in code but it makes use of SwiftUI's preview

Using SwiftUI Preview project can be edited while it's been rendered on the fly in the preview panel. This is much quicker than openin up simulator constantly. Especially when trying to align UI elements and defining autolayout constraints.

```swift
import SwiftUI
struct MainPreview: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        func makeUIViewController(context: Context) -> some UIViewController {
            let navController = UINavigationController(rootViewController: MainController())
            navController.navigationBar.prefersLargeTitles = true
            return navController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
```
