uses crt; //unit yang digunakan untuk mengakses beberapa fungsi, dalam hal ini contohnya adalah clrscr
var //deklarasi variabel
   member : string; //deklarasi variabel untuk member menjadi string
   jarak, total : real; //deklarasi variabel menjadi real,sebenarnya untuk jarak bisa memakai integer / longint tapi agar hemat saya pakai real
begin //mulai
clrscr; // clear screen atau membersihkan layar agar tampilan lebih baik
   write('Jarak (KM) : '); readln(jarak); // user menginputkan jarak
   write('Anggota Premium : '); readln(member); // user menginputkan apakah member atau bukan
   member := upcase(member); //membuat inputan member menjadi huruf besar semua
    if (jarak < 5) then total := (5000 * jarak) + 20000 // kondisi ketika jarak kurang dari 5KM
    else if (jarak >= 5) and (jarak <= 10) then total := (4000 * jarak) + 20000 //kondisi ketika jarak antara 5 dan 10KM
    else if (jarak > 10) then total := (3000 * jarak) + 20000; //kondisi ketika jarak lebih dari 10KM
    if (total > 100000) then total := (9 / 10) * total; //kondisi ktika biaya lebih dari 100000
    if (member = 'TRUE') then total := (95 /100) * total; //kodisi ketika user adalah member
   writeln('Total Akhir : Rp',total:0:0); //output untuk total biaya
end. //akhir dari program.
