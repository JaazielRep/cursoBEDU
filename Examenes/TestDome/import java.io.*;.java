import java.io.*;
import java.util.*;

public class Needle {
    public static int count(String needle, InputStream haystack) throws Exception {
        StringBuilder sb = new StringBuilder( Math.max( 16, haystack.available() ) );
            char[] tmp = new char[ 4096 ];

        try {
           InputStreamReader reader = new InputStreamReader( haystack, "UTF8" );
           for( int cnt; ( cnt = reader.read( tmp ) ) > 0; )
                sb.append( tmp, 0, cnt );
                System.out.println(sb);
        } finally {
            haystack.close();
        }
        
        
        return 2;
        //throw new UnsupportedOperationException("Waiting to be implemented.");
        
    }
    
    public static void main(String[] args) throws Exception {
        String inMessage = "Hello, there!\nHow are you today?\nYes, you over there.";
        
        try(InputStream inStream = new ByteArrayInputStream(inMessage.getBytes())) {
            System.out.println(Needle.count("there", inStream));
        }
    }
}