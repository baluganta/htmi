import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import java.io.InputStream;

public class SimpleSAXParser {

    public static void main(String[] args) {
        try {
            // Create a SAXParserFactory
            SAXParserFactory factory = SAXParserFactory.newInstance();

            // Create a SAXParser
            SAXParser saxParser = factory.newSAXParser();

            // Create a handler to process XML events
            DefaultHandler handler = new DefaultHandler() {
                boolean insideElement = false;

                @Override
                public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
                    // Called when an opening tag is encountered
                    insideElement = true;
                    System.out.print("<" + qName + ">");
                }

                @Override
                public void characters(char[] ch, int start, int length) throws SAXException {
                    // Called when text content is encountered
                    if (insideElement) {
                        String content = new String(ch, start, length);
                        System.out.print(content);
                    }
                }

                @Override
                public void endElement(String uri, String localName, String qName) throws SAXException {
                    // Called when a closing tag is encountered
                    insideElement = false;
                    System.out.print("</" + qName + ">");
                }
            };

            // Specify the XML document to parse (as an input stream)
            InputStream inputStream = SimpleSAXParser.class.getResourceAsStream("example.xml");

            // Parse the XML document
            saxParser.parse(inputStream, handler);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
