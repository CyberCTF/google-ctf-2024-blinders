# Google CTF 2024: Blinders

[Blinders](https://github.com/google/google-ctf/tree/4a8f8d7808254d40f226ac2ab4604601e0e57d57/2024/quals/crypto-blinders), a crypto challenge from [Google CTF](https://capturetheflag.withgoogle.com/) 2024
(the official archive [google/google-ctf](https://github.com/google/google-ctf), by Google): a private set membership game: find which number from 0 to 255 is missing, with few queries.
This repository runs it with [Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine,
built by the challenge's own Dockerfile, vendored unchanged in [`app/`](app).

| Machine | Service |
| --- | --- |
| challenge | the Blinders service (socat + nsjail) on port 1337, published on 1337 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then connect with `nc localhost 1337`. The challenge runs in nsjail under kCTF's setup script, so the machine is privileged. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. The archive has no official write-up for this challenge; public write-ups are listed on CTFtime.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

Apache-2.0, as the Google CTF archive ([LICENSE](LICENSE)). The third-party software inside the image keeps its own
licence. This challenge is deliberately vulnerable: keep it isolated.
