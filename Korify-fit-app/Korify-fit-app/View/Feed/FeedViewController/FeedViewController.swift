//
//  FeedViewController.swift
//  Korify-fit-app
//
//  Created by Rodrigo Assunção Veloso on 14/02/23.
//

import UIKit

class FeedViewController: UIViewController {
    
    // MARK: - Componentes
    private lazy var colorView = UIColor(red: 41.0/255.0, green: 43.0/255.0, blue: 41.0/255.0, alpha: 0.8)
    private lazy var headerView: UIView = {
        let view = UIView()
        view.backgroundColor = colorView
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var perfilImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "michael-jackson-atleticano")
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 40
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var workoutImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "chest-workouts")
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 15
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var wellcomelabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "WELLCOME"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var nomelabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "Michael Jackson"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var subtituloLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "Personalized Plan"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var feedScrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var scrollStackViewContainer: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.backgroundColor = colorView
        view.spacing = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var mainSubView: UIView = {
        let view = UIView()
        //view.heightAnchor.constraint(equalToConstant: 1200).isActive = true
        view.backgroundColor = colorView
        return view
    }()
    
    private lazy var stepsSubView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100).isActive = true
        view.layer.cornerRadius = 15
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var calBurnSubView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100).isActive = true
        view.layer.cornerRadius = 15
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var heartbeatSubView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100).isActive = true
        view.layer.cornerRadius = 15
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var weeklyInfoSubView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.widthAnchor.constraint(equalToConstant: 340).isActive = true
        view.layer.cornerRadius = 15
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private lazy var workoutSubView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.widthAnchor.constraint(equalToConstant: 340).isActive = true
        view.layer.cornerRadius = 15
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var viewAllButton: UIButton = {
        let botao = UIButton()
        botao.setTitle("VIEW ALL", for: .normal)
        botao.titleLabel?.font = .systemFont(ofSize: 13, weight: .bold)
        botao.translatesAutoresizingMaskIntoConstraints = false
        return botao
    }()
    
    // MARK: - Teste
    
     
   
    // MARK: - View Life Cycle

    override func viewDidLoad() {
        reloadViews()
    }

    // MARK: - Configuração dos componentes
    
    func reloadViews(){
        headerViewConfig()
        setupScrollView()
    }
    
    func headerViewConfig() {

        headerView.addSubview(perfilImageView)
        perfilImageView.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 80).isActive = true
        perfilImageView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 20).isActive = true
        perfilImageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        perfilImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        headerView.addSubview(wellcomelabel)
        wellcomelabel.leadingAnchor.constraint(equalTo: perfilImageView.trailingAnchor, constant: 10).isActive = true
        wellcomelabel.topAnchor.constraint(equalTo: perfilImageView.topAnchor, constant: 10).isActive = true
        
        headerView.addSubview(nomelabel)
        nomelabel.leadingAnchor.constraint(equalTo: perfilImageView.trailingAnchor, constant: 10).isActive = true
        nomelabel.topAnchor.constraint(equalTo: wellcomelabel.bottomAnchor, constant: 0).isActive = true
    }
    
    private func setupScrollView() {
        //let margins = view.layoutMarginsGuide
        view.addSubview(feedScrollView)
        
        feedScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        feedScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        feedScrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: -100).isActive = true
        feedScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        
        feedScrollView.addSubview(scrollStackViewContainer)
        scrollStackViewContainer.leadingAnchor.constraint(equalTo: feedScrollView.leadingAnchor).isActive = true
        scrollStackViewContainer.trailingAnchor.constraint(equalTo: feedScrollView.trailingAnchor).isActive = true
        scrollStackViewContainer.topAnchor.constraint(equalTo: feedScrollView.topAnchor).isActive = true
        scrollStackViewContainer.bottomAnchor.constraint(equalTo: feedScrollView.bottomAnchor).isActive = true
        scrollStackViewContainer.widthAnchor.constraint(equalTo: feedScrollView.widthAnchor).isActive = true
        configureContainerView()
    }
    private func configureContainerView() {
        scrollStackViewContainer.addArrangedSubview(headerView)
        headerView.topAnchor.constraint(equalTo: scrollStackViewContainer.topAnchor).isActive = true
        headerView.trailingAnchor.constraint(equalTo: scrollStackViewContainer.trailingAnchor).isActive = true
        headerView.leadingAnchor.constraint(equalTo: scrollStackViewContainer.leadingAnchor).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        scrollStackViewContainer.addArrangedSubview(mainSubView)
        mainSubView.heightAnchor.constraint(equalToConstant: 700).isActive = true
        configureMainSubView()
    }
    
    private func configureMainSubView() {
        mainSubView.addSubview(calBurnSubView)
        calBurnSubView.centerXAnchor.constraint(equalTo: mainSubView.centerXAnchor).isActive = true
        calBurnSubView.topAnchor.constraint(equalTo: mainSubView.topAnchor, constant: 20).isActive = true
        configureCalBurnSubView()
        
        mainSubView.addSubview(stepsSubView)
        stepsSubView.trailingAnchor.constraint(equalTo: calBurnSubView.leadingAnchor, constant: -20).isActive = true
        stepsSubView.topAnchor.constraint(equalTo: mainSubView.topAnchor, constant: 20).isActive = true
        configureStepsSubView()
        
        mainSubView.addSubview(heartbeatSubView)
        heartbeatSubView.leadingAnchor.constraint(equalTo: calBurnSubView.trailingAnchor, constant: 20).isActive = true
        heartbeatSubView.topAnchor.constraint(equalTo: mainSubView.topAnchor, constant: 20).isActive = true
        configureHeartbeatSubView()
        
        mainSubView.addSubview(weeklyInfoSubView)
        weeklyInfoSubView.centerXAnchor.constraint(equalTo: mainSubView.centerXAnchor).isActive = true
        weeklyInfoSubView.topAnchor.constraint(equalTo: stepsSubView.bottomAnchor, constant: 10).isActive = true
        configureWeeklyInfoSubView()
        
        mainSubView.addSubview(subtituloLabel)
        subtituloLabel.topAnchor.constraint(equalTo: weeklyInfoSubView.bottomAnchor, constant: 10).isActive = true
        subtituloLabel.leadingAnchor.constraint(equalTo: mainSubView.leadingAnchor, constant: 30).isActive = true
        
        mainSubView.addSubview(workoutSubView)
        workoutSubView.topAnchor.constraint(equalTo: subtituloLabel.bottomAnchor, constant: 10).isActive = true
        workoutSubView.centerXAnchor.constraint(equalTo: mainSubView.centerXAnchor).isActive = true
        configureWorkoutSubView()
        
        mainSubView.addSubview(viewAllButton)
        viewAllButton.trailingAnchor.constraint(equalTo: mainSubView.trailingAnchor, constant: -30).isActive = true
        viewAllButton.topAnchor.constraint(equalTo: weeklyInfoSubView.bottomAnchor, constant: 10).isActive = true
    }
    
    private func configureWorkoutSubView(){
        workoutSubView.addSubview(workoutImageView)
        workoutImageView.topAnchor.constraint(equalTo: workoutSubView.topAnchor).isActive = true
        workoutImageView.bottomAnchor.constraint(equalTo: workoutSubView.bottomAnchor).isActive = true
        workoutImageView.leadingAnchor.constraint(equalTo: workoutSubView.leadingAnchor).isActive = true
        workoutImageView.trailingAnchor.constraint(equalTo: workoutSubView.trailingAnchor).isActive = true
        workoutImageView.widthAnchor.constraint(equalTo: workoutSubView.widthAnchor).isActive = true
        workoutImageView.heightAnchor.constraint(equalTo: workoutSubView.heightAnchor).isActive = true
    }
    
    private func configureHeartbeatSubView(){
        let image = UIImage(systemName: "heart")
        let imageView = UIImageView(image: image)
        imageView.tintColor = .green
        heartbeatSubView.addSubview(imageView)
        
        imageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.centerXAnchor.constraint(equalTo: heartbeatSubView.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: heartbeatSubView.topAnchor, constant: 15).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        let bpmLabel = UILabel()
        bpmLabel.textColor = .white
        bpmLabel.text = "123 BPM"
        bpmLabel.textAlignment = .center
        bpmLabel.font = UIFont.boldSystemFont(ofSize: 18)
        bpmLabel.translatesAutoresizingMaskIntoConstraints = false
        
        heartbeatSubView.addSubview(bpmLabel)
        bpmLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 2).isActive = true
        bpmLabel.centerXAnchor.constraint(equalTo: heartbeatSubView.centerXAnchor).isActive = true
        
        let heartbeatLabel = UILabel()
        heartbeatLabel.textColor = .white
        heartbeatLabel.text = "HEARTBEAT"
        heartbeatLabel.textAlignment = .center
        heartbeatLabel.font = UIFont.systemFont(ofSize: 12)
        heartbeatLabel.translatesAutoresizingMaskIntoConstraints = false
        
        heartbeatSubView.addSubview(heartbeatLabel)
        heartbeatLabel.topAnchor.constraint(equalTo: bpmLabel.bottomAnchor, constant: 2).isActive = true
        heartbeatLabel.centerXAnchor.constraint(equalTo: heartbeatSubView.centerXAnchor).isActive = true
        
    }
    
    private func configureCalBurnSubView(){
        let image = UIImage(systemName: "flame")
        let imageView = UIImageView(image: image)
        imageView.tintColor = .green
        calBurnSubView.addSubview(imageView)
        
        imageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.centerXAnchor.constraint(equalTo: calBurnSubView.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: calBurnSubView.topAnchor, constant: 15).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        let bpmLabel = UILabel()
        bpmLabel.textColor = .white
        bpmLabel.text = "3.115 KCAL"
        bpmLabel.textAlignment = .center
        bpmLabel.font = UIFont.boldSystemFont(ofSize: 18)
        bpmLabel.translatesAutoresizingMaskIntoConstraints = false
        
        calBurnSubView.addSubview(bpmLabel)
        bpmLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 2).isActive = true
        bpmLabel.centerXAnchor.constraint(equalTo: calBurnSubView.centerXAnchor).isActive = true
        
        let heartbeatLabel = UILabel()
        heartbeatLabel.textColor = .white
        heartbeatLabel.text = "CAL BURN"
        heartbeatLabel.textAlignment = .center
        heartbeatLabel.font = UIFont.systemFont(ofSize: 12)
        heartbeatLabel.translatesAutoresizingMaskIntoConstraints = false
        
        calBurnSubView.addSubview(heartbeatLabel)
        heartbeatLabel.topAnchor.constraint(equalTo: bpmLabel.bottomAnchor, constant: 2).isActive = true
        heartbeatLabel.centerXAnchor.constraint(equalTo: calBurnSubView.centerXAnchor).isActive = true
        
    }
    
    private func configureStepsSubView(){
        let image = UIImage(systemName: "figure.walk")
        let imageView = UIImageView(image: image)
        imageView.tintColor = .green
        stepsSubView.addSubview(imageView)
        
        imageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.centerXAnchor.constraint(equalTo: stepsSubView.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: stepsSubView.topAnchor, constant: 15).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        let bpmLabel = UILabel()
        bpmLabel.textColor = .white
        bpmLabel.text = "6.359"
        bpmLabel.textAlignment = .center
        bpmLabel.font = UIFont.boldSystemFont(ofSize: 18)
        bpmLabel.translatesAutoresizingMaskIntoConstraints = false
        
        stepsSubView.addSubview(bpmLabel)
        bpmLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 2).isActive = true
        bpmLabel.centerXAnchor.constraint(equalTo: stepsSubView.centerXAnchor).isActive = true
        
        let heartbeatLabel = UILabel()
        heartbeatLabel.textColor = .white
        heartbeatLabel.text = "STEPS"
        heartbeatLabel.textAlignment = .center
        heartbeatLabel.font = UIFont.systemFont(ofSize: 12)
        heartbeatLabel.translatesAutoresizingMaskIntoConstraints = false
        
        stepsSubView.addSubview(heartbeatLabel)
        heartbeatLabel.topAnchor.constraint(equalTo: bpmLabel.bottomAnchor, constant: 2).isActive = true
        heartbeatLabel.centerXAnchor.constraint(equalTo: stepsSubView.centerXAnchor).isActive = true
        
    }
    
    //weekly-average
    
    private func configureWeeklyInfoSubView(){
        let image = UIImageView()
        image.image = UIImage(named: "weekly-average")
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 15
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        
        weeklyInfoSubView.addSubview(image)
        image.topAnchor.constraint(equalTo: weeklyInfoSubView.topAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: weeklyInfoSubView.bottomAnchor).isActive = true
        image.leadingAnchor.constraint(equalTo: weeklyInfoSubView.leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: weeklyInfoSubView.trailingAnchor).isActive = true
        image.widthAnchor.constraint(equalTo: weeklyInfoSubView.widthAnchor).isActive = true
        image.heightAnchor.constraint(equalTo: weeklyInfoSubView.heightAnchor).isActive = true
        
    }
}
