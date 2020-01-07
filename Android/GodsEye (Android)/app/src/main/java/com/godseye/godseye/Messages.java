package com.godseye.godseye;

import android.database.Cursor;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import com.example.johnitjasan.test.R;

public class Messages extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_messages);
    }

//    Cursor cursor = getContentResolver().query(Uri.parse("content://sms/inbox"), null, null, null, null);
//
////    if (cursor.moveToFirst()) { // must check the result to prevent exception
//        do {
//            String msgData = "";
//            for(int idx=0;idx<cursor.getColumnCount();idx++)
//            {
//                msgData += " " + cursor.getColumnName(idx) + ":" + cursor.getString(idx);
//            }
//            // use msgData
//        } while (cursor.moveToNext());
////    } else {
//        // empty box, no SMS
////    }
//
}
