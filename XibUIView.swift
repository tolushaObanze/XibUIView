//
//  XibUIView.swift
// 
//
//  Created by Anatoly Esaulov on 16.09.16.
//  Copyright © 2016 Obanze Dev. All rights reserved.
//

import UIKit

class XibUIView : UIView {
    
    var contentView : UIView!
    
     private func loadContentView(_ xibId: String) -> UIView! {
        
        if let nib = Bundle.main.loadNibNamed(xibId, owner: self, options: nil) {
            if let view = nib[0] as? UIView {
                return view
            }
            fatalError("Can't load xib with provided name")
        }
        return nil
    }
    
    init?(coder aDecoder: NSCoder, xibIdentifier: String) {
        super.init(coder: aDecoder)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentView = loadContentView(xibIdentifier)
        self.addSubview(self.contentView!)
        
       setupContentViewConstraints()
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("Subclasses must use following initializer: init?(coder: NSCoder, xibIdentifier: String)")
    }

     private func setupContentViewConstraints() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
