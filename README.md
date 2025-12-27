# Hacking Sandbox

Egy egyszerű Kali Linux alapú sandbox környezet Docker konténerben, hacking és tesztelés céljából.

## Előfeltételek

- [Docker](https://www.docker.com/) telepítve és fut.
- [Docker Compose](https://docs.docker.com/compose/) (általában a Docker Desktop-ban benne van).

## Telepítés

1. Klónozd a repót:
   ```bash
   git clone https://github.com/SzmrLevee/hackbox.git
   cd hackbox
   ```

2. Építsd fel a konténert:
   ```bash
   docker compose build
   ```

## Használat

### Alapvető parancsok

- Konténer indítása:
  ```bash
  docker compose run kali
  ```

- Kilépés a konténerből:
  ```bash
  exit
  ```

- Konténer leállítása és tisztítás:
  ```bash
  docker compose down --remove-orphans
  ```

### Alias beállítása (opcionális, kényelmi funkció)

Hozz létre egy aliast a gyors eléréshez különböző operációs rendszereken.

#### Linux:
```bash
nano ~/.bashrc
# Add: alias hackbox="docker compose run kali"
source ~/.bashrc
cd hackbox
hackbox
```

#### Mac:
```bash
code ~/.zshrc
# Add: alias hackbox="docker compose run kali"
source ~/.zshrc
cd hackbox
hackbox
```

#### Windows (WSL vagy hasonló):
```bash
nano ~/.bashrc
# Add: alias hackbox="docker compose run kali"
source ~/.bashrc
cd hackbox
hackbox
```

## Funkciók

- Izolált környezet Kali Linux-szal.
- Nincs internet hozzáférés alapértelmezetten (biztonságos).
- Volumes mount: `./results` mappa elérhető a konténerben `/home/sandbox/results` alatt.
- Telepített eszközök: curl, wget, git, ping, net-tools, nano.

## Biztonság

- A konténer `network_mode: none` beállítással fut, tehát nincs hálózati hozzáférés.
- Non-root felhasználó (`sandbox`) használata.

## Licensz

Ez a projekt szabadon használható. Lásd a LICENSE fájlt (ha van).