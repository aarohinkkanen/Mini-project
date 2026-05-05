# h6

Projektin tarkoitus on luoda automatisoitu järjestelmän tilanvalvonta ohjelma, joka tarkastaa paikallisen tietokoneen eri osien kuormitusta. Automatisointi tehdään Ansiblen avulla. Lopputuloksena paikalliselle tietokoneelle on asentunut paketteja ja skriptejä joiden avulla pystytään komentoriviltä tarkastamaan jatkuvasti koneen kuormitus tasoja.

## Kokonaisuuden hahmotelma
Alla näkyvässä kuvassa on hakemistopuu rakenne, joka kuvaa projetkin sisällön.
<img width="1004" height="671" alt="image" src="https://github.com/user-attachments/assets/1a991763-455f-441e-a9d1-b023b8857498" />

## Ohjeistus
Luodaan hakemisto rakenne "monitoring" Mini-project nimisen kansion sisään
````
mkdir monitoring
cd monitoring/
mkdir files
mkdir handlers
mkdir tasks
cd ~/code/Mini-project/monitoring/files/
micro collect.sh
micro dashboard.sh
micro alert.sh
cd ~/code/Mini-project/monitoring/handlers/
micro main.yml
cd ~/code/Mini-project/monitoring/tasks/
micro main.yml
````

Luodaan Mini-project nimiseen kansioon tiedosto nimeltä inventory
````
micro inventory
````

Luodaan Mini-project nimiseen kansioon site.yml
````
micro site.yml
````

## Tiedostojen sisällöt
### files kansion sisältämät skripti tiedostojen sisällöt
````
collect.sh
````
<img width="1747" height="614" alt="image" src="https://github.com/user-attachments/assets/e307375d-6d45-4a0c-af1c-a5d3fccad25d" />

````
dashboard.sh
````
<img width="1239" height="662" alt="image" src="https://github.com/user-attachments/assets/b21bce8f-7320-40a5-a36a-4e63a8d1f1c1" />





## Lähteet: 

- https://terokarvinen.com/palvelinten-hallinta/#h6-miniprojekti 
- https://www.linuxoperatingsystem.net/yes-command-line-in-linux-a-comprehensive-guide/ 
