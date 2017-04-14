//
//  ViewController.swift
//  ios-filter-demo
//
//  Created by Eiji Kushida on 2017/04/14.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet fileprivate weak var viewImage: UIImageView!

    fileprivate var filteredImage: CIImage!
    fileprivate var filter: CIFilter!
    fileprivate var ciContext: CIContext!

    override func viewDidLoad() {
        super.viewDidLoad()

        filteredImage = CIImage(image: self.viewImage.image!)
        ciContext = CIContext(options: nil)
    }

    @IBAction func didTapFilter(_ sender: UIButton) {

        let vc = UIStoryboard
            .viewController(storyboardName: "Main",
                            identifier: "FilterListViewController") as! FilterListViewController
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }
}

// MARK: - FilterDelegate
extension ViewController: FilterDelegate {

    func selected(name: String) {
        updateFilter(name: name)
    }

    private func updateFilter(name: String) {

        if let filter = CIFilter(name: name) {

            filter.setValue(filteredImage, forKey: "inputImage")

            if let filterOutputImage = filter.outputImage {

                if let imageRef = ciContext
                    .createCGImage(filterOutputImage,
                                   from: filterOutputImage.extent) {

                    let outputImage2 = UIImage(cgImage: imageRef)
                    viewImage.image = outputImage2
                }
            }
        }
    }
}
