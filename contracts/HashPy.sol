// LE DECIMOS A ETHEREUM QUE ESTÁNDAR USAMOS
pragma solidity ^0.6.0;

// Importamos una planilla ya existente del formato ERC20
// EN OTROS PALABRAS, USAMOS UNA PLANTILLA EXISTENTE DE UN CONTRATO
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// LE DECIMOS A LA RED DE ETHEREUM QUE CREAMOS UN TOKEN ERC20
contract HashPyToken is ERC20 {
    // CON EL NOMBRE 'HashPy', y con la abreviación 'HASH'
    constructor() ERC20("HashPy", "HASH") public {
        // Le damos solo dos decimales nuestro nuevo token
        _setupDecimals(2); // puedo enviar por ejemplo 100.02 HASH

        uint cantidadMiembros = 304;
        _mint(msg.sender, cantidadMiembros * 10);
        // O PODEMOS IR MODO RESERVA FEDERAL DE EEUU (FED)
        // _mint(msg.sender, 1000000000000000000000000000 * (10 ** uint256(decimals()))
        // IMPRIMIMOS TRILLONNEEEEEEEEEEEEEEEEEEESSSSSSSSSSSSSSSSSSSS

        // PODEMOS ASIGNAR LOS TOKENS A NELSON, U OTRO

        // O PODEMOS DISTRIBUIR LOS TOKENS DIRECTAMENTE WALLETS PREDEFINIDOS
        // MÁS INFO AQUÍ: https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol
    }
}
