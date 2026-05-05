# Mini-project

Smart Ansible Server Monitoring

Automaattinen Linux‑palvelimen valvontajärjestelmä, joka asentuu yhdellä komennolla Ansiblella.

- **Tekijät:** Minttu Hillebrandt & Aaro Hinkkanen
- **Lisenssi:** GNU General Public License v3.0 

Demo: https://www.youtube.com/watch?v=4JByZLupOuM 

<img width="1004" height="574" alt="Projektin kuva." src="https://github.com/user-attachments/assets/2764dd0c-ec06-4201-99eb-409ce8a6c1c0" />


# Projektin tarkoitus

Projektin tavoitteena on tarjota kevyt, automatisoitu ja helposti toistettava palvelinvalvontaratkaisu, joka seuraa CPU‑, RAM‑ ja levytilan käyttöä ja kirjaa varoitukset lokiin. Ansible hoitaa koko asennuksen automaattisesti, joten valvonta voidaan ottaa käyttöön useilla palvelimilla yhdellä komennolla.

# Lataus & Asennus & Käyttöönotto

Lataa projekti:

<img width="1827" height="861" alt="Download_ZIP" src="https://github.com/user-attachments/assets/7c9583c7-c1e1-4acc-b364-7721f675b0a1" />

Kuvan mukaisesti voi ladata projektimme ZIP-tiedoston, jonka voi purkaa Linux-tietokoneella ja ajaa sen paikallisesti.

````
Itse playbook ajetaan komentorivillä ~/Mini-project --> ansible-playbook -i inventory site.yml -K
````

# Projektin rakenne

<img width="1004" height="671" alt="image" src="https://github.com/user-attachments/assets/26ce7bca-2916-4902-b25d-653bf59f0575" />


# Simuloi korkea CPU‑kuorma:
Kuormittaa:
````
yes > /dev/null &
````
Tarkista loki:
````
/usr/local/bin/dashboard.sh
````

Tarkista varoitus:
````
/usr/local/bin/alert.sh
````

# Käytetyt teknologiat
- Ansible
- Bash‑skriptit (alert.sh, collect.sh, dashboard.sh)
- Cron

# Jatkokehitysideoita
- Sähköposti‑ tai Telegram‑hälytykset
- Graafinen dashboard 
