# Lab 1: Modeliranje LTI sistema u Simulinku

## Zadatak vježbe
Primarni cilj ove vježbe je upoznavanje sa Simulink okruženjem i modeliranje linearnih vremenski nepromjenljivih (LTI) sistema opisanih diferencijalnim jednačinama drugog reda ili prenosnim funkcijama.

### Postavka sistema
U vježbi se analizira sistem opisan diferencijalnom jednačinom:
$$\ddot{x}(t) + 2\dot{x}(t) + 5x(t) = u(t)$$

Uz zadate početne uslove:
* $x(0) = 1$
* $\dot{x}(0) = 1$

### Ključne aktivnosti
1. **Modeliranje integratorskim lancima:** Izgradnja modela direktno iz diferencijalne jednačine koristeći blokove `Integrator`, `Sum` i `Gain`.
2. **Analiza superpozicije:** * Razdvajanje odziva na **slobodno kretanje** (uslijed početnih uslova) i **prisilno kretanje** (uslijed vanjske pobude).
   * Verifikacija da je ukupni odziv suma ova dva pojedinačna odziva.
3. **Složeni ulazni signali:** Realizacija pobude $u(t)$ koja se sastoji od kombinacije step signala i rampi sa vremenskim pomacima.

---

## Sadržaj foldera

U ovom folderu se nalaze sljedeći Simulink modeli:


`Z1.slx` - Glavni model diferencijalne jednačine drugog reda sa zadatim početnim uslovima. |
`Z2.slx` - Modeliranje sistema sa specifičnim pobudama (npr. delta funkcija realizovana preko impulsa ili izvoda stepa). |
`Z3.slx` - Verifikacija principa superpozicije (istovremeno prikazivanje slobodnog, prisilnog i ukupnog odziva). |
