/* Fundamentos y base de datos de Apex 2017/08/14 */
public class StringArrayTest{
    public static List<string> generateStringArray(integer n){
        List<String> StringArray = new List<String>();
        
        for(integer i=0; i<n; i++){
            StringArray.add('Test '+i);
            System.debug(StringArray[i]);
        }
        
        return(StringArray);
    }
}