# Kbot

This is a simple Go application that reads messages from a Telegram bot and sends answers back to the user. It utilizes the Telegram Bot API to interact with the Telegram platform.

Access with https://t.me/zombierebel_bot

## Installation

1. Clone the repository using the following command:

```
    git clone https://github.com/ZombieRebel/telegrambot.git
```


2. Enter the project directory:
```
    cd kbot
```

3. Make a build specifying target OS and architecture (`linux` and `arm64` are used by default):
   ```
   make build TARGET_OS={YOUR_OS} TARGET_ARCH={YOUR_ARCHITECTURE}
   ```

4. Create a Telegram bot with BotFather:
   - Open Telegram and search for the BotFather bot (https://t.me/BotFather).
   - Start a chat with BotFather and use the command /newbot to create a new bot.
   - Provide a name and a username for your bot when prompted.

5. Click the access token to copy it

6. Run the following command to set the access token as an environment variable, paste your access token and press Enter.
   
```
   read -s TELE_TOKEN
```   

7. Export the access token as an environment variable using the following command:
```
   export TELE_TOKEN
```

8. Start the application by running 
 ```
    ./telegrambot start
```

9. Test the application using the Telegram bot link provided by BotFather.

## Accepted commands 
help - returns help
version - return the version of kbot

## Usage

Kbot application will listen for incoming messages. You can interact with Kbot using the Telegram app.

The application will check the received messages and send appropriate responses back to the user.

**Version 1.0.3 can process only "hello" message**