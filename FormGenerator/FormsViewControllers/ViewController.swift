//
//  ViewController.swift
//  FormGenerator
//
//  Created by Akshay on 17/08/22.
//

import UIKit

class ViewController: UIViewController{
    
    var advertisingElementNumber = 1
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .clear
        return scrollView
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        stackView.backgroundColor = .clear
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    var titleLabel: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ARAL / BP Visual SIGNAGE INSPECTION PROGRAM 2022"
        label.font = UIFont(name: FontName.medium.rawValue, size: 24.0)
        label.textColor = Utility.shared.darkGrey96
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }
    
    var subtitleLabel: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Visuelle Inspektionen der Werbeelemente von Tankstellen in Deutschland"
        label.font = UIFont(name: FontName.medium.rawValue, size: 18.0)
        label.textColor = Utility.shared.darkGrey128
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }
    
    
    var field1: AnimatedField = {
        let usernameAnimatedField = AnimatedField()
        usernameAnimatedField.translatesAutoresizingMaskIntoConstraints = false
        usernameAnimatedField.placeholder = FormSectionOne.title1
        usernameAnimatedField.lowercased = true
        usernameAnimatedField.type = .username(4, 10)
        usernameAnimatedField.tag = 1
        usernameAnimatedField.backgroundColor = .clear
        usernameAnimatedField.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
        return usernameAnimatedField
    }()
    
    var subtitleForfield1: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = FormSectionOne.subtitle1
        label.font = UIFont(name: FontName.medium.rawValue, size: 14.0)
        label.textColor = Utility.shared.darkGrey96
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }
    
    
    var field2: AnimatedField = {
        let usernameAnimatedField = AnimatedField()
        usernameAnimatedField.translatesAutoresizingMaskIntoConstraints = false
        usernameAnimatedField.placeholder = FormSectionOne.title2
        usernameAnimatedField.lowercased = true
        usernameAnimatedField.type = .username(4, 10)
        usernameAnimatedField.tag = 2
        usernameAnimatedField.backgroundColor = .clear
        usernameAnimatedField.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
        return usernameAnimatedField
    }()
    
    var subtitleForfield2: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = FormSectionOne.subtitle2
        label.font = UIFont(name: FontName.medium.rawValue, size: 14.0)
        label.textColor = Utility.shared.darkGrey96
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }
    
    var field3: AnimatedField = {
        let usernameAnimatedField = AnimatedField()
        usernameAnimatedField.translatesAutoresizingMaskIntoConstraints = false
        usernameAnimatedField.placeholder = FormSectionOne.title3
        usernameAnimatedField.lowercased = true
        usernameAnimatedField.type = .username(4, 10)
        usernameAnimatedField.tag = 3
        usernameAnimatedField.backgroundColor = .clear
        usernameAnimatedField.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
        return usernameAnimatedField
    }()
    
    var subtitleForfield3: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = FormSectionOne.subtitle3
        label.font = UIFont(name: FontName.medium.rawValue, size: 14.0)
        label.textColor = Utility.shared.darkGrey96
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }
    var field4: AnimatedField = {
        let usernameAnimatedField = AnimatedField()
        usernameAnimatedField.translatesAutoresizingMaskIntoConstraints = false
        usernameAnimatedField.placeholder = FormSectionOne.title4
        usernameAnimatedField.lowercased = true
        usernameAnimatedField.type = .stringpicker(["Kontur PKW-Dach", "Kontur PKW-Dach", "Kontur Shop", "Kontur Waschhalle", "Kontur Superbox", "Aktivitätentransparent 4/4","Aktivitätentransparent 3/4","MID","Einfahrtspfeil","Hinweistransparent","Aral-Diamantmast","Preistransparent auf 2-Stützen","Ultimate Schwert","RTG Schrift Tower","RTG Schrift Eingang","Plakatvitrine auf 2-Stützen","Plakatvitrine Wandmodel","Truckpylon","Servicepylon","LUWA-Pylon","Fernkennzeichnung","Spreader ü. Zapfsäulen","RTG Schrift Tower","RTG Schrift Eingang","ARAL Diamant Eingang","ARAL Diamant Shop","Petit Bistro Eingang","Eingangselement (Box)","Konturtransparent 3600","Konturtransparent 3000","Konturtransparent 1300","Konturtransparent 600","Fahnenmast","Mastleuchte","Entgasungsmaste","Leiterhalter Dachaufgang","Tankfeldbeleuchtung","Nachtschalter Transparent","Sonstiges Werbeelement","Lichtband","Lichtkuppel quadratisch","Awning","Dach-&quot;Mütze&quot", "Kamera"],"select number")
        usernameAnimatedField.tag = 4
        usernameAnimatedField.backgroundColor = .clear
        usernameAnimatedField.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
        return usernameAnimatedField
    }()
    
    var subtitleForfield4: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = FormSectionOne.subtitle4
        label.font = UIFont(name: FontName.medium.rawValue, size: 14.0)
        label.textColor = Utility.shared.darkGrey96
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }
    
    var title5: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = FormSectionOne.title5
        label.font = UIFont(name: FontName.medium.rawValue, size: 14.0)
        label.textColor = Utility.shared.darkGrey96
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }
    
    var stepper: DSFStepperView {
        let stepperView = DSFStepperView(frame: .zero)
        stepperView.minimum = 1.0
        stepperView.maximum = 15.0
        stepperView.allowsEmpty = true
        stepperView.delegate = self
        stepperView.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
        return stepperView
    }
    
    var subtitleForfieldStepper: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = FormSectionOne.subtitle4
        label.font = UIFont(name: FontName.medium.rawValue, size: 14.0)
        label.textColor = Utility.shared.darkGrey96
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }
    
    var field5: AnimatedField = {
        let selectDate = AnimatedField()
        selectDate.placeholder = FormSectionOne.title6
        let defaultDate = Date()
        let minDate = Date().addingTimeInterval(-90 * 365 * 24 * 60 * 60)
        let maxDate = Date().addingTimeInterval(-13 * 365 * 24 * 60 * 60)
        let chooseText = "Choose"
        let dateFormat = "dd / MM / yyyy"
        selectDate.type = .datepicker(.dateAndTime, defaultDate, minDate, maxDate, chooseText, dateFormat)
        selectDate.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
        selectDate.tag = 6
        return selectDate
    }()
    
    var subtitleForfieldDate: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = FormSectionOne.subtitle6
        label.font = UIFont(name: FontName.medium.rawValue, size: 14.0)
        label.textColor = Utility.shared.darkGrey96
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var continueButton: UIButton = {
        let continueButton = UIButton()
        continueButton.layer.cornerRadius = 5
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        continueButton.backgroundColor = Utility.shared.navyBlue
        continueButton.titleLabel?.font = UIFont(name: FontName.medium.rawValue, size: 14.0)
        continueButton.setTitle("Continue", for: .normal)
        continueButton.titleLabel?.textColor = .white
        continueButton.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
        continueButton.addTarget(self, action: #selector(continueClicked), for: .touchUpInside)
        return continueButton
    }()
    
    var field1_value = ""
    var field2_value = ""
    var field3_value = ""
    var field4_value = ""
    var field5_value = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = Utility.shared.navyBlue
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        self.title = "Form"
        hideKeyboardWhenTap()
        Utility.shared.addGradientToView(view: self.view)
        [field1,field2,field3,field4,field5].forEach { (field) in
            field.format = getFormat()
            field.dataSource = self
            field.delegate = self
        }
        setupViews()
        setupLayout()
        checkIfAllFieldsAreFilled()
    }
   
    private func setupViews() {
        scrollView.backgroundColor = .clear
        view.addSubview(scrollView)
        view.addSubview(continueButton)
        
        scrollView.addSubview(contentView)
        
        contentView.addSubview(stackView)
        
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(subtitleLabel)
        addSpacingOf(height: 10.0)
        stackView.addArrangedSubview(field1)
        stackView.addArrangedSubview(subtitleForfield1)
        addSpacingOf(height: 10.0)
        stackView.addArrangedSubview(field2)
        stackView.addArrangedSubview(subtitleForfield2)
        addSpacingOf(height: 10.0)
        stackView.addArrangedSubview(field3)
        stackView.addArrangedSubview(subtitleForfield3)
        addSpacingOf(height: 10.0)
        stackView.addArrangedSubview(field4)
        stackView.addArrangedSubview(subtitleForfield4)
        addSpacingOf(height: 10.0)
        stackView.addArrangedSubview(title5)
        stackView.addArrangedSubview(stepper)
        stackView.addArrangedSubview(subtitleForfieldStepper)
        addSpacingOf(height: 10.0)
        stackView.addArrangedSubview(field5)
        stackView.addArrangedSubview(subtitleForfieldDate)
    }
    
    private func setupLayout() {
        
        continueButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        continueButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        continueButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: continueButton.topAnchor, constant: -10.0).isActive = true
        
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        
        stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    
    func getFormat() -> AnimatedFieldFormat {
        var format = AnimatedFieldFormat()
        format.titleFont = UIFont(name: FontName.regular.rawValue, size: 16.0)!
        format.textFont = UIFont(name: FontName.regular.rawValue, size: 20.0)!
        format.alertColor = .red
        format.alertFieldActive = true
        format.titleAlwaysVisible = true
        format.alertFont = UIFont(name: FontName.regular.rawValue, size: 16.0)!
        return format
    }
    
    func addSpacingOf(height: CGFloat) {
        let verticalSpacer = self.getSpacingView(height: height)
        stackView.addArrangedSubview(verticalSpacer)
    }
    
    func getSpacingView(height: CGFloat) -> UIView {
        let verticalSpacer = UIView()
        verticalSpacer.translatesAutoresizingMaskIntoConstraints = false
        verticalSpacer.heightAnchor.constraint(equalToConstant: height).isActive = true
        return verticalSpacer
    }
    
    func checkIfAllFieldsAreFilled() {
//        if !field1_value.isEmpty && !field2_value.isEmpty && !field3_value.isEmpty && !field4_value.isEmpty && !field5_value.isEmpty {
//            print(field1_value.isEmpty)
//            print(field2_value.isEmpty)
//            print(field3_value.isEmpty)
//            print(field4_value.isEmpty)
//            print(field5_value.isEmpty)
//            continueButton.isEnabled = true
//            continueButton.alpha = 1.0
//
//
//        } else {
//            print(field1_value.isEmpty)
//            print(field2_value.isEmpty)
//            print(field3_value.isEmpty)
//            print(field4_value.isEmpty)
//            print(field5_value.isEmpty)
//            continueButton.isEnabled = false
//            continueButton.alpha = 0.3
//
//        }
    }
    @objc func continueClicked() {
       let seconfVC = SecondFormViewController()
        navigationController?.pushViewController(seconfVC, animated: true)
    }
}



