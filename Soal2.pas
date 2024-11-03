uses crt; //unit yang digunakan untuk mengakses beberapa fungsi, dalam hal ini contohnya adalah clrscr
var 
   pelanggan, jumlah, jenis, i, j : integer; //deklarasi variabel menjadi integer
   total, harga : real; // deklarasi variabel menjadi real
begin //mulai
  clrscr; // clear screen atau membersihkan layar agar tampilan lebih baik
  write('Masukkan Jumlah Pelanggan : '); readln(pelanggan); //user menginput banyaknya pelanggan
   repeat //melakukan perulangan
    writeln; writeln; //untuk mengenter sebanyak 2 baris
    writeln('Pelanggan Ke-',i + 1); //menuliskan pelanggan ke berapa, di sini saya buat i + 1 karena di pascal ketika kita tidak menginisialisasi, maka nilai defaultnya adalah 0
    write('Masukkan Jumlah Jenis Sayur yang Dibeli : '); readln(jenis); //user menginputkan banyaknya jenis sayur yang ingin dibeli
    writeln; writeln; //untuk mengenter sebanyak 2 baris
    repeat //melakukan perulangan untuk inputan harga dan jumlah pelanggan ke i
     write('Masukkan Harga Sayur Ke-',j + 1,' : '); readln(harga); //user menginput harga sayur ke-j untuk pelanggan ke-i
     write('Masukkan Jumlah Sayur yang Dibeli : '); readln(jumlah); //user menginput jumlah sayur untuk setiap jenis dan setiap pelanggan
     total := total + (harga * jumlah); //proses untuk menghitung total belanja untuk masing-masing pelanggan
     j := j + 1; //penambahan nilai j sebanyak satu setiap looping untuk penginputan harga dan jenis
    until (j = jenis); //kondisi berhentinya perulangan untuk looping penginputan harga dan jumlah, berhentik ketika j = jenis
    writeln('Total Belanja Untuk Pelanggan Ke-',i + 1,' : Rp ',total:0:2); //output untuk total belanja pelanggan ke-i
    total := 0; // mereser ulang nilai total menjadi 0 agar total pelanggan selanjutnya tidak tergabung dengan pelanggan sebelumnya
    j := 0; //mereset ulang nilai j menjadi 0 agar bisa dipakai untuk loopingan berikutnya
    i := i + 1; //penambahan nilai i sebanyak 1 setiap looping untuk looping utama
   until (i = pelanggan); //kondisi berhentinya perulangan untuk looping utama
end. //akhir dari program.
