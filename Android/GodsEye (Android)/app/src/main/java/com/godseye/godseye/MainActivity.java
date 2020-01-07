package com.godseye.godseye;

import android.app.DatePickerDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.Toast;

import com.example.johnitjasan.test.R;

import java.util.Calendar;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    EditText fname;
    EditText lname;
    EditText dob;
    EditText mobile;
    EditText email;
    EditText uname;
    EditText pword;
    RadioGroup rgroup;
    RadioButton rmale;
    RadioButton rfemale;
    RadioButton gender;
    Button register;
    Button home;
    RelativeLayout rel;
    LinearLayout linearLayout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        fname = (EditText) findViewById(R.id.fname);
        lname = (EditText) findViewById(R.id.lname);
        dob = (EditText) findViewById(R.id.dob);
        mobile = (EditText) findViewById(R.id.phone);
        email = (EditText) findViewById(R.id.email);
        uname = (EditText) findViewById(R.id.uname);
        pword = (EditText) findViewById(R.id.pword);
        rgroup = (RadioGroup) findViewById(R.id.gender);
        rmale = (RadioButton) findViewById(R.id.male);
        rfemale = (RadioButton) findViewById(R.id.female);
        register = (Button) findViewById(R.id.register);
        register.setOnClickListener(this);
        home = (Button) findViewById(R.id.home);
        home.setOnClickListener(this);
        rel = (RelativeLayout) findViewById(R.id.relative);
        linearLayout = (LinearLayout) findViewById(R.id.rel);


        linearLayout.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {

        if(v==linearLayout)
        {
            int mYear;
            int mMonth;
            int mDay;
            final Calendar c = Calendar.getInstance();
            mYear = c.get(Calendar.YEAR);
            mMonth = c.get(Calendar.MONTH);
            mDay = c.get(Calendar.DAY_OF_MONTH);


            DatePickerDialog datePickerDialog = new DatePickerDialog(this,
                    new DatePickerDialog.OnDateSetListener() {

                        @Override
                        public void onDateSet(DatePicker view, int year,
                                              int monthOfYear, int dayOfMonth) {

//                                ed.setText(dayOfMonth + "-" + (monthOfYear + 1) + "-" + year);
                            dob.setText(dayOfMonth + "-" + (monthOfYear + 1) + "-" + year);

                        }
                    }, mYear, mMonth, mDay);
            datePickerDialog.show();
        }

        if(v==home)
        {
            Intent i = new Intent(MainActivity.this,Front_Page.class);
            startActivity(i);
        }
        else if(v==register) {
//          DBConnection db = new DBConnection(this);
            String fn = fname.getText().toString();
            String ln = lname.getText().toString();
            String bd = dob.getText().toString();
            String ph = mobile.getText().toString();
            String mail = email.getText().toString();
            String un = uname.getText().toString();
            String pass = pword.getText().toString();
            int genderid= rgroup.getCheckedRadioButtonId();
            gender = (RadioButton) findViewById(genderid);
            String gender1 = gender.getText().toString();

//            db.openConnection();
//            String ins = "insert into tbl_reg (name,phone,pword,email)values('" + n + "','" + ph + "','" + pass + "','" + mail + "')";
//            boolean b = db.insert(ins);
//            db.closeConnection();
//            Toast.makeText(this, n + " " + b, Toast.LENGTH_SHORT).show();

            Register rg = new Register();
            rg.execute(fn,ln,bd,ph,mail,un,pass,gender1);
        }
        }

    class Register extends AsyncTask<String,String,String>{

        @Override
        protected String doInBackground(String... params) {
            WebServiceCaller wsc=new WebServiceCaller();

            wsc.setSoapObject("reg");
            wsc.addProperty("fname",params[0]);
            wsc.addProperty("lname",params[1]);
            wsc.addProperty("dob",params[2]);
            wsc.addProperty("phone",params[3]);
            wsc.addProperty("email",params[4]);
            wsc.addProperty("uname",params[5]);
            wsc.addProperty("pword",params[6]);
            wsc.addProperty("gender1",params[7]);
            wsc.callWebService();


            String res= wsc.getResponse();
            return res;
        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);

            if(s.equals("true")) {
                Toast.makeText(MainActivity.this, "Registration Successful", Toast.LENGTH_LONG).show();
                Intent i = new Intent(MainActivity.this, Front_Page.class);
                startActivity(i);
            }
            else {
                Toast.makeText(MainActivity.this, "Registration Failed", Toast.LENGTH_LONG).show();
            }
        }
        }
}
