from brownie import Contract, accounts, network, MyToken
from brownie_tokens import MintableForkToken
from web3 import Web3


def main():
    MyToken.deploy({'from':accounts[0]})

