uses crt; //unit yang digunakan untuk mengakses beberapa fungsi, dalam hal ini contohnya adalah clrscr
var a, b, n : integer; //deklarasi variabel untuk a, b, n menjadi integer
begin //mulai
  clrscr; // clear screen atau membersihkan layar agar tampilan lebih baik
  write('n = '); readln(n); //user menginputkan n yang menunjukkan ukuran dari pola X atau diagonalnya
   if n mod 2 = 1 then //kondisi ketika n ganjil
    begin //mulai untuk kondisi tersebut
     for a := 1 to n do //perulangan untuk a, di sini kita anggap sebagai baris jika kita memvisualisasikannya dalam matriks persegi
      begin //mulai untuk looping a
       for b := 1 to n do //perulangan untuk b, di sini kita anggap sebagai kolom jika kita memvisualisasikannya dalam matriks persegi
        begin //mulai untuk looping b
         if (a = b) or (a + b = n +1) then write('*') //kondisi untuk menuliskan '*' ketika (baris = kolom) atau baris + kolom = n + 1
         else write(' '); //menuliskan karakter spasi jika kondisi di atas yaitu kondisi menuliskan '*' tidak terpenuhi
        end; //akhir dari looping b
         writeln; // Ini Untuk Membuat Baris Baru
      end; //akhir dari looping a
    end //akhir dari kondisi ketika n ganjil
   else writeln('Angka Tidak Valid, Harus Angka Ganjil.'); //output ketika n tidak ganjil
end. //akhir dari program.
