//SPDX-License-Identifier: MIT

pragma solidity <=0.8.8;

contract bookstore {
   
   mapping(string=>uint256) public nameofbooktypetonoofbooktype;

    
    uint256  noofbooktype;
    
    Bookshop [] public bookshop;

    struct Bookshop {
        uint256 noofbooktype;
        string nameofbooktype;
    }

    function storenoofbooktype(uint256 _noofbooktype) public virtual  {
        noofbooktype = _noofbooktype;
    }

    function readnoofbooktype() public view returns (uint256) {
        return noofbooktype;
    }

    function booktypegrouped (string memory _nameofbooktype,  uint256 _noofbooktype) public {
    Bookshop memory newbookstoregrouped = Bookshop ({noofbooktype: _noofbooktype, nameofbooktype: _nameofbooktype});
    bookshop.push(newbookstoregrouped);
    nameofbooktypetonoofbooktype[_nameofbooktype] = _noofbooktype;
    
    }


    
}
