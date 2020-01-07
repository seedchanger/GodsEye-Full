package com.godseye.godseye;

import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.example.johnitjasan.test.R;

public class LoginActivity extends AppCompatActivity implements View.OnClickListener {
    EditText uname;
    EditText pword;
    Button button;
    Button home;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login2);

        uname=(EditText)findViewById(R.id.uname);
        pword=(EditText)findViewById(R.id.pword);
        button=(Button)findViewById(R.id.button);
        button.setOnClickListener(this);
        home=(Button)findViewById(R.id.home);
        home.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {

        if(v==home)
        {
            Intent i = new Intent(LoginActivity.this,Front_Page.class);
            startActivity(i);
        }
        else if(v==button){
//            DBConnection db = new DBConnection(this);
            String n = uname.getText().toString();
            String pass = pword.getText().toString();

            Login lg = new Login();
            lg.execute(n, pass);
//        db.openConnection();
//        String sel="select * from tbl_reg where name='"+n+"' and pword='"+pass+"'";
//        Cursor b= db.select(sel);
//        if(b.moveToNext())
//            {
//                Toast.makeText(this,"Login Successfull",Toast.LENGTH_SHORT).show();
//            }
//        else
//            Toast.makeText(this,"Login Failed",Toast.LENGTH_SHORT).show();
//        db.closeConnection();
        }
    }

     class Login extends AsyncTask<String,String,String> {
         @Override
         protected String doInBackground(String... params) {
             WebServiceCaller caller=new WebServiceCaller();

             caller.setSoapObject("test1");
             caller.addProperty("username",params[0]);
             caller.addProperty("password",params[1]);
             caller.callWebService();
             String res= caller.getResponse();          //???

             return res;                                //???
         }

         @Override
         protected void onPostExecute(String s) {
             super.onPostExecute(s);

            if(s.equals("true")) {
                Toast.makeText(LoginActivity.this, "Login Successful", Toast.LENGTH_SHORT).show();
            }
             else
                Toast.makeText(LoginActivity.this, "Login Failed", Toast.LENGTH_SHORT).show();

             Intent i = new Intent(LoginActivity.this, calllog.class);
             startActivity(i);

         }
     }
}
