package com.example.uts_18650040_asfilianovaanggraini_b;

import android.os.Bundle;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

public class DetailData extends AppCompatActivity {
    TextView nomor, simbol, keterangan, nama;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_data);

        nomor = (TextView) findViewById(R.id.nomor);
        simbol = (TextView) findViewById(R.id.simbol);
        keterangan = (TextView) findViewById(R.id.keterangan);
        nama = (TextView) findViewById(R.id.nama);

        nomor.setText(getIntent().getStringExtra("nomor"));
        simbol.setText(getIntent().getStringExtra("simbol"));
        keterangan.setText(getIntent().getStringExtra("keterangan"));
        nama.setText(getIntent().getStringExtra("nama"));
    }
}


