This is a Ruby script that generates a random password. It uses the SecureRandom library to generate a random string of characters. The password can be generated with or without special characters.

Dependencies

Ruby
SecureRandom library

```
ruby saltyPass.rb
```

This will generate a random password of 12 characters. You can also specify the length of the password by passing the -l option. For example, to generate a random password of 16 characters, you would run the following command:

```
ruby saltyPass.rb -l 16
```


To include special characters in the password, pass the -s option. For example, to generate a random password of 16 characters that includes special characters, you would run the following command:

```
ruby saltyPass.rb -l 16 -s
```
