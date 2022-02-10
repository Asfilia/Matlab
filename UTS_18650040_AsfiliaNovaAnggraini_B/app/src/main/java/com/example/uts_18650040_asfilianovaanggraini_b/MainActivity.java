package com.example.uts_18650040_asfilianovaanggraini_b;

import android.app.ProgressDialog;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class MainActivity extends AppCompatActivity {

    EditText nomor, simbol, keterangan, nama;
    String Nomor, Simbol, Keterangan, Nama;
    Button button;
    Boolean valid = true;
    ProgressDialog progressDialog;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        nomor = (EditText) findViewById(R.id.nomor);
        simbol = (EditText) findViewById(R.id.simbol);
        keterangan = (EditText) findViewById(R.id.keterangan);
        nama = (EditText) findViewById(R.id.nama);
        progressDialog = new ProgressDialog(this);
        button = (Button) findViewById(R.id.button);

        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Nomor = nomor.getText().toString();
                Simbol = simbol.getText().toString();
                Keterangan = keterangan.getText().toString();
                Nama = nama.getText().toString();

                if(TextUtils.isEmpty(Nomor)){
                    nomor.setError("Nomor Unsur Cannot be Empty");
                    valid = false;
                }else {
                    valid = true;

                    if(TextUtils.isEmpty(Simbol)){
                        simbol.setError("Simbol Unsur Cannot be Empty");
                        valid = false;
                    }else {
                        valid = true;

                        if(TextUtils.isEmpty(Keterangan)){
                            keterangan.setError("Keterangan Cannot be Empty");
                            valid = false;
                        }else {
                            valid = true;

                            if(TextUtils.isEmpty(Nama)){
                                nama.setError("Nama Unsur Cannot be Empty");
                                valid = false;
                            }else {
                                valid = true;
                            }
                        }

                    }
                }

                if(valid){
                    progressDialog.setMessage("Loading");
                    progressDialog.show();

                    StringRequest stringRequest = new StringRequest(Request.Method.POST, Constants.URL_ADD, new Response.Listener<String>() {
                        @Override
                        public void onResponse(String response) {
                            progressDialog.dismiss();
                            try{
                                JSONObject jsonObject = new JSONObject(response);
                                Toast.makeText(MainActivity.this, jsonObject.getString("message"), Toast.LENGTH_SHORT).show();
                                if(jsonObject.getString("message").equals("Data Added Successfully")){
                                    ListActivity.ma.refresh_list();
                                    finish();
                                }
                            }catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                    }, new Response.ErrorListener() {
                        @Override
                        public void onErrorResponse(VolleyError error) {
                            progressDialog.hide();
                            Toast.makeText(MainActivity.this, "Failed to Data",Toast.LENGTH_SHORT).show();
                        }
                    }){
                        protected Map<String , String> getParams() throws AuthFailureError {
                            Map<String , String> params = new HashMap<>();
                            params.put("simbol", Simbol);
                            params.put("nomor", Nomor);
                            params.put("nama", Nama);
                            params.put("keterangan",Keterangan);
                            return params;
                        }
                    };
                    RequestHandler.getInstance(MainActivity.this).addToRequestQueue(stringRequest);

                }
            }
        });
    }
}
