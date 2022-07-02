//
//  UpcomingPlan.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/01.
//

import SwiftUI

struct UpcomingPlan: View {
    
    let schedules: [ScheduleModel] = exampleSchedules
    
    let screen = UIScreen.main.bounds
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack(spacing: 6) {
            HStack{
                Text("直近の予定(2週間)")
                    .font(.headline)
                Spacer()
            }
            .padding(.leading, 10)
            .padding(.vertical, 8)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
            
            LazyVGrid(columns: columns) {
                
                ForEach(exampleSchedules, id: \.self) { exampleSchedule in
                    StandardImage(schedule :exampleSchedule)
                        .frame(width: screen.width/2 - 18,height: 300)
                }
            }
            
            
        }
        .padding(.horizontal,10)
    }
}

struct UpcomingPlan_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingPlan()
    }
}
