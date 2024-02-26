# SSH

SSH simply allows a user to connect to another server securely.

## General key notes

#### curl and scp

- `curl`, stands for client URL, that allows a user to transfer data with URLs.
  Usage:

```
curl [options] [URL]
```

Example: `curl -O https://example.com/file.txt` will download `file.txt` to the current working directory

- `scp`, stands for secure copy, is used for securely copying files between hosts on a network. It relies on the SSH (Secure Shell) protocol for secure data transfer.
  Usage:

```
scp [options] [source] [destination]
```

Example: `scp file.txt user@remotehost:/path/to/destination.`

## Task 0 notes

```
scp -o StrictHostKeyChecking=no -i
```

We are using scp to securely copy files between hosts over an SSH connection:
`-o StrictHostKeyChecking=no`: This option disables strict host key checking. When connecting to a new server, SSH typically prompts the user to confirm the authenticity of the host by asking whether to add the host to the list of known hosts. This option disables that prompt.

`-i`: This option specifies the path to the identity (private key) file to use for authentication, in our case it is `~/.ssh/id_rsa`

