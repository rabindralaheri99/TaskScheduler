//
//  ViewController.swift
//  ScheduleTracker
//
//  Created by M1029313 on 20/01/21.
//

import UIKit
import FSCalendar

class ViewController: UIViewController {

    var viewModel:ViewModel?
    var selectedDate: Date?
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var calendarView: FSCalendar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel();
        viewModel?.delegate = self
    }
}

extension ViewController: FSCalendarDelegate {
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        print(date)
        selectedDate = date
        viewModel?.dateSelected(selectedDate: date)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.eventList.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        if let event = viewModel?.eventList[indexPath.row] {
            cell.textLabel?.text = event
        }
        
        return cell
    }
}

extension ViewController: ViewModelDelegate {
    func eventUpdated() {
        tableView.reloadData()
    }
}
