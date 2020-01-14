package com.project.Methods;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.xml.bind.DatatypeConverter;

public class TKO_Algorithms {



 

public static SecretKey garbageValue() throws Exception{

    KeyGenerator generator = KeyGenerator.getInstance("AES");

    generator.init(128); // The AES key size in number of bits

  SecretKey secKey = generator.generateKey();

    return secKey;

}

 


public static byte[] encryptText(String plainText,SecretKey secKey) throws Exception{

    // AES defaults to AES/ECB/PKCS5Padding in Java 7

    Cipher aesCipher = Cipher.getInstance("AES");

   aesCipher.init(Cipher.ENCRYPT_MODE, secKey);

    byte[] byteCipherText = aesCipher.doFinal(plainText.getBytes());

    return byteCipherText;

}

 


public static String decryptText(byte[] byteCipherText, SecretKey secKey) throws Exception {

    // AES defaults to AES/ECB/PKCS5Padding in Java 7

    Cipher aesCipher = Cipher.getInstance("AES");

    aesCipher.init(Cipher.DECRYPT_MODE, secKey);

    byte[] bytePlainText = aesCipher.doFinal(byteCipherText);

    return new String(bytePlainText);

}





private static String  bytesToHex(byte[] hash) {

    return DatatypeConverter.printHexBinary(hash);

}

public String all_result(String plainText)
{
	String GarbageValue=null;
	
	SecretKey secKey;
	try {
		secKey = garbageValue();
		
		 byte[] cipherText = encryptText(plainText, secKey);
	    /*  String    decryptedText = decryptText(cipherText, secKey);*/

	         

	        System.out.println("Original Text:" + plainText);

	        System.out.println("Garadge value of Tko :"+bytesToHex(secKey.getEncoded()));
	        
	         GarbageValue=bytesToHex(secKey.getEncoded());
	        
	        System.out.println("garbage Value is "+GarbageValue);

	        System.out.println("Garagede value :"+bytesToHex(cipherText));
	        	        
            System.out.println("Loop end ");
            
            

	      
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return GarbageValue;

   
	
}
	
}
