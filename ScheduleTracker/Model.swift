//
//  Model.swift
//  ScheduleTracker
//
//  Created by M1029313 on 20/01/21.
//

import Foundation

struct Model {
    var date:String?
    var event:String?
    
    init(date:String, event:String) {
        self.date = date
        self.event = event
    }
}

let jsonData:[Model] = [
    Model(date: "2021-01-20T09:00:00+0000", event: "Honeywell"),
    Model(date: "2021-01-20T12:30:00+0000", event: "Going to Market"),
    Model(date: "2021-01-20T17:15:00+0000", event: "Accupressure"),
    Model(date: "2021-01-21T00:00:00+0000", event: "Meeting with Client"),
    Model(date: "2021-02-21T00:00:00+0000", event: "Meeting with Client"),
    Model(date: "2021-02-21T00:00:00+0000", event: "Accupressure"),
    Model(date: "2021-02-21T00:00:00+0000", event: "Meeting with Client"),
    Model(date: "2020-12-30T00:00:00+0000", event: "Meeting with Client"),
    Model(date: "2020-12-30T00:00:00+0000", event: "Meeting with Client"),
    Model(date: "2020-12-29T00:00:00+0000", event: "Meeting with Client"),
    Model(date: "2021-01-10T00:00:00+0000", event: "Meeting with Client"),
    Model(date: "2021-01-19T00:00:00+0000", event: "Meeting with Client"),
    Model(date: "2021-01-21T00:00:00+0000", event: "Meeting with Client"),
    Model(date: "2021-01-22T00:00:00+0000", event: "Meeting with Client"),
]
