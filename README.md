# Repro for issue 10453

## Versions

firebase-tools: v15.16.0<br>
firebase_functions: v0.5.2 <br>

```
$ dart pub deps | grep firebase_functions
├── firebase_functions 0.5.2
```

## Steps to reproduce

1. Install dependencies
2. Run `firebase emulators:start --project demo-project`
3. Call `http://127.0.0.1:5001/demo-project/us-central1/bye-world`

```
$ curl http://127.0.0.1:5001/demo-project/us-central1/bye-world
Function not found: bye-world
Available functions: hello-world
```
