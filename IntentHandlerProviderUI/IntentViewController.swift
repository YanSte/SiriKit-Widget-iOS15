//
//  IntentViewController.swift
//  IntentHandlerProviderUI
//
//  Created by Yannick Stephan on 04/10/2021.
//

import IntentsUI

// As an example, this extension's Info.plist has been configured to handle interactions for INSendMessageIntent.
// You will want to replace this or add other intents as appropriate.
// The intents whose interactions you wish to handle must be declared in the extension's Info.plist.

// You can test this example integration by saying things to Siri like:
// "Send a message using <myApp>"

class IntentViewController: UIViewController, INUIHostedViewControlling {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    // MARK: - INUIHostedViewControlling
    
    // Prepare your view controller for the interaction to handle.
    func configureView(for parameters: Set<INParameter>, of interaction: INInteraction, interactiveBehavior: INUIInteractiveBehavior, context: INUIHostedViewContext, completion: @escaping (Bool, Set<INParameter>, CGSize) -> Void) {
        
//        switch (interaction.intentResponse, interaction.intentResponse?.userActivity) {
//        case (let response as GoToFavoriteIntentResponse, .some(let userActivity)) where response.code == .success:
//            let viewController = NavigationMapBoxViewController.instantiate(on: .mainInterface)
//            attachChild(viewController)
//            viewController.restoreUserActivityState(userActivity)
//            completion(true, parameters, desiredSize)
//            
//        default:
//            completion(false, parameters, desiredSize)
//        }
//        
        // Do configuration here, including preparing views and calculating a desired size for presentation.
        completion(true, parameters, self.desiredSize)
    }
    
    var desiredSize: CGSize {
        return self.extensionContext!.hostedViewMaximumAllowedSize
    }
    
    // MARK: Private methods
    
    private func attachChild(_ viewController: UIViewController) {
        guard let subview = viewController.view else {
            return
        }
        addChild(viewController)
        view.addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
        subview.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        subview.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        subview.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        subview.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        viewController.didMove(toParent: self)
    }
    
}
