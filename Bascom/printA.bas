$regfile = "m32def.dat"
$crystal = 16000000
$baud = 19200

Config Lcdpin = Pin , Rs = Portc.2 , E = Portc.3 , Db4 = Portc.4 , Db5 = Portc.5 , Db6 = Portc.6 , Db7 = Portc.7
Config Lcd = 16 * 2

Config Portd.7 = Output                                     'bzyczek
Portd = &B00000000


Cls
Cursor Off
Locate 1 , 1
Lcd "Tlumaczenie"
Lowerline
Locate 2 , 1
Lcd "ciagu znakow na"
Wait 2
Upperline
Locate 1 , 1
Cls
Lcd "ciagu znakow na"
Lowerline
Lcd "alfabet morsa"
Wait 3



Powrot:
Dim A As Byte
Dim Tekst As String * 16
Dim Znaki As String * 16                                    'dlugosc ciagu znakow
Cls
Locate 1 , 1
Lcd "Wprowadz tekst"
Print "Wprowadz tekst: "
Print
Lowerline
Do

Tekst = ""                                                  'czyszczenie stringa




   A = Waitkey()                                            'pobiera znak - litere
   Print Chr(a)                                             ' drukuje dany znak w terminalu
   If A = 13 Then Goto Odtw                                 ' wcisniecie enteru prowadzi do tlumaczenia
   Tekst = Tekst + Chr(a)                                   'przypisanie odpowiedniej nowej litery by moc ja wyswietlic na zywo na LCD
   Znaki = Znaki + Chr(a)                                   'zmienna string - ktora jest na biezaco uzupelniany o nowe znaki
                                                            'Na niej wykonywana jest iteracja i funkcja tlumaczenia
   Lcd Tekst                                                'na biezaco widzimy wpisywany tekst na wyswietlaczu LCD



   Loop

   Odtw:
   Cls
   Lcd Znaki
   Dim K As Byte
   K = Len(znaki)                                           'pobranie dlugosci ciagu znakow
   Dim Litera As Byte
   Goto Odczyt

   Odczyt:

   Litera = Right(znaki , K)                                'odczytywanie i przetwarzanie znaku
   Decr K


   If Litera = 97 Then                                      'sprawdzenie danego znaku i odpowiednie skierowanie do funkcji odtwarzajacy dany znak
   Goto Z97
   Elseif Litera = 98 Then                                  'litery od a do z
   Goto Z98
   Elseif Litera = 99 Then
   Goto Z99
   Elseif Litera = 100 Then
   Goto Z100
   Elseif Litera = 101 Then
   Goto Z101
   Elseif Litera = 102 Then
   Goto Z102
   Elseif Litera = 103 Then
   Goto Z103
   Elseif Litera = 104 Then
   Goto Z104
   Elseif Litera = 105 Then
   Goto Z105
   Elseif Litera = 106 Then
   Goto Z106
   Elseif Litera = 107 Then
   Goto Z107
   Elseif Litera = 108 Then
   Goto Z108
   Elseif Litera = 109 Then
   Goto Z109
   Elseif Litera = 110 Then
   Goto Z110
   Elseif Litera = 111 Then
   Goto Z111
   Elseif Litera = 112 Then
   Goto Z112
   Elseif Litera = 113 Then
   Goto Z113
   Elseif Litera = 114 Then
   Goto Z114
   Elseif Litera = 115 Then
   Goto Z115
   Elseif Litera = 116 Then
   Goto Z116
   Elseif Litera = 117 Then
   Goto Z117
   Elseif Litera = 118 Then
   Goto Z118
   Elseif Litera = 119 Then
   Goto Z119
   Elseif Litera = 120 Then
   Goto Z120
   Elseif Litera = 121 Then
   Goto Z121
   Elseif Litera = 122 Then
   Goto Z122

   Elseif Litera = 32 Then                                  'spacja
   Goto Z32
   Elseif Litera = 48 Then                                  'cyfry w kolejnosci od 0 do 9
   Goto Z48
   Elseif Litera = 49 Then
   Goto Z49
   Elseif Litera = 50 Then
   Goto Z50
   Elseif Litera = 51 Then
   Goto Z51
   Elseif Litera = 52 Then
   Goto Z52
   Elseif Litera = 53 Then
   Goto Z53
   Elseif Litera = 54 Then
   Goto Z54
   Elseif Litera = 55 Then
   Goto Z55
   Elseif Litera = 56 Then
   Goto Z56
   Elseif Litera = 57 Then
   Goto Z57


   End If

                                                                        ' po zakonczeniu otwarzania ciagu znakow program czysci zmienne i wraca
                                                                        ' do momentu gdzie ponownie mozemy wpisac dany tekst i zamienic go na morsa
Thanks:
Cls
Lcd Znaki
Wait 3
Tekst = ""
Znaki = ""
Goto Powrot




Z97:                                                        'caly alfabet morsa
Print "A"
      Cls
      Lcd "A"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "A ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "A . _"
      Waitms 600
      Goto Odczyt
Z98:
Print "B"
      Cls
      Lcd "B"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "B _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "B _ ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "B _ . ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "B _ . . ."
      Waitms 600
      Goto Odczyt

Z99:
Print "C"
      Cls
      Lcd "C"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "C _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "C _ ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "C _ . _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "C _ . _ ."
      Waitms 600
      Goto Odczyt

Z100:
Print "D"
      Cls
      Lcd "D"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "D _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "D _ ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "D _ . ."
      Waitms 600
      Goto Odczyt

Z101:
Print "E"
      Cls
      Lcd "E"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "E ."
      Waitms 600
      Goto Odczyt

Z102:
Print "F"
      Cls
      Lcd "F"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "F ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "F . ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "F . . _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "F . . _ ."
      Waitms 600
      Goto Odczyt

