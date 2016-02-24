//
//  CSLayoutViewController.swift
//  ClassySizes
//
//  Created by Jeremy Petter on 2016-02-24.
//  Copyright © 2016 Jeremy Petter. All rights reserved.
//

import UIKit

class CSLayoutViewController: UIViewController
{
    var compactConstraints:[NSLayoutConstraint]?
    var regularConstraints:[NSLayoutConstraint]?

    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.view.addSubview(redBox)
        self.view.addSubview(blueBox)

        self.view.backgroundColor = UIColor.whiteColor()

        let margins = self.view.layoutMarginsGuide

        self.redBox.heightAnchor.constraintEqualToConstant(100.0).active = true
        self.redBox.widthAnchor.constraintEqualToConstant(100.0).active = true
        self.blueBox.heightAnchor.constraintEqualToConstant(100.0).active = true
        self.blueBox.widthAnchor.constraintEqualToConstant(100.0).active = true

        self.compactConstraints = [
            self.redBox.centerXAnchor.constraintEqualToAnchor(margins.centerXAnchor),
            self.blueBox.centerXAnchor.constraintEqualToAnchor(margins.centerXAnchor),
            self.redBox.topAnchor.constraintEqualToAnchor(margins.centerYAnchor),
            self.blueBox.bottomAnchor.constraintEqualToAnchor(margins.centerYAnchor),
        ]

        self.regularConstraints = [
            self.redBox.centerYAnchor.constraintEqualToAnchor(margins.centerYAnchor),
            self.blueBox.centerYAnchor.constraintEqualToAnchor(margins.centerYAnchor),
            self.redBox.leadingAnchor.constraintEqualToAnchor(margins.centerXAnchor),
            self.blueBox.trailingAnchor.constraintEqualToAnchor(margins.centerXAnchor),
        ]
    }

    override func viewWillLayoutSubviews()
    {
        super.viewWillLayoutSubviews()
        setConstraintsForSizeClass()
    }

    func setConstraintsForSizeClass()
    {
        if (self.traitCollection.horizontalSizeClass == UIUserInterfaceSizeClass.Compact)
        {
            for constraint in self.regularConstraints!
            {
                constraint.active = false
            }
            for constriant in self.compactConstraints!
            {
                constriant.active = true
            }
        }
        else
        {
            for constraint in self.compactConstraints!
            {
                constraint.active = false
            }
            for constriant in self.regularConstraints!
            {
                constriant.active = true
            }
        }
    }

    lazy var redBox:UIView = {

        var lazyView = UIView()
        lazyView.translatesAutoresizingMaskIntoConstraints = false
        lazyView.backgroundColor = UIColor.redColor()
        return lazyView
    }()

    lazy var blueBox:UIView = {

        var lazyView = UIView()
        lazyView.translatesAutoresizingMaskIntoConstraints = false
        lazyView.backgroundColor = UIColor.blueColor()
        return lazyView
    }()
}
