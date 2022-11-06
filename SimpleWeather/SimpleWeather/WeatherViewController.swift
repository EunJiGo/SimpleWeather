//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by 고은지 on 2022/11/06.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var cityLable: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var temperatureLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    let cities = ["Seoul", "Tokyo", "LA", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
    @IBAction func changButtonTapped(_ sender: Any) {
        cityLable.text = cities.randomElement()!
        
        let imageName = weathers.randomElement()!
        weatherImageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let ramdomTemp = Int.random(in: 10..<30)
        temperatureLable.text = "\(ramdomTemp)"
        print("도시, 돈도, 날씨 이미지 변경")
    }
    


}
