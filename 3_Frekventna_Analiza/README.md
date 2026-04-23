# Lab 3: Frekventna analiza mehatroničkog sistema (Propeler-Klatno)

## Zadatak vježbe
Analiza dinamičkog ponašanja sistema klatna pokretanog DC motorom sa propelerom. Fokus vježbe je na modeliranju složenog sistema i određivanju njegovih rezervi stabilnosti u frekventnom domenu.

### Model sistema
Sistem se sastoji od dvije ključne komponente:
1. **Model DC motora ($G_M$):** Aproksimiran kao sistem drugog reda sa pojačanjem $K_M = 1698$ i vremenskom konstantom $T_M = 0.1984s$.
2. **Model klatna ($G_K$):** Rotaciona dinamika definisana momentom inercije ($I$), koeficijentom prigušenja ($\xi$) i uticajem gravitacije.

Ukupna prenosna funkcija sistema $G(s)$ objedinjuje električne, aerodinamičke (potisak propelera) i mehaničke parametre.

### Analiza stabilnosti
U okviru vježbe provedena je detaljna analiza stabilnosti otvorene petlje:
* **Bodeov dijagram:** Određivanje fazne rezerve (Phase Margin) i amplitudne rezerve (Gain Margin).
* **Nyquistov kriterij:** Vizuelna potvrda stabilnosti sistema i analiza ponašanja u kompleksnoj ravni.

### Simulacija u realnim uslovima
Sistem je testiran na sinusoidnu pobudu uz dodatak **AWGN (Additive White Gaussian Noise)** šuma (25 dB) kako bi se simulirali realni uslovi mjerenja senzora. Izračunato je eksperimentalno pojačanje i fazni pomak te upoređeno sa teoretskim modelom.

---

##  Sadržaj foldera
 `LV3_Z1.m` -  Proračun prenosne funkcije motora, propelera i klatna. 
 `LV3_Z2.m` - Generisanje Bodeovih i Nyquistovih dijagrama sa marginama stabilnosti. 
 `LV3_Z3.m` - Simulacija odziva na sinusoidni ulaz sa šumom senzora. 

---

## 🛠️ Tehnički koncepti
* **LTI Sistemi:** Kaskadno povezivanje podsistema.
* **Frekventni odziv:** Analiza amplitude i faze u zavisnosti od frekvencije.
* **Robustnos:** Evaluacija sistema u prisustvu visokofrekventnog šuma.
