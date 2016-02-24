//
//  CSViewController.swift
//  ClassySizes
//
//  Created by Jeremy Petter on 2016-02-09.
//  Copyright © 2016 Jeremy Petter. All rights reserved.
//

import UIKit

class CSViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.view.addSubview(horizontalLabel)
        self.view.addSubview(verticalLabel)

        self.view.backgroundColor = UIColor.purpleColor()

        let margins = view.layoutMarginsGuide
        self.horizontalLabel.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
        self.horizontalLabel.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
        self.horizontalLabel.bottomAnchor.constraintEqualToAnchor(margins.centerYAnchor).active = true
        self.verticalLabel.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
        self.verticalLabel.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
        self.verticalLabel.topAnchor.constraintEqualToAnchor(horizontalLabel.bottomAnchor).active = true
    }

    override func viewWillLayoutSubviews()
    {
        super.viewWillLayoutSubviews()
        setTextFieldTextForSizeClass()
    }

    func setTextFieldTextForSizeClass()
    {
        self.horizontalLabel.text = "Horizontal size class: " + self.stringFrom(self.traitCollection.horizontalSizeClass)
        self.verticalLabel.text = "Vertical size class: " + self.stringFrom(self.traitCollection.verticalSizeClass)
    }

    func stringFrom(sizeClass:UIUserInterfaceSizeClass) -> String
    {
        switch(sizeClass) {
        case(UIUserInterfaceSizeClass.Compact):
            return "Compact"
        case(UIUserInterfaceSizeClass.Regular):
            return "Regular"
        default:
            return "Unspecified"
        }
    }

    lazy var horizontalLabel:UILabel = {

        var lazyLabel = UILabel()
        lazyLabel.translatesAutoresizingMaskIntoConstraints = false
        lazyLabel.textColor = UIColor.whiteColor()
        lazyLabel.textAlignment = .Center
        return lazyLabel
    }()

    lazy var verticalLabel:UILabel = {

        var lazyLabel = UILabel()
        lazyLabel.translatesAutoresizingMaskIntoConstraints = false
        lazyLabel.textColor = UIColor.whiteColor()
        lazyLabel.textAlignment = .Center
        return lazyLabel
    }()
}
