# smart-contracts

1. Создай папку проекта и перейди в неё
    - mkdir my-sepolia-contract
    - cd my-sepolia-contract
2. Установи Hardhat и зависимости
    - npm init -y
    - npm install --save-dev hardhat @nomicfoundation/hardhat-toolbox
3. Создай проект Hardhat
    - npx hardhat
4. Разверни контракт
    - npx hardhat run scripts/deploy.ts --network sepolia