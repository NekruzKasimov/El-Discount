//
//  Constants.swift
//  elDiscount
//
//  Created by ZYFAR on 04.12.17.
//  Copyright © 2017 NeoBis. All rights reserved.
//

import UIKit

struct Constants {
	struct StorageKey {
		static let login = "ED_userLogin"
		static let password = "ED_userPassword"
	}
	
	struct Network {
		struct ErrorMessage {
			static let NO_INTERNET_CONNECTION = "No internet connection"
			static let UNABLE_LOAD_DATA = "Unable load data"
			static let NO_HTTP_STATUS_CODE = "Unable to get response HTTP status code"
			static let UNAUTHORIZED = "Unauthorized error"
		}
		
		struct EndPoints {
			static let Login = "login"
		}
	}
	
}

struct Storyboard {
	struct Login {
		static let itself : UIStoryboard =
			UIStoryboard(name: "Login", bundle: nil)
		
		static let loginVC : LoginViewController = Storyboard.Login.itself
			.instantiateViewController(withIdentifier:
				"LoginViewController") as! LoginViewController
		
		static let signupVC : SignupViewController = Storyboard.Login.itself
			.instantiateViewController(withIdentifier:
				"SignupViewController") as! SignupViewController
		
	}
	struct Main {
		static let itself : UIStoryboard =
			UIStoryboard(name: "Main", bundle: nil)
		static let mainVC : MainViewController = Storyboard.Main.itself
			.instantiateViewController(withIdentifier:
				"MainViewController") as! MainViewController
	}
}


//struct Colors {
//
//    static let blue = UIColor(red: 121/255, green: 153/255, blue: 255/255, alpha: 1)
//    static let green = UIColor(red: 35/255, green: 222/255, blue: 160/255, alpha: 1)
//}

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
