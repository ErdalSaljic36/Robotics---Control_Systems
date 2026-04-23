# Lab 4: Projektovanje i podešavanje PID regulatora

## Zadatak vježbe
Finalna faza projekta fokusirana je na sintezu digitalnog PID regulatora za stabilizaciju ugla otklona klatna. Cilj je postići stabilan odziv sa minimalnim preskokom i brzim vremenom smirenja koristeći metodu zatvorenog kruga.

### Implementacija upravljanja
Sistem je realizovan kao jednokružni sistem sa negativnom povratnom spregom u Simulinku:
1. **Regulator:** PID (Proportional-Integral-Derivative) blok sa parametrima izračunatim na osnovu dinamike sistema.
2. **Objekat:** Linearizovani model sistema propeler-klatno definisan u prethodnim fazama.
3. **Povratna sprega:** Kontinuirano mjerenje ugla $\theta$ i poređenje sa referentnom vrijednošću $\theta_{ref}$.

### Metodologija podešavanja (Ziegler-Nichols)
Za određivanje optimalnih parametara regulatora korištena je **metoda kritičnog pojačanja**:
* **Kritično pojačanje ($K_{cr}$):** Vrijednost pojačanja pri kojoj sistem ulazi u režim neprigušenih oscilacija na granici stabilnosti.
* **Kritični period ($T_{cr}$):** Period oscilacija sistema na granici stabilnosti.
* **Proračun:** Na osnovu ovih vrijednosti, prema Z-N tabeli, izračunata su pojačanja za P, PI i PID strukture regulatora kako bi se osigurala optimalna stabilnost i brzina odziva.

---

## 📂 Sadržaj foldera


 `Drugi.slx` -  Simulink model sa povratnom spregom i PID regulatorom.  |
 `z2a.m` - Skripta za ispis odziva sistema i grafički prikaz performansi regulatora.  |

---

## Analiza performansi
Glavni fokus skripte `z2a.m` je vizualizacija odziva sistema na step promjenu referentne vrijednosti.  Analizirani su:
* **Vrijeme smirenja:** Brzina kojom klatno dostiže željeni ugao.
* **Preskok:** Maksimalno odstupanje od željene vrijednosti tokom prelaznog procesa.
* **Greska u stacionarnom stanju:** Preciznost regulatora u održavanju ugla u ustaljenom stanju.

## Tehnički koncepti
* **Upravljanje sa povrantom spregom:** Zatvorena petlja za automatsku korekciju greške.
* **Ziegler-Nichols tjuniranje:** Inženjerska metoda za podešavanje parametara regulatora.
* **Analiza u vremenskoj domeni:** Evaluacija kvaliteta upravljanja kroz prelazni proces.
