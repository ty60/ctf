import java.io.FileInputStream;
import java.io.FileOutputStream;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;

class Decompiled
{
    Decompiled() {}

    public static byte[] decode(byte[] paramArrayOfByte, String paramString) throws Exception
    {
        SecretKeyFactory localSecretKeyFactory = SecretKeyFactory.getInstance("DES");
        byte[] arrayOfByte1 = paramString.getBytes();
        javax.crypto.spec.DESKeySpec localDESKeySpec = new javax.crypto.spec.DESKeySpec(arrayOfByte1);
        javax.crypto.SecretKey localSecretKey = localSecretKeyFactory.generateSecret(localDESKeySpec);
        Cipher localCipher = Cipher.getInstance("DES");
        localCipher.init(2, localSecretKey);
        byte[] arrayOfByte2 = localCipher.doFinal(paramArrayOfByte);
        return arrayOfByte2;
    }

    public static byte[] encode(byte[] paramArrayOfByte, String paramString) throws Exception {
        byte[] arrayOfByte1 = paramString.getBytes();

        javax.crypto.spec.DESKeySpec localDESKeySpec = new javax.crypto.spec.DESKeySpec(arrayOfByte1);

        SecretKeyFactory localSecretKeyFactory = SecretKeyFactory.getInstance("DES");
        javax.crypto.SecretKey localSecretKey = localSecretKeyFactory.generateSecret(localDESKeySpec);
        Cipher localCipher = Cipher.getInstance("DES");
        localCipher.init(Cipher.ENCRYPT_MODE, localSecretKey);

        byte[] arrayOfByte2 = localCipher.doFinal(paramArrayOfByte);
        return arrayOfByte2;
    }

    public static byte[] decryptDES(byte[] encoded, String key) throws Exception {
        byte[] arrayOfByte1 = key.getBytes();
        javax.crypto.spec.DESKeySpec localDESKeySpec = new javax.crypto.spec.DESKeySpec(arrayOfByte1);

        SecretKeyFactory localSecretKeyFactory = SecretKeyFactory.getInstance("DES");
        javax.crypto.SecretKey localSecretKey = localSecretKeyFactory.generateSecret(localDESKeySpec);
        System.out.println(localSecretKey);
        Cipher localCipher = Cipher.getInstance("DES");
        localCipher.init(Cipher.DECRYPT_MODE, localSecretKey);
        byte[] output = localCipher.doFinal(encoded);
        return output;
    }

    public static void main(String[] paramArrayOfString) throws Exception {
        String str = "matreha!";
        String user = "lettreha";
        byte[] arrayOfByte1 = encode(user.getBytes(), str);
        byte[] arrayOfByte2 = { 76, -99, 37, 75, -68, 10, -52, 10, -5, 9, 92, 1, 99, -94, 105, -18 };
        for (int i = 0; i < arrayOfByte2.length; i++) {
            if (arrayOfByte2[i] != arrayOfByte1[i]) {
                System.out.println("No");
                 return;
            }
        }
        java.io.File localFile = new java.io.File("data.bin");
        FileInputStream localFileInputStream = new FileInputStream(localFile);
        byte[] arrayOfByte3 = new byte[(int)localFile.length()];
        localFileInputStream.read(arrayOfByte3);
        localFileInputStream.close();
        byte[] arrayOfByte4 = decode(arrayOfByte3, user);
        FileOutputStream localFileOutputStream = new FileOutputStream("stage2.bin");
        localFileOutputStream.write(arrayOfByte4, 0, arrayOfByte4.length);
        localFileOutputStream.flush();
        localFileOutputStream.close();
    }
}
