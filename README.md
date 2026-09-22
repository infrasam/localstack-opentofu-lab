# LocalStack + OpenTofu – lärprojekt

Det här repot är ett separat nybörjarprojekt för Infrastructure as Code (IaC)
och GitOps. Du kommer att skriva implementationen själv. Jag hjälper dig med
ett moment i taget, förklarar varför vi gör det och granskar resultatet innan
vi går vidare.

## Målbild

Vi ska till slut kunna:

- starta LocalStack lokalt med Docker
- beskriva AWS-resurser med OpenTofu
- köra `fmt`, `validate`, `plan` och `apply`
- organisera kod i en root module och återanvändbara moduler
- versionshantera ändringar med Git
- automatiskt validera Pull Requests

## Struktur

```text
.
├── infrastructure/localstack/  # Här körs OpenTofu för den lokala miljön
├── modules/s3-bucket/          # Första återanvändbara modulen
├── environments/local/         # Värden för lokal miljö
├── scripts/                    # Hjälpskript för lokal utveckling
└── .github/workflows/          # CI kommer senare
```

Mapparna är avsiktligt tomma tills du själv fyller dem. Tomma mappar kan inte
versionshanteras av Git, så vi lägger till filer först när respektive moment
introduceras.

## Lektionerna

Vi tar detta i små steg:

1. Förstå Docker och starta LocalStack.
2. Skapa OpenTofus grundfiler och lås provider-versionen.
3. Anslut AWS-providern till LocalStack, inte till riktiga AWS.
4. Skapa en enkel S3-bucket.
5. Läsa `plan` och förstå state.
6. Flytta bucket-koden till en modul.
7. Lägga till outputs, variabler och lokal miljökonfiguration.
8. Lägga till GitHub Actions för format och validering.
9. Bygga ett tryggt GitOps-flöde med branch, Pull Request och review.

Vi börjar inte med en stor färdig lösning. Varje fil kommer från ett konkret
behov, så att du lär dig sambandet mellan kod, plan och faktisk resurs.

## Grundregel

Kör aldrig `apply` mot riktig AWS innan vi uttryckligen har gått igenom
provider-konfiguration, credentials, state och säkerhetskontroller.

