//
//  GamesViewController.swift
//  GOW
//
//  Created by Developer on 08/03/24.
//

import UIKit

class GamesViewController: UIViewController {
    
    let gamePosters = Array(0...7)
    
    @IBOutlet weak var gamePosterImage: UIImageView!
    
    @IBOutlet weak var gamePosterPageControl: UIPageControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gamePosterPageControl.numberOfPages = gamePosters.count
        gamePosterImage.image = UIImage(named: "\(gamePosters.first!)")
//        gamePosterPageControl.setCurrentPageIndicatorImage(UIImage(named: "gow_logo"), forPage: gamePosterPageControl.currentPage)
        gamePosterPageControl.currentPageIndicatorTintColor = UIColor(named: "GOWRed")
    }
    
    
    @IBAction func leftSwipe(_ sender: UISwipeGestureRecognizer) {
        print("Left swipe")
        if gamePosterPageControl.currentPage == gamePosters.count-1  {
            gamePosterPageControl.currentPage = 0
            gamePosterImage.image = UIImage(named: String(gamePosters[gamePosterPageControl.currentPage]))
        }
        else{
            gamePosterPageControl.currentPage = gamePosterPageControl.currentPage + 1
            gamePosterImage.image = UIImage(named: String(gamePosters[gamePosterPageControl.currentPage]))
        }
        gamePosterPageControl.setCurrentPageIndicatorImage(
            UIImage(named: "gow_logo")?
                .preparingThumbnail(of: CGSize(width: 25, height: 25)),
            forPage: gamePosterPageControl.currentPage)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
