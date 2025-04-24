# Music Club Discord Bot

A discord.py bot that uses the gspread API to manage a Music Club.

## Setup

### What you will need

- Knowledge on how to set up a discord bot
- A bot hosting solution
- Discord Token
- Channel or thread ID
- Google Sheets
- Credentials for gspread ([Authentication](https://docs.gspread.org/en/v6.1.3/oauth2.html))
- Tenor API Key
- A .env file with each of these filled out with the proper values:
  - DISCORD_TOKEN
  - TENOR_APIKEY
  - gspread credentials:
    - PROJECT_ID
    - PRIVATE_KEY_ID
    - PRIVATE_KEY
    - CLIENT_EMAIL
    - CLIENT_ID
    - AUTH_X509_CERT_URL
    - CLIENT_X509_CERT_URL

### Setup for the Google sheet

- **Google Sheet Cell Column Order**: Submitter | Artist | Album | Date | Genre
