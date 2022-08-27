//
//  BaseHostingViewController.swift
//  Cinder
//
//  Created by TriBQ on 27/08/2022.
//

import Foundation
import SwiftUI

public class BaseHostingViewController<Content>: UIHostingController<AnyView> where Content: View {
    public init(shouldShowNavigationBar: Bool = false,
                rootView: Content) {
        super.init(rootView: AnyView(rootView
            .navigationBarHidden(!shouldShowNavigationBar)))
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
}
