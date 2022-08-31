# small `x86_64-unknown-linux-musl` binary creation with container

```console
$ docker build . -t testing:latest
$ scuba --image testing:latest ./run.sh
```
