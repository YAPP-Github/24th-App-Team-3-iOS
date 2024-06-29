//
//  FeaturedViewController.swift
//  ShowPot
//
//  Created by Daegeon Choi on 5/25/24.
//

import UIKit

import FlexLayout
import PinLayout
import Then

final class FeaturedViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    private let containerView = UIView()
    
    private let label1 = UILabel().then {
        $0.textColor = .black
//        $0.text = "H0폰트 텍스트입니다."
        $0.font = KRFont.H0
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: -0.025, string: "H0폰트 텍스트입니다.")
    }
    
    private let label2 = UILabel().then {
        $0.textColor = .black
//        $0.text = "H1폰트 텍스트입니다."
        $0.font = KRFont.H1
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: -0.025, string: "H1폰트 텍스트입니다.")
    }
    
    private let label3 = UILabel().then {
        $0.textColor = .black
//        $0.text = "H2폰트 텍스트입니다."
        $0.font = KRFont.H2
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: -0.025, string: "H2폰트 텍스트입니다.")
    }
    
    private let label4 = UILabel().then {
        $0.textColor = .black
//        $0.text = "B1_regular폰트 텍스트입니다."
        $0.font = KRFont.B1_regular
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: -0.025, string: "B1_regular폰트 텍스트입니다.")
    }
    
    private let label5 = UILabel().then {
        $0.textColor = .black
//        $0.text = "B1_semibold폰트 텍스트입니다."
        $0.font = KRFont.B1_semibold
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: -0.025, string: "B1_semibold폰트 텍스트입니다.")
    }
    
    private let label111 = UILabel().then {
        $0.textColor = .black
//        $0.text = "This is H0 font"
        $0.font = ENFont.H0
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: 0, string: "This is H0 font")
    }
    
    private let label222 = UILabel().then {
        $0.textColor = .black
//        $0.text = "This is H1 font"
        $0.font = ENFont.H1
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: 0, string: "This is H1 font")
    }
    
    private let label333 = UILabel().then {
        $0.textColor = .black
//        $0.text = "This is H2 font"
        $0.font = ENFont.H2
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: 0, string: "This is H2 font")
    }
    
    private let label444 = UILabel().then {
        $0.textColor = .black
//        $0.text = "This is H3 font"
        $0.font = ENFont.H3
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: 0, string: "This is H3 font")
    }
    
    private let label555 = UILabel().then {
        $0.textColor = .black
//        $0.text = "This is H4 font"
        $0.font = ENFont.H4
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: 0, string: "This is H4 font")
    }
    
    private let label666 = UILabel().then {
        $0.textColor = .black
//        $0.text = "This is H5 font"
        $0.font = ENFont.H5
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: 0, string: "This is H5 font")
    }
    
    private let label6 = UILabel().then {
        $0.textColor = .black
//        $0.text = "B2_regular폰트 텍스트입니다."
        $0.font = KRFont.B2_regular
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: -0.025, string: "B2_regular폰트 텍스트입니다.")
    }
    
    private let label7 = UILabel().then {
        $0.textColor = .black
//        $0.text = "B2_semibold폰트 텍스트입니다."
        $0.font = KRFont.B2_semibold
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: -0.025, string: "B2_semibold폰트 텍스트입니다.")
    }
    
    private let label8 = UILabel().then {
        $0.textColor = .black
//        $0.text = "B3_regular폰트 텍스트입니다."
        $0.font = KRFont.B3_regular
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: -0.025, string: "B3_regular폰트 텍스트입니다.")
    }
    
    private let label9 = UILabel().then {
        $0.textColor = .black
//        $0.text = "B3_semibold폰트 텍스트입니다."
        $0.font = KRFont.B3_semibold
        $0.setLineHeightAndLetterSpacing(lineHeightMultiple: 1.5, letterSpacingPercent: -0.025, string: "B3_semibold폰트 텍스트입니다.")
    }
    
    private let colorView1 = UIView().then {
        $0.backgroundColor = UIColor(resource: .mainBlue)
    }
    
    private let colorView2 = UIView().then {
        $0.backgroundColor = UIColor(resource: .mainGreen)
    }
    
    private let colorView3 = UIView().then {
        $0.backgroundColor = UIColor(resource: .mainOrange)
    }
    
    private let colorView4 = UIView().then {
        $0.backgroundColor = UIColor(resource: .mainYellow)
    }
    
    private let colorView5 = UIView().then {
        $0.backgroundColor = UIColor(resource: .gray100)
    }
    
    private let colorView6 = UIView().then {
        $0.backgroundColor = UIColor(resource: .gray200)
    }
    
    private let colorView7 = UIView().then {
        $0.backgroundColor = UIColor(resource: .gray300)
    }
    
    private let colorView8 = UIView().then {
        $0.backgroundColor = UIColor(resource: .gray400)
    }
    
    private let colorView9 = UIView().then {
        $0.backgroundColor = UIColor(resource: .gray500)
    }
    
    private let colorView10 = UIView().then {
        $0.backgroundColor = UIColor(resource: .gray600)
    }
    
    private let colorView11 = UIView().then {
        $0.backgroundColor = UIColor(resource: .gray700)
    }
    
    private let colorView12 = UIView().then {
        $0.backgroundColor = UIColor(resource: .gray800)
    }
    
    private let colorView13 = UIView().then {
        $0.backgroundColor = UIColor(resource: .error)
    }
    private let imageView1 = UIImageView().then {
        $0.image = UIImage(resource: .icAlarm24Cancel)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView2 = UIImageView().then {
        $0.image = UIImage(resource: .icAlarm24Defalut)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView3 = UIImageView().then {
        $0.image = UIImage(resource: .icAlarm24Plus)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView4 = UIImageView().then {
        $0.image = UIImage(resource: .icAlarmCancel36)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView5 = UIImageView().then {
        $0.image = UIImage(resource: .icAlarmPlus36)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView6 = UIImageView().then {
        $0.image = UIImage(resource: .icArrow16Right)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView7 = UIImageView().then {
        $0.image = UIImage(resource: .icArrow24Down)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView8 = UIImageView().then {
        $0.image = UIImage(resource: .icArrow24Left)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView9 = UIImageView().then {
        $0.image = UIImage(resource: .icArrow24Right)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView10 = UIImageView().then {
        $0.image = UIImage(resource: .icArrow24Up)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView11 = UIImageView().then {
        $0.image = UIImage(resource: .icArrow36Down)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView12 = UIImageView().then {
        $0.image = UIImage(resource: .icArrow36Left)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView13 = UIImageView().then {
        $0.image = UIImage(resource: .icArrow36Right)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView14 = UIImageView().then {
        $0.image = UIImage(resource: .icArrow36Up)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView15 = UIImageView().then {
        $0.image = UIImage(resource: .icCancel36)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView16 = UIImageView().then {
        $0.image = UIImage(resource: .icCheck24)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView17 = UIImageView().then {
        $0.image = UIImage(resource: .icCheck36)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView18 = UIImageView().then {
        $0.image = UIImage(resource: .icCheck48)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView19 = UIImageView().then {
        $0.image = UIImage(resource: .icDelete24)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView20 = UIImageView().then {
        $0.image = UIImage(resource: .icDelete36)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView21 = UIImageView().then {
        $0.image = UIImage(resource: .icDelete48)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView22 = UIImageView().then {
        $0.image = UIImage(resource: .icEdit24)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView23 = UIImageView().then {
        $0.image = UIImage(resource: .icFilter36)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView24 = UIImageView().then {
        $0.image = UIImage(resource: .icHeart24)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView25 = UIImageView().then {
        $0.image = UIImage(resource: .icHeart36Off)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView26 = UIImageView().then {
        $0.image = UIImage(resource: .icHeart36On)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView27 = UIImageView().then {
        $0.image = UIImage(resource: .icMagnifier24)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView28 = UIImageView().then {
        $0.image = UIImage(resource: .icMagnifier36)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView29 = UIImageView().then {
        $0.image = UIImage(resource: .icPlus24)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView30 = UIImageView().then {
        $0.image = UIImage(resource: .icPlus36)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView31 = UIImageView().then {
        $0.image = UIImage(resource: .icProfile24)
        $0.contentMode = .scaleAspectFit
    }
    private let imageView32 = UIImageView().then {
        $0.image = UIImage(resource: .icSetting36)
        $0.contentMode = .scaleAspectFit
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.pin.all()
        containerView.pin.top().horizontally()
        containerView.flex.layout(mode: .adjustHeight)
        scrollView.contentSize = containerView.frame.size
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(scrollView)
        scrollView.addSubview(containerView)
        containerView.flex.define {
            
            
            $0.addItem(label1)
            $0.addItem(label2)
            $0.addItem(label3)
            $0.addItem(label4)
            $0.addItem(label5)
            $0.addItem(label6)
            $0.addItem(label7)
            $0.addItem(label8)
            $0.addItem(label9)
            $0.addItem(label111)
            $0.addItem(label222)
            $0.addItem(label333)
            $0.addItem(label444)
            $0.addItem(label555)
            $0.addItem(label666)
            
            $0.addItem().direction(.row).wrap(.wrap).define {
                $0.addItem(colorView1).size(.init(width: 80, height: 80))
                $0.addItem(colorView2).size(.init(width: 80, height: 80))
                $0.addItem(colorView3).size(.init(width: 80, height: 80))
                $0.addItem(colorView4).size(.init(width: 80, height: 80))
                $0.addItem(colorView5).size(.init(width: 80, height: 80))
                $0.addItem(colorView6).size(.init(width: 80, height: 80))
                $0.addItem(colorView7).size(.init(width: 80, height: 80))
                $0.addItem(colorView8).size(.init(width: 80, height: 80))
                $0.addItem(colorView9).size(.init(width: 80, height: 80))
                $0.addItem(colorView10).size(.init(width: 80, height: 80))
                $0.addItem(colorView11).size(.init(width: 80, height: 80))
                $0.addItem(colorView12).size(.init(width: 80, height: 80))
                $0.addItem(colorView13).size(.init(width: 80, height: 80))
            }
            
            $0.addItem().direction(.row).wrap(.wrap).define {
                $0.addItem(imageView1)
                $0.addItem(imageView2)
                $0.addItem(imageView3)
                $0.addItem(imageView4)
                $0.addItem(imageView5)
                $0.addItem(imageView6)
                $0.addItem(imageView7)
                $0.addItem(imageView8)
                $0.addItem(imageView9)
                $0.addItem(imageView10)
                $0.addItem(imageView11)
                $0.addItem(imageView12)
                $0.addItem(imageView13)
                $0.addItem(imageView14)
                $0.addItem(imageView15)
                $0.addItem(imageView16)
                $0.addItem(imageView17)
                $0.addItem(imageView18)
                $0.addItem(imageView19)
                $0.addItem(imageView20)
                $0.addItem(imageView21)
                $0.addItem(imageView22)
                $0.addItem(imageView23)
                $0.addItem(imageView24)
                $0.addItem(imageView25)
                $0.addItem(imageView26)
                $0.addItem(imageView27)
                $0.addItem(imageView28)
                $0.addItem(imageView29)
                $0.addItem(imageView30)
                $0.addItem(imageView31)
                $0.addItem(imageView32)
            }
            
            
        }
    }
    
}

extension UILabel {
  
    func setLineHeightAndLetterSpacing(lineHeightMultiple: CGFloat, letterSpacingPercent: CGFloat, string: String) {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = lineHeightMultiple

        // Calculate the actual letter spacing from the percentage
        let letterSpacing = letterSpacingPercent * UIFont.systemFont(ofSize: self.font.pointSize).pointSize
        
        let attributedString = NSAttributedString(
          string: string,
          attributes: [
            .paragraphStyle: paragraphStyle,
            .kern: letterSpacing
          ]
        )
        
        self.attributedText = attributedString
      }
}
