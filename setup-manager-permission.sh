#Add manager permission to signer accounts:  

cleos --url=https://exsat2.greymass.com/ set account permission bennyfirspr1 manager '{"threshold" : 1, "keys":[{"key":"EOS7ZNGaj9qPJHejMGg12gnui6tKFs1veg9aUnZhr3hBMLh2AkGoP","weight":1}]}' active -p "bennyfirspr1@active"

#Link manager permission to "powerup" action:

cleos --url=https://exsat2.greymass.com/ set action permission bennyfirspr1 eosio powerup manager -p "bennyfirspr1@active"

#Link manager permission to  "buyrambytes" action:

cleos --url=https://exsat2.greymass.com/ set action permission bennyfirspr1 eosio buyrambytes manager -p "bennyfirspr1@active"