zip -er protected_folder test_folder

gpg --symetric test_folder/secret.txt

gpg --passphrase <insert passphrase> test_folder/secret.txt.gpg