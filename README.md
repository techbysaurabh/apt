# techbysaurabh apt repository

Debian/Ubuntu packages, signed and served over HTTPS.

## Add the repository

```sh
curl -fsSL https://techbysaurabh.github.io/apt/key.gpg \
  | sudo tee /usr/share/keyrings/techbysaurabh.gpg > /dev/null

echo "deb [signed-by=/usr/share/keyrings/techbysaurabh.gpg] https://techbysaurabh.github.io/apt stable main" \
  | sudo tee /etc/apt/sources.list.d/techbysaurabh.list > /dev/null

sudo apt update
```

Or in one line:

```sh
curl -fsSL https://techbysaurabh.github.io/apt/install.sh | sh
```

## Packages

| Package | What it is |
|---|---|
| `meetinginsights` | Records a meeting, transcribes it and writes minutes — entirely on device. [Source](https://github.com/techbysaurabh/meetinginsights-linux) |

```sh
sudo apt install meetinginsights
```

Updates arrive with `sudo apt upgrade` like any other package.

## Signing key

Packages and the release index are signed with:

```
B4AE B2D7 5D9E 21EF 0BBB  69D3 F4B9 DC2F C9A9 819B
techbysaurabh apt repository <hi.techbysaurabh@gmail.com>
```

Only `amd64` is published. The key expires in 2031.
