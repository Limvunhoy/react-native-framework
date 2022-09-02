import UIKit
import React
import react_native_splash_screen
import ReactNativeNavigation

public class WelcomeViewController: UIViewController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        let bridge = RCTBridge(delegate: self, launchOptions: [:])
//        self.view = RCTRootView(bridge: bridge!, moduleName: "MyReactNativePod", initialProperties: [:])
        ReactNativeNavigation.bootstrap(with: bridge!)
        RNSplashScreen.show()
    }
    
}

extension WelcomeViewController: RCTBridgeDelegate {
    
    public func sourceURL(for bridge: RCTBridge!) -> URL! {
        let bundle = Bundle(for: WelcomeViewController.self)
        return bundle.url(forResource: "MyReactNativePod", withExtension: "js")
    }
    
}
