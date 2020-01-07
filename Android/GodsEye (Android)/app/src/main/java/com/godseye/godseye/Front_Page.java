package com.godseye.godseye;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.example.johnitjasan.test.R;

public class Front_Page extends AppCompatActivity implements View.OnClickListener {

    Button login;
    Button signup;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_front__page);

        login=(Button)findViewById(R.id.login);
        signup=(Button)findViewById(R.id.signup);

        login.setOnClickListener(this);
        signup.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {

        if(v==login)
        {
            Intent i = new Intent(Front_Page.this,LoginActivity.class);
            startActivity(i);
        }

        else if(v==signup)
        {
            Intent j = new Intent(Front_Page.this,MainActivity.class);
            startActivity(j);
        }
    }
}
