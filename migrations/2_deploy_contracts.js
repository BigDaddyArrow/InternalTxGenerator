const InternalTxGenerator = artifacts.require('InternalTxGenerator')

module.exports = function(deployer, network) {
    console.log("Start deploying contracts to network " + network)

    deployer.deploy(InternalTxGenerator)
}