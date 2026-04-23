# Lab 1: Modeliranje LTI sistema u Simulinku

## Zadatak vježbe
Cilj ove vježbe je upoznavanje sa Simulink okruženjem i modeliranje linearnih vremenski nepromjenljivih (LTI) sistema opisanih diferencijalnim jednačinama drugog reda.

### Postavka sistema
Posmatra se sistem opisan diferencijalnom jednačinom:
$$\ddot{x}(t) + 2\dot{x}(t) + 5x(t) = u(t)$$

Uz početne uslove:
* $x(0) = 1$
* $\dot{x}(0) = 1$

### Implementacija
U okviru vježbe realizovani su sljedeći modeli:
1. **Modeliranje integratorskim lancima:** Direktan prikaz diferencijalne jednačine pomoću integratora, sabirača i pojačanja.
2. **Analiza superpozicije:**
   * **Slobodni odziv ($x_{slob}$):** Odziv sistema na početne uslove uz nultu pobudu ($u(t)=0$).
   * **Prisilni odziv ($x_{pris}$):** Odziv sistema na vanjsku pobudu uz nulte početne uslove.
   * **Ukupni odziv:** Verifikacija da je $x(t) = x_{slob}(t) + x_{pris}(t)$.

### Pobuda
Kao pobudni signal $u(t)$ korištena je kombinacija step signala i rampi (kako je definisano u slici 20 PDF postavke) radi testiranja dinamike sistema.

---
## 📂 Datoteke u folderu
* `Z1.slx`: Osnovni model diferencijalne jednačine.
* `Z3.slx`: Model za verifikaciju principa superpozicije.
* `Priprema_Z1.slx` - `Priprema_Z4.slx`: Pripremni modeli za laboratorijsku vježbu.
