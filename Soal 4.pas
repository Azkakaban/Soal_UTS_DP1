uses crt; //unit yang digunakan untuk mengakses beberapa fungsi, dalam hal ini contohnya adalah clrscr
var kembalian, jenis, lembar : longint; //deklarasi variabel,untuk lembar sebenarnya bisa pakai integer,tapi agar hemat saya pakai longint
begin // mulai
  clrscr; // clear screen atau membersihkan layar agar tampilan lebih baik
  readln(kembalian); // user menginput kembalian
     jenis := 100000; //inisialisasi nilai jenis menjadi 100000
   if (kembalian >= 225000) and (kembalian < 230000) then jenis := 75000; // Inisialisasi jenis menjadi 75000 jika kondisi Ini memenuhi, kondisi ini diperlukan karena jika kita analisis ada perilaku yang unik dalam rentang tersebut jika tidak ada ini, maka ketika diinput 225000 hasilnya adalah 4, padahal hasil sebenarnya adalah 3, ini terjadi karena program membaca 100000 x 2, 20000 x1 dan 5000 x 1 sehingga totalnya 4 lembar, padahal seharusnya 75000 x 3 atau 100000 x 1, 75000 x1 dan 50000 x 1, perilaku ini berlaku hingga 229999
      repeat // memulai perulangan utama untuk menentukan banyaknya lembar kembalian
      lembar := lembar + (kembalian div jenis); // proses untuk mendapatkan banyaknya lembar kembalian
      kembalian := kembalian mod jenis; // sisa bagi ketika kembalian dibagi oleh jenis harga tertentu
         if (jenis = 100000) then jenis := 75000     // konversi jenis dari 100000 menjadi 75000
         else if (jenis = 75000) then jenis := 50000 // konversi jenis dari 75000 menjadi 50000
         else if (jenis = 50000) then jenis := 20000 // konversi jenis dari 50000 menjadi 20000
         else if (jenis = 20000) then jenis := 10000 // konversi jenis dari 20000 menjadi 10000
         else if (jenis = 10000) then jenis := 5000  // konversi jenis dari 10000 menjadi 5000
         else if (jenis = 5000)  then jenis := 2000  // konversi jenis dari 5000 menjadi 2000
         else if (jenis = 2000)  then jenis := 1000  // konversi jenis dari 2000 menjadi 1000
         else if (jenis = 1000)  then jenis := 500   // konversi jenis dari 1000 menjadi 500
         else if (jenis = 500)   then jenis := 200   // konversi jenis dari 500 menjadi 200
         else if (jenis = 200)   then jenis := 100;  // konversi jenis dari 200 menjadi 100
      until (kembalian < 100); // akhir dari looping, sampai kurang dari 100 karena kita tidak memiliki jenis harga lagi di bawah 100
  writeln(lembar); //output untuk lembar
end. //akhir dari program.
