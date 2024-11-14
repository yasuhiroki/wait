# ywait

Wait for other processes to finish

## Description

`ywait` is a utility tool to wait for other processes to finish before proceeding. It is useful in scripting and automation tasks where the execution order of processes is important.

## Installation

To install `ywait`, you can use the following command:

```sh
curl -O https://raw.githubusercontent.com/yasuhiroki/ywait/refs/heads/main/ywait
chmod +x ywait
```

## Usage

To use `ywait`, simply run the command followed by the process IDs (PIDs) you want to wait for. For example:

```sh
./ywait 1234 5678
```

This will wait for the processes with PIDs 1234 and 5678 to finish before proceeding.

### Options

- `-t, --timeout <seconds>`: Specify a timeout in seconds. If the processes do not finish within the specified time, `ywait` will exit.
- `-h, --help`: Display help information.

### Examples

Wait for processes with PIDs 1234 to finish:

```sh
./ywait 1234
```

Wait for processes with PIDs 1234 to finish, with a timeout of 60 seconds:

```sh
./ywait -t 60 1234
```