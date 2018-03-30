pragma solidity ^0.4.21;

/*

1. Create a smart contract that stores the name and age of a given person. 
2. Accounts are not allowed to change the name of other accounts name and age.

*/

contract NameAndAge {
	address owner;
	mapping (address => bytes32) names;
	mapping (address => uint) ages;

	function setOwner() public {
		owner = msg.sender;
	}

	function enterName(bytes32 _name) public {
		names[msg.sender] = _name;
	}

	function enterAge(uint32 _age) public {
		ages[msg.sender] = _age;
	}

	function getName() public view returns (bytes32) {
		return names[msg.sender];
	}

	function getAge() public view returns (uint) {
		return ages[msg.sender];
	}
}
