const hre = require("hardhat");

async function main() {
  const Upload = await hre.ethers.deployContract("Upload");

  await Upload.waitForDeployment();


  console.log("Library deployed to:", Upload.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});