# How to use custom ssh?

### Create ssh public-private key pair.

1. Execute below command.
```bash
ubuntu@ubuntu:~$ ssh-keygen
```

Output
```
Generating public/private rsa key pair.
Enter file in which to save the key (/your_home/.ssh/id_rsa):
```
2. Provide public key file name. And provide passphrase/password for this private/public key pair (**Optional**).

3. After creating public/private key pair. Below will be the output(**randomart image may different**).

```
Your identification has been saved in /your_home/.ssh/id_rsa.
Your public key has been saved in /your_home/.ssh/id_rsa.pub.
The key fingerprint is:
a9:49:2e:2a:5e:33:3e:a9:de:4e:77:11:58:b6:90:26 username@remote_host
The key's randomart image is:
+--[ RSA 2048]----+
|     ..o         |
|   E o= .        |
|    o. o         |
|        ..       |
|      ..S        |
|     o o.        |
|   =o.+.         |
|. =++..          |
|o=++.            |
+-----------------+
```

### Use created ssh key pair.

* In this key pair, the public key pair is added in authorization keys of the resource/system you want to secure.
* And you keep the private key file to access that resouce.

### Add public key to the resource. (For linux 😁)

1. Login to the resource/system.
2. Go to .ssh folder.

```bash
ubuntu@ubuntu:~$ cd ~/.ssh
``` 
If no such a folder present then create new one.

```bash
ubuntu@ubuntu:~$ mkdir -p ~/.ssh
```

> **Question**: What is **-p** flag? Google it.

3. Open public key file text editor you have just created and copy its content. Execute below command.
```bash
ubuntu@ubuntu:~$  echo "your_public_key" > publickey.pub
ubuntu@ubuntu:~$  cat publickey.pub >> ~/.ssh/authorized_keys
ubuntu@ubuntu:~$  chmod -R go= ~/.ssh
```

* First command create file having public key string. Second command append it in authorized key of resource/system. The third command provides sufficient permissions.
> **Note**: If you are using root access and wants to add the public key for specific user, then execute below command.
```bash
ubuntu@ubuntu:~$  chown -R ubuntu:ubuntu ~/.ssh
```

### Access the resource/system with private key.

* Execute below command
```bash
ubuntu@ubuntu:~$  ssh -i "private.pem" ubuntu@ip_of_resource
```
* It'll ask you password if you have configured it during the creation of public/private key.



> **References**

* [Digital Ocean](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-ubuntu-1604)