package com.google.ctf.shallweplayagame;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

import java.util.Random;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class GameActivity extends AppCompatActivity {
    //Object n = N._(Integer.valueOf(3), N.h, Long.valueOf((((((((1416127776 + 1869507705) + 544696686) + 1852403303) + 544042870) + 1696622963) + 544108404) + 544501536) + 1886151033));
    Random n = new Random(0x28994c264L);
    //Object n = N._(Integer.valueOf(3), N.h, Long.valueOf(0x28994c264L));
    int o;

    byte[] q = new byte[32];
    byte[] r = new byte[]{(byte) -61, (byte) 15, (byte) 25, (byte) -115, (byte) -46, (byte) -11, (byte) 65, (byte) -3, (byte) 34, (byte) 93, (byte) -39, (byte) 98, (byte) 123, (byte) 17, (byte) 42, (byte) -121, (byte) 60, (byte) 40, (byte) -60, (byte) -112, (byte) 77, (byte) 111, (byte) 34, (byte) 14, (byte) -31, (byte) -4, (byte) -7, (byte) 66, (byte) 116, (byte) 108, (byte) 114, (byte) -122};

    public GameActivity() {
        //N._(Integer.valueOf(3), N.i, this.n, this.q); // gen q
        n.nextBytes(this.q);
        this.o = 0;
    }

    void m() {
        Object _ = N._(Integer.valueOf(0), N.a, Integer.valueOf(0));
        Object _2 = N._(Integer.valueOf(1), N.b, this.q, Integer.valueOf(1));
        N._(Integer.valueOf(0), N.c, _, Integer.valueOf(2), _2);
        String flag = new String((byte[]) N._(Integer.valueOf(0), N.d, _, this.r));
        try{
            /*
            Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
            SecretKeySpec secretKeySpec = new SecretKeySpec(this.q, "AES");
            cipher.init(Cipher.DECRYPT_MODE, secretKeySpec);
            String flag = new String((byte[])  cipher.doFinal(this.r));
            */
        } catch(Exception e) {

        }
        ((TextView) findViewById(R.id.TEXT)).setText(flag);
    }

    void n()  {
        while (true) {
            this.o++;

            //Object _ = N._(Integer.valueOf(2), N.e, Integer.valueOf(2));
            //N._(Integer.valueOf(2), N.f, _, this.q);
            //this.q = (byte[]) N._(Integer.valueOf(2), N.g, _); // sha256

            try{
                MessageDigest _ = MessageDigest.getInstance("SHA-256");
                _.update(this.q);
                this.q = _.digest();
            } catch(Exception e){

            }
            if (this.o % 10000 == 0)
                Log.d("xxx", "this.o = " + this.o);

            if (this.o == 1000000) {
                m();
                break;
            }
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_game);
        n();
    }
}
