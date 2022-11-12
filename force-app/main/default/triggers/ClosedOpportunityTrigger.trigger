trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> taskList = new List<Task>();
    
    for (Opportunity opty :Trigger.New) {
        if (opty.StageName == 'Closed Won') {
            taskList.add(new Task(Subject='Follow Up Test Task',
                                  WhatId=opty.Id));
	    }
    }
    
    if (taskList.size() > 0) {
        insert taskList;
    }
}