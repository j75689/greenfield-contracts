.PHONY: build test install-dependencies

include .env

build:
	npx hardhat compile
	forge build

test:
	npm run deploy:local
	forge t -vvvv --ffi

install-dependencies:
	npm install yarn -g
	yarn install
	forge install --no-git --no-commit foundry-rs/forge-std@v1.5.6
	forge install --no-git --no-commit openZeppelin/openzeppelin-contracts@v4.8.3
	forge install --no-git --no-commit openZeppelin/openzeppelin-contracts-upgradeable@v4.8.3