Z103:
Print "G"
      Cls
      Lcd "G"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "G _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "G _ _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "G _ _ ."
      Waitms 600
      Goto Odczyt

Z104:
Print "H"
      Cls
      Lcd "H"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "H ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "H . ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "H . . ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "H . . . ."
      Waitms 600
      Goto Odczyt

Z105:
Print "I"
      Cls
      Lcd "I"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "I ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "I . ."
      Waitms 600
      Goto Odczyt

Z106:
Print "J"
      Cls
      Lcd "J"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "J ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "J . _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "J . _ _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "J . _ _ _"
      Waitms 600
      Goto Odczyt

Z107:
Print "K"
      Cls
      Lcd "K"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "K _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "K _ ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "K _ . _"
      Waitms 600
      Goto Odczyt

Z108:
Print "L"
      Cls
      Lcd "L"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "L ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "L . _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "L . _ ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "L . _ . ."
      Waitms 600
      Goto Odczyt

Z109:
Print "M"
      Cls
      Lcd "M"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "M _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "M _ _"
      Waitms 600
      Goto Odczyt

Z110:
Print "N"
      Cls
      Lcd "N"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "N _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "N _ ."
      Waitms 600
      Goto Odczyt

Z111:
Print "O"
      Cls
      Lcd "O"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "O _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "O _ _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "O _ _ _"
      Waitms 600
      Goto Odczyt

Z112:
Print "P"
      Cls
      Lcd "P"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "P ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "P . _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "P . _ _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "P . _ _ ."
      Waitms 600
      Goto Odczyt

Z113:
Print "Q"
      Cls
      Lcd "Q"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "Q _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "Q _ _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "Q _ _ ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "Q _ _ . _"
      Waitms 600
      Goto Odczyt

Z114:
Print "R"
      Cls
      Lcd "R"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "R ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "R . _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "R . _ ."
      Waitms 600
      Goto Odczyt

Z115:
Print "S"
      Cls
      Lcd "S"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "S ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "S . ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "S . . ."
      Waitms 600
      Goto Odczyt

Z116:
Print "T"
      Cls
      Lcd "T"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "T _"
      Waitms 600
      Goto Odczyt

Z117:
Print "U"
      Cls
      Lcd "U"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "U ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "U . ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "U . . _"
      Waitms 600
      Goto Odczyt

Z118:
Print "V"
      Cls
      Lcd "V"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "V ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "V . ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "V . . ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "V . . . _"
      Waitms 600
      Goto Odczyt

Z119:
Print "W"
      Cls
      Lcd "W"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "W ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "W . _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "W . _ _"
      Waitms 600
      Goto Odczyt

Z120:
Print "X"
      Cls
      Lcd "X"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "X _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "X _ ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "X _ . ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "X _ . . _"
      Waitms 600
      Goto Odczyt

Z121:
Print "Y"
      Cls
      Lcd "Y"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "Y _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "Y _ ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "Y _ . _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "Y _ . _ _"
      Waitms 600
      Goto Odczyt

Z122:
Print "Z"
      Cls
      Lcd "Z"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "Z _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "Z _ ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "Z _ . _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "Z _ . _ _"
      Waitms 600
      Goto Odczyt

                                                            'cyfry
Z48:
Print "0"
      Cls
      Lcd "0"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "0 _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "0 _ _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "0 _ _ _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "0 _ _ _ _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "0 _ _ _ _ _"
      Waitms 600
      Goto Odczyt

Z49:
Print "1"
      Cls
      Lcd "1"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "1 ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "1 . _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "1 . _ _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "1 . _ _ _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "1 . _ _ _ _"
      Waitms 600
      Goto Odczyt

Z50:
Print "2"
      Cls
      Lcd "2"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "2 ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "2 . ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "2 . . _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "2 . . _ _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "2 . . _ _ _"
      Waitms 600
      Goto Odczyt

Z51:
Print "3"
      Cls
      Lcd "3"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "3 ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "3 . ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "3 . . ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "3 . . . _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "3 . . . _ _"
      Waitms 600
      Goto Odczyt

Z52:
Print "4"
      Cls
      Lcd "4"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "4 ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "4 . ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "4 . . ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "4 . . . ."
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "4 . . . . _"
      Waitms 600
      Goto Odczyt

Z53:
Print "5"
      Cls
      Lcd "5"
      Waitms 100
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "5 ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "5 . ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "5 . . ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "5 . . . ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "5 . . . . ."
      Waitms 600
      Goto Odczyt

Z54:
Print "6"
      Cls
      Lcd "6"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "6 _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "6 _ ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "6 _ . ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "6 _ . . ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "6 _ . . . ."
      Waitms 600
      Goto Odczyt

Z55:
Print "7"
      Cls
      Lcd "7"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "7 _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "7 _ _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "7 _ _ ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "7 _ _ . ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "7 _ _ . . ."
      Waitms 600
      Goto Odczyt

Z56:
Print "8"
      Cls
      Lcd "8"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "8 _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "8 _ _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "8 _ _ _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "8 _ _ _ ."
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "8 _ _ _ . ."
      Waitms 600
      Goto Odczyt

Z57:
Print "9"
      Cls
      Lcd "9"
      Waitms 100
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "9 _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "9 _ _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "9 _ _ _"
      Waitms 200
      Sound Portd.7 , 680 , 500
      Cls
      Lcd "9 _ _ _ _"
      Waitms 200
      Sound Portd.7 , 330 , 500
      Cls
      Lcd "9 _ _ _ _ ."
      Waitms 600
      Goto Odczyt

Z32:
      Print " "                                             'znak spacji
      Wait 1
      Goto Odczyt





End
