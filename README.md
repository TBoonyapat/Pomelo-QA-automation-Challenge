# Pomelo-QA-automation-Challenge
## Getting Started
> git clone https://github.com/TBoonyapat/Pomelo-QA-automation-Challenge.git

## Installation
### Python Packages

In the first step, check that your pip version is the latest with the below command. If your pip version is not the latest version, the below command will automatically upgrade your pip version.

> pip install pip --upgrade

Install required packages from [requirements.txt](/requirements.txt) with command as below.

> pip install -r requirements.txt --user

If you are use it for macOS you have to run the command as below the below command will install chromedriver for you.

> brew reinstall --cask chromedriver

```python
robotframework=5.0
chromedriver
```

## Usage


Command to run all test scripts

> robot part2.robot

Command to run some test scripts

> robot -i -tag- part2.robot