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
````
yes > /dev/null &
````
Tarkista loki:
````
- test
````

Tarkista varoitus:
````
- test
````

# Käytetyt teknologiat
- Ansible
- Bash‑skriptit (alert.sh, collect.sh, dashboard.sh)
- Cron

# Jatkokehitysideoita
- Sähköposti‑ tai Telegram‑hälytykset
- Graafinen dashboard 



# Kuvia mintulle
<img width="1568" height="327" alt="image" src="https://github.com/user-attachments/assets/fe35fd5a-128c-4bbb-8a1c-0b17fc012e56" />
<img width="1041" height="150" alt="image" src="https://github.com/user-attachments/assets/ac2b5d78-a82b-4b21-903f-c12ca6113d9d" />
<img width="1568" height="364" alt="image" src="https://github.com/user-attachments/assets/9293ffcc-8e54-4cac-865a-4fbcb71cfbf5" />
<img width="1208" height="115" alt="image" src="https://github.com/user-attachments/assets/9ce8d406-e7d1-43bd-8aaf-a3cd849285c5" />
<img width="1568" height="280" alt="image" src="https://github.com/user-attachments/assets/b5e2ebdd-acf0-40d1-b1ed-eee6b296f70e" />




