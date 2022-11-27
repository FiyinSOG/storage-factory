    //SPDX-License-Identifier:MIT

    pragma solidity 0.8.8;

    import "./storage.sol";
        

    contract bookstoremanager {

    bookstore[] public  BookStoreArray;

        function createbookstoremanager () public {

            bookstore BookStore = new bookstore();
            BookStoreArray.push(BookStore);
        }

        function scstore(uint256 _BookStoreIndex, uint256 _BookStoreNumber) public {

            //get the storenoofbookstore contract object

            bookstore BookStore = BookStoreArray[_BookStoreIndex];

            //call our storenoofbookstorefunction

            BookStore.storenoofbooktype(_BookStoreNumber);

        }

        function rcRead(uint256 _BookStoreIndex) public view returns(uint256) {

            //get the storenoofbookstore contract object

            bookstore BookStore = BookStoreArray[_BookStoreIndex];
            return BookStore.readnoofbooktype();

            
        }
    }