extension ViewController: AnimatedFieldDelegate {
    
    func animatedFieldDidBeginEditing(_ animatedField: AnimatedField) {
        let offset = animatedField.frame.origin.y + animatedField.frame.size.height - (view.frame.height - 500)
        scrollView.setContentOffset(CGPoint(x: 0, y: offset < 0 ? 0 : offset), animated: true)
    }
    
    func animatedFieldDidEndEditing(_ animatedField: AnimatedField) {
        var offset: CGFloat = 0
        if animatedField.frame.origin.y + animatedField.frame.size.height > scrollView.frame.height {
            offset = animatedField.frame.origin.y + animatedField.frame.size.height - scrollView.frame.height + 10
        }
        scrollView.setContentOffset(CGPoint(x: 0, y: offset), animated: true)
        
        if animatedField == field1 {
            field1_value = animatedField.text ?? ""
        } else if animatedField == field2 {
            field2_value = animatedField.text ?? ""
        } else if animatedField == field3 {
            field3_value = animatedField.text ?? ""
        } else if animatedField == field4 {
            field4_value = animatedField.text ?? ""
        } else if animatedField == field5 {
            field5_value = animatedField.text ?? ""
        }
        checkIfAllFieldsAreFilled()
    }
    
    func animatedField(_ animatedField: AnimatedField, didResizeHeight height: CGFloat) {
        view.layoutIfNeeded()
        
        let offset = animatedField.frame.origin.y + height - (view.frame.height - 350)
        scrollView.setContentOffset(CGPoint(x: 0, y: offset < 0 ? 0 : offset), animated: false)
    }
    
