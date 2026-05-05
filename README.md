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
   - `bye-world` is initialized

```
$ firebase emulators:start --project demo-project
(node:79061) [DEP0040] DeprecationWarning: The `punycode` module is deprecated. Please use a userland alternative instead.
(Use `node --trace-deprecation ...` to show where the warning was created)
i  emulators: Starting emulators: functions, extensions
i  emulators: Detected demo project ID "demo-project", emulated services will use a demo configuration and attempts to access non-emulated services for this project will fail.
i  functions: Watching "/PATH/firebase-tools/issues/10454/functions" for Cloud Functions...
i  functions: running build_runner...
✔  functions: Loaded functions definitions from source: hello-world, bye-world, another-hello-world.
✔  functions[us-central1-hello-world]: http function initialized (http://127.0.0.1:5001/demo-project/us-central1/hello-world).
✔  functions[us-central1-bye-world]: http function initialized (http://127.0.0.1:5001/demo-project/us-central1/bye-world).
✔  functions[us-central1-another-hello-world]: http function initialized (http://127.0.0.1:5001/demo-project/us-central1/another-hello-world).
i  functions: Starting build_runner watch for Dart functions...
✔  functions: build_runner initial build completed

┌─────────────────────────────────────────────────────────────┐
│ ✔  All emulators ready! It is now safe to connect your app. │
│ i  View Emulator UI at http://127.0.0.1:4000/               │
└─────────────────────────────────────────────────────────────┘

┌────────────┬────────────────┬──────────────────────────────────┐
│ Emulator   │ Host:Port      │ View in Emulator UI              │
├────────────┼────────────────┼──────────────────────────────────┤
│ Functions  │ 127.0.0.1:5001 │ http://127.0.0.1:4000/functions  │
├────────────┼────────────────┼──────────────────────────────────┤
│ Extensions │ 127.0.0.1:5001 │ http://127.0.0.1:4000/extensions │
└────────────┴────────────────┴──────────────────────────────────┘
  Emulator Hub host: 127.0.0.1 port: 4400
  Other reserved ports: 4500
┌─────────────────────────┬───────────────┬─────────────────────┐
│ Extension Instance Name │ Extension Ref │ View in Emulator UI │
└─────────────────────────┴───────────────┴─────────────────────┘
Issues? Report them at https://github.com/firebase/firebase-tools/issues and attach the *-debug.log files.
```

3. Call `http://127.0.0.1:5001/demo-project/us-central1/bye-world`

```
$ curl http://127.0.0.1:5001/demo-project/us-central1/bye-world
Function not found: bye-world
Available functions: hello-world
```
