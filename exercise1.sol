pragma solidity ^0.4.21;

/*

1. Create a smart contract that stores the name and age of a given person. 
2. Accounts are not allowed to change the name of other accounts name and age.

*/

contract NameAndAge {
	bytes32 public name;
	uint32 public age;

	function enterName(bytes32 _name) public {
		name = _name;
	}

	function enterAge(uint32 _age) public {
		age = _age;
	}

	function getName() public constant returns(bytes32) {
		return name;
	}

	function getAge() public constant returns(uint) {
		return age;
	}
}
