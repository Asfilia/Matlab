package com.example.uts_18650040_asfilianovaanggraini_b;

public class Model {
    String id, nomor, simbol, nama, keterangan;

    public Model(String id, String nomor, String simbol, String nama, String keterangan){
        this.id=id;
        this.nomor=nomor;
        this.simbol=simbol;
        this.nama=nama;
        this.keterangan=keterangan;
    }
    public String getId(){
        return id;
    }
    public String getNomor(){
        return nomor;
    }
    public String getSimbol(){
        return simbol;
    }
    public String getNama(){
        return nama;
    }
    public String getKeterangan(){
        return keterangan;
    }
}
