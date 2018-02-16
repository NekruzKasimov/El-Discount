//
//  Constants.swift
//  elDiscount
//
//  Created by ZYFAR on 04.12.17.
//  Copyright © 2017 NeoBis. All rights reserved.
//

import UIKit
struct Constants {
	
	struct Storyboard {
		static let main = UIStoryboard(name: "Main", bundle: nil)
		static let login = UIStoryboard(name: "Login", bundle: nil)
	}
	
	struct ControllerID {
		static let mainVC = "MainViewController"
	}
	
}


struct Colors {
    
    static let blue = UIColor(red: 121/255, green: 153/255, blue: 255/255, alpha: 1)
    static let green = UIColor(red: 35/255, green: 222/255, blue: 160/255, alpha: 1)
}

struct AppStyle {
	
	struct Font {
		static var regular: UIFont = {
			return  UIFont(name: "GillSans", size: 14) ?? UIFont.systemFont(ofSize: 14)
		}()
		static var bold: UIFont = {
			return  UIFont(name: "GillSans-Bold", size: 14) ?? UIFont.systemFont(ofSize: 14)
		}()
	}
	
	struct Color {
		static let blue = UIColor(red: 121/255, green: 153/255, blue: 255/255, alpha: 1)
		static let green = UIColor(red: 35/255, green: 222/255, blue: 160/255, alpha: 1)
	}
}
