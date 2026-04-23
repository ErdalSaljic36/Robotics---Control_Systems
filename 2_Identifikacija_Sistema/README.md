# Lab 2: Identifikacija realnog sistema (Aperiodski blok I reda)

## Zadatak vježbe
Cilj ove vježbe je eksperimentalno određivanje parametara nepoznatog sistema (termičke komore) na osnovu njegovog odziva na odskočnu funkciju (step response). Fokus je na automatizaciji procesa identifikacije pomoću MATLAB skripti.

### Opis problema
Sistem se modelira kao aperiodski blok prvog reda sa prenosnom funkcijom:
$$G(s) = \frac{K}{\tau s + 1}$$

Zadatak je odrediti:
1. **Statičko pojačanje ($K$):** Odnos promjene izlaza i promjene ulaza u ustaljenom stanju.
2. **Vremensku konstantu ($\tau$):** Vrijeme potrebno da odziv dostigne 63.2% svoje finalne vrijednosti.

### Implementirano rješenje
Razvijen je algoritam koji automatski obrađuje snimljene podatke:
* **Kompenzacija ambijenta:** Algoritam sam detektuje početnu temperaturu ($T_a$) i vrši pomjeranje (bias correction) signala.
* **Detekcija početka:** Automatsko prepoznavanje trenutka kada pobuda počinje djelovati.
* **Robusnost:** Korištenje srednje vrijednosti (mean) zadnjih 10% signala za stabilno određivanje finalne vrijednosti, čime se eliminiše uticaj šuma.

---

## 📂 Sadržaj foldera
 `identificirajAperiodskiBlok1.m` - Funkcija koja prima sirove podatke i vraća izračunate parametre $K$ i $\tau$. 
 `zad3.m` - Glavna skripta koja vrši validaciju: iscrtava mjereni odziv naspram identifikovanog modela. 

---

## 📈 Rezultati validacije
Nakon identifikacije, skripta vrši poređenje modela sa stvarnim podacima. Uspješna identifikacija se potvrđuje preklapanjem `lsim` simulacije identifikovanog sistema sa snimljenim eksperimentalnim podacima, uz minimalno kvadratno odstupanje.



## 🛠️ Korišteni alati
* **MATLAB** (Data processing, Signal visualization)
* **Transfer Function Modeling** (LTI system representation)
