package com.godseye.godseye;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.support.v4.app.ActivityCompat;
import android.view.Menu;
import android.view.View;
import android.widget.TextView;

import android.util.Log;
import android.widget.Toast;

import com.example.johnitjasan.test.R;

import java.util.Date;

public class cLocation extends Activity implements LocationListener {
    protected LocationManager locationManager;
    protected Context context;
    TextView txtLat;
    String lat;
    String provider;
    protected String latitude, longitude;
    protected boolean gps_enabled, network_enabled;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_clocation);

        locationManager = (LocationManager) getSystemService(Context.LOCATION_SERVICE);
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            return;
        }
        locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, 0, this);
    }

    @Override
    public boolean onPreparePanel(int featureId, View view, Menu menu) {
        return super.onPreparePanel(featureId, view, menu);
    }

    @Override
    public void onLocationChanged(Location location) {

        String lat= String.valueOf(location.getLatitude());
        String lon= String.valueOf(location.getLongitude());
        Toast.makeText(this, "Latitude:" + lat + ", Longitude:" + lon,Toast.LENGTH_LONG).show();
        Date d=new Date();
        String dates=d.toString();
        Toast.makeText(this,dates,Toast.LENGTH_LONG).show();

        cloc cl = new cloc();
        cl.execute(lat,lon,dates);

    }

    @Override
    public void onProviderDisabled(String provider) {
        Log.d("Latitude","disable");
    }

    @Override
    public void onProviderEnabled(String provider) {
        Log.d("Latitude","enable");
    }

    @Override
    public void onStatusChanged(String provider, int status, Bundle extras) {
        Log.d("Latitude","status");
    }

    class cloc extends AsyncTask<String,String,String> {

        @Override
        protected String doInBackground(String... params) {

            WebServiceCaller caller=new WebServiceCaller();

            caller.setSoapObject("clocation");
            caller.addProperty("latitude",params[0]);
            caller.addProperty("longitude",params[1]);
            caller.addProperty("timestamp",params[2]);
            caller.callWebService();
            String res= caller.getResponse();          //???

            return res;                                //???
        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);
            if(s.equals("true")) {
                Toast.makeText(cLocation.this, "Location Added", Toast.LENGTH_LONG).show();
            }
            else
                Toast.makeText(cLocation.this, "No new Entries to Add", Toast.LENGTH_LONG).show();

            Intent k = new Intent(cLocation.this, MessageBox.class);
            startActivity(k);
        }

        }
    }