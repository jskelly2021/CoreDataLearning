//
//  ContentView.swift
//  CoreDataLearning
//
//  Created by Jacob Kelly on 8/31/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext)
    var context

    @FetchRequest(sortDescriptors: [])
    var jobs: FetchedResults<Job>

    var body: some View {
        VStack {
            Button(action: {
                let job = Job(context: context)
                job.title = "Test Job"
                try? context.save()
            }, label: {
                Text("Add job")
            })
            
            List {
                ForEach(jobs, id: \.self) { job in
                    Text(job.title ?? "na")
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(\.managedObjectContext, DataController().container.viewContext)
}
