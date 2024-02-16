# Appendix G: Payload Compression Example

The purpose of this section is to provide an example of the code
required to compress and encode a payload, where the payload is then
passed as the contents of the Payload/Compressed element. The following
is a Java example that leverages commonly used classes for compression
and base64 encoding.

~~~
package BusinessService.TS.WebServiceClient.CompressionClient;

import java.util.*;
import java.io.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.IOException;
import java.util.zip.*;
import org.apache.soap.encoding.soapenc.Base64;

public class CompressionClientCompressandEncode{
	protected byte[] input = null;
	protected String base64GzipInput = "";
	public byte[] getinput() {
		return input;
	}
	public void setinput(byte[] val) {
		input = val;
	}
	public String getbase64GzipInput() {
		return base64GzipInput;
	}
	public void setbase64GzipInput(String val) {
		base64GzipInput = val;
	}
	public CompressionClientCompressandEncode() {
	}
	public void invoke() throws Exception {
		In  : byte[] input
		Out : String base64GzipInput
   
 		ByteArrayOutputStream bas = new ByteArrayOutputStream();
  		GZIPOutputStream bis = new GZIPOutputStream(bas);
  		bis.write(input);

    		bis.close();   
    		base64GzipInput = Base64.encode(bas.toByteArray());
	}
}
~~~
