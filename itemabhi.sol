pragma solidity^0.4.18;
contract AuctionHouse {

	struct Item {
		string itemName;
		uint basePrice;
		uint itemId;
	}

	Item[] public items;

	function _generateItemId(string _str) private view returns (uint) {
		uint hashOfName = uint(keccak256(_str));
		return hashOfName;
	}

	function _createItem(string _name, uint _price, uint _itemId) private {
		items.push(Item(_name, _price, _itemId));
	}

	//1.Create function addItem here
	//2.Declare and generate itemId
	//3.Call _createItem
	function addItem(string _name, uint _price) public {
		uint itemId = _generateItemId(_name);
		_createItem(_name, _price, itemId);
	}
}