    func animatedField(_ animatedField: AnimatedField, didSecureText secure: Bool) {
    }
    
    func animatedField(_ animatedField: AnimatedField, didChangePickerValue value: String) {
        animatedField.text = value
        checkIfAllFieldsAreFilled()
    }
    
    func animatedFieldDidChange(_ animatedField: AnimatedField) {
        print("text: \(animatedField.text ?? "")")
        checkIfAllFieldsAreFilled()
    }
}

extension ViewController: AnimatedFieldDataSource {
    
    func animatedFieldLimit(_ animatedField: AnimatedField) -> Int? {
        switch animatedField.tag {
        case 1: return 10
        case 8: return 30
        default: return nil
        }
    }
    
    func animatedFieldValidationError(_ animatedField: AnimatedField) -> String? {
        //        if animatedField == emailAnimatedField {
        //            return "Email invalid! Please check again ;)"
        //        }
        return nil
    }
    
   
}

extension ViewController: DSFStepperViewDelegateProtocol {
    func stepperView(_ view: DSFStepperView, didChangeValueTo value: NSNumber?) {
       
        advertisingElementNumber = value?.intValue ?? 1111
        print("Current Value: ",advertisingElementNumber)
        checkIfAllFieldsAreFilled()
    }
    
    
}

extension UILabel {
    func setFont(name: String, size: CGFloat, colour: UIColor) {
        self.font = UIFont(name: name, size: size)
        self.textColor = colour
        self.numberOfLines = 0
    }
}
