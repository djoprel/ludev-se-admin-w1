import bcrypt from "bcrypt";

async function passwordHasher(plaintextPassword) {
  const saltRounds = 14;
  const hash = await bcrypt.hash(plaintextPassword, saltRounds);
  return hash;
} //voor registreren

export var checkPassword = async function checkPassword(
  plaintextPassword,
  hashedPassword
) {
  var result = await bcrypt.compare(plaintextPassword, hashedPassword);
  return result;
}; //voor inloggen

let x = await passwordHasher("Macquine");
let y = await passwordHasher("Macquine");
console.log(x);
console.log(y);

// let x = await checkPassword("besjt", "besjt2");
// console.log(x == false);
