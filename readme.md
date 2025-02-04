📝 Beskrivelse
Film CMS er et mini Content Management System (CMS) designet til at administrere filmrelateret indhold. Systemet er udviklet ved hjælp af PHP, HTML, JavaScript, og SCSS, og tilbyder en brugervenlig grænseflade til at tilføje, redigere og slette filmdata.

🚀 Funktioner
Filmoversigt: Viser en liste over tilføjede film med detaljer som titel, genre og udgivelsesår.
Tilføj ny film: Mulighed for at tilføje nye film til databasen via en formular.
Rediger film: Funktionalitet til at opdatere eksisterende filminformationer.
Slet film: Mulighed for at fjerne film fra systemet.
📂 Projektstruktur
classes/: Indeholder PHP-klasser til håndtering af filmdata og databaseforbindelser.
css/: Indeholder SCSS-filer, der bruges til styling af applikationen.
js/: Indeholder JavaScript-filer for interaktivitet og dynamisk indholdshåndtering.
settings/: Indeholder konfigurationsfiler, såsom databaseindstillinger.
uploads/: Mappe til uploadede filer, f.eks. filmplakater.
index.php: Hovedsiden, der viser filmoversigten.
insert.php: Håndterer indsættelse af nye film i databasen.
api.php: Tilbyder API-endpoints til CRUD-operationer på filmdata.
📦 Teknologier anvendt
PHP: Server-side scripting til backend-logik og databaseinteraktion.
HTML: Markup-sprog til strukturering af webindhold.
JavaScript: Brugt til klient-side interaktivitet og dynamisk indhold.
SCSS: Forprocessor for CSS, der tillader mere avanceret og modulær styling.
🔧 Installation
Følg disse trin for at installere og køre projektet lokalt:
1.Klon repository
git clone https://github.com/loay0013/film.git
cd film
2.Opsætning af server
Brug en lokal server som XAMPP eller MAMP.
Placer projektfilerne i serverens htdocs-mappe.
3.Konfigurer database
Opret en MySQL-database ved navn Film.
Importer Film.sql-filen for at oprette de nødvendige tabeller.
Opdater databaseforbindelsesoplysningerne i settings/db.php med dine databaseoplysninger.
4.Start serveren
Åbn din browser og naviger til http://localhost/film for at få adgang til CMS'et.
