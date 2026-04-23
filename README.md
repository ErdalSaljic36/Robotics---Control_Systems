# Robotics & Control Systems Portfolio
**Autor:** Erdal Šaljić | ETF Sarajevo
**Odsjek:** Automatika i elektronika

## Pregled projekata
Ovaj repozitorij sadrži praktičnu primjenu teorije upravljanja kroz četiri laboratorijske vježbe. Fokus je na cjelokupnom procesu: od modeliranja diferencijalnih jednačina, preko identifikacije realnih parametara, do projektovanja PID regulatora za stabilizaciju sistema.

---

## Struktura i teme laboratorijskih vježbi

### 1. Modeliranje LTI sistema
* **Opis:** Implementacija linearnih vremenski nepromjenljivih (LTI) sistema drugog reda u Simulinku.
* **Ključni koncepti:** Modeliranje pomoću integratorskih lanaca, rješavanje diferencijalnih jednačina i verifikacija principa superpozicije (slobodni i prisilni odziv).
* **Datoteke:** `Z1.slx`, `Z3.slx`.

### 2. Identifikacija aperiodskog bloka prvog reda
* **Opis:** Automatizacija procesa identifikacije parametara realnog sistema (termička komora) na osnovu eksperimentalnog step odziva.
* **Ključni koncepti:** Razvijen algoritam za ekstrakciju statičkog pojačanja ($K$) i vremenske konstante ($\tau$) koristeći pravilo 63.2%, uz kompenzaciju ambijentalne temperature.
* **Datoteke:** `identificirajAperiodskiBlok1.m`, `zad3.m`.

### 3. Frekventna karakteristika sistema klatna
* **Opis:** Analiza dinamičkog ponašanja sistema fizičkog klatna sa propelerom u frekventnom domenu.
* **Ključni koncepti:** Generisanje Bodeovih i Nyquistovih dijagrama, analiza rezervi stabilnosti (Gain & Phase Margin) i simulacija sa šumom senzora (AWGN).
* **Datoteke:** `LV3_Z1.m`, `LV3_Z2.m`, `LV3_Z3.m`.

### 4. Projektovanje PID regulatora
* **Opis:** Sinteza i implementacija digitalnog PID regulatora za upravljanje uglom otklona klatna.
* **Ključni koncepti:** Podešavanje parametara regulatora ($K_p$, $T_i$, $T_d$) pomoću **Ziegler-Nichols metode** (metoda kritičnog pojačanja) i testiranje robusnosti sistema na smetnje.
* **Datoteke:** `Drugi.slx`, `z2a.m`.

---

## Tehnologije i alati
* **MATLAB** (Control System Toolbox)
* **Simulink** (Sinteza povratne sprege i dinamička simulacija)
* **Teorija upravljanja:** Frekventna analiza, PID tuning, LTI sistemi.
