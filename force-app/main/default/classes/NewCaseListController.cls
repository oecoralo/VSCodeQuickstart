public class NewCaseListController {
    private String InStatus = 'New';
    
    public List<Case> getNewCases() {
        List<Case> results = Database.query(
            'SELECT ID, CaseNumber ' +
            'FROM Case ' +
            'WHERE Status = :InStatus');
        return results;
	}
}