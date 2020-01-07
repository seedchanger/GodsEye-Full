package com.godseye.godseye;

import android.content.Intent;
import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.CallLog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.Toast;

import com.example.johnitjasan.test.R;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.Date;

public class calllog extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calllog);
        this.getCon();

    }



public void getCon() {

    String strOrder = android.provider.CallLog.Calls.DATE + " ASC";
    Cursor managedCursor = managedQuery(CallLog.Calls.CONTENT_URI, null,
            null, null, strOrder);
    int number = managedCursor.getColumnIndex(CallLog.Calls.NUMBER);
    int type = managedCursor.getColumnIndex(CallLog.Calls.TYPE);
    int date = managedCursor.getColumnIndex(CallLog.Calls.DATE);
    int duration = managedCursor.getColumnIndex(CallLog.Calls.DURATION);

    JSONArray ab=new JSONArray();
    JSONObject o[]=new JSONObject[managedCursor.getCount()];
    int i=0;
    while (managedCursor.moveToNext()) {
        String phNum = managedCursor.getString(number);
        String callTypeCode = managedCursor.getString(type);
        String strcallDate = managedCursor.getString(date);
        Date callDate = new Date(Long.valueOf(strcallDate));
        String callDuration = managedCursor.getString(duration);
        String callType = null;
        int callcode = Integer.parseInt(callTypeCode);
        switch (callcode) {
            case CallLog.Calls.OUTGOING_TYPE:
                callType = "Outgoing";
                break;
            case CallLog.Calls.INCOMING_TYPE:
                callType = "Incoming";
                break;
            case CallLog.Calls.MISSED_TYPE:
                callType = "Missed";
                break;
        }


        o[i]=new JSONObject();
        try {
            o[i].put("phone",phNum);
            o[i].put("calltype",callType);
            o[i].put("date",callDate);
            o[i].put("duration",callDuration);

        } catch (JSONException e) {
            e.printStackTrace();
        }
        ab.put(o[i]);
        i++;
    }

    clog cl= new clog();
    Toast.makeText(getApplicationContext(),ab.toString(),Toast.LENGTH_LONG).show();
    cl.execute(ab.toString());
    managedCursor.close();
}

    class clog extends AsyncTask<String,String,String> {

        @Override
        protected String doInBackground(String... params) {

            WebServiceCaller caller=new WebServiceCaller();

            caller.setSoapObject("calllog");
            caller.addProperty("jstring",params[0]);
            caller.callWebService();
            String res= caller.getResponse();

            return res;
        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);

            if(s.equals("true")) {
                Toast.makeText(calllog.this, "Added to Database", Toast.LENGTH_SHORT).show();
            }
            else {
                Toast.makeText(calllog.this, "No new entries to add", Toast.LENGTH_SHORT).show();
            }
            Intent j = new Intent(calllog.this, cLocation.class);
            startActivity(j);
        }
    }
}
