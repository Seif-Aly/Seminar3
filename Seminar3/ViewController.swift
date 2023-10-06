//
//  ViewController.swift
//  Seminar3
//
//  Created by seif on 2023-10-06.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daysNum
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath)
        let date = DateComponents(calendar: Calendar.current,year: 2023, month: monthNum,  day: indexPath.row + 1).date
        let dateFormatter = DateFormatter()
        dateFormatter.setLocalizedDateFormatFromTemplate("EEE MMM d yyyy")
        cell.textLabel?.text = dateFormatter.string(from: date!)

        return cell
        

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        _ = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath)
        let date = DateComponents(calendar: Calendar.current,year: 2023, month: monthNum,  day: indexPath.row + 1).date
        let dateFormatter = DateFormatter()
        dateFormatter.setLocalizedDateFormatFromTemplate("EEE MMM d yyyy")
        print(dateFormatter.string(from: date!))
        }
    
    var cellName = "cell"
    var monthString = ""
    var daysNum = 0
    var monthNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureData()
        configureTableView()
    }

    private func configureData(){
        monthNum = Calendar.current.dateComponents([.month], from: Date()).month!
        monthString = Calendar.current.monthSymbols[monthNum - 1]
        let range = Calendar.current.range(of: .day, in: .month, for: Date())
        
        daysNum = range!.count
        
    }
        var myTableView: UITableView!
        
        private func configureTableView(){
            let rect = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
            myTableView = UITableView(frame: rect)
            myTableView.register(TableViewCell.self, forCellReuseIdentifier: cellName)
            myTableView.backgroundColor = .blue
            self.view.addSubview(myTableView)
            myTableView.dataSource = self
            myTableView.delegate = self

        }
        
    }

