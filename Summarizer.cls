public class Summarizer {

    public static List<Double> summarizeArrayByScope( List<Double> incomeArray, Integer scope ){
    	    
        List<Double> result = new List<Double>();
        
        
        if ( scope == null ){
            return incomeArray;
        }    
        
        
        for ( Integer index = 0; index < incomeArray.size(); index++ ){
                
            if ( Math.mod( index, 2 ) == 0 ){
                
                result.add( 
                    incomeArray[index]
                );
                
            } else {
                            
                Double tem = result[ result.size() - 1 ];
                
                tem = tem + incomeArray[index];
                
                result[ result.size() - 1 ] = tem;
                
            }
            
        }
        
        
        return result;
        
    }
 
    public static List<Double> summarizeArrayWithPairs( List<Double> incomeArray ){
        
        return 
           summarizeArrayByScope(
                incomeArray,
                2
            )
        ;
        
    }
}