import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;

public class Main {
    public static void main(String args[]) {

        StreamSource inputxml= new StreamSource(new File("src/student.xml"));
        //StreamSource outputxml= new StreamSource(new File("src/employee.xml"));
        Result outputxml=new StreamResult("src/employee.xml");
        StreamSource xmltransformer= new StreamSource(new File("src/xmlToxmlTransformer.xslt"));
        TransformerFactory tf = TransformerFactory.newInstance();
        Transformer t= null;
        try {
            t = tf.newTransformer(xmltransformer);
            t.transform(inputxml, outputxml);
        } catch (TransformerConfigurationException e) {
            e.printStackTrace();
        } catch (TransformerException e) {
            e.printStackTrace();
        }

    }

}
