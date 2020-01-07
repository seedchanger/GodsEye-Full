package com.godseye.godseye;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DBConnection extends SQLiteOpenHelper {

    Context c;
    SQLiteDatabase sqLiteDatabase;
    DBConnection(Context context)
    {
        super(context,"DB1",null,1);
        c=context;
    }
    public void openConnection()
    {
        sqLiteDatabase=getWritableDatabase();
    }
    public  void closeConnection()
    {
        sqLiteDatabase.close();
    }
    @Override
    public void onCreate(SQLiteDatabase db) {

        String qury="create table tbl_reg(reg_id INTEGER PRIMARY KEY AUTOINCREMENT,name VARCHAR(20) NOT NULL,phone VARCHAR(13),pword VARCHAR(20),email VARCHAR(20))";
        db.execSQL(qury);

//        String add="create table tbl_add(id INTEGER PRIMARY KEY NOT NULL AUTOINCREMENT,num1 VARCHAR(20),n2 VARCHAR(20),sum VARCHAR(20))";
//        db.execSQL(add);
    }

    public boolean insert(String qury)
    {
        try
        {

            sqLiteDatabase.execSQL(qury);
            return true;
        }
        catch(Exception e)
        {
            return false;
        }
    }

    public Cursor select(String qury)
    {
        Cursor c=sqLiteDatabase.rawQuery(qury,null);
        return c;
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

    }
}
