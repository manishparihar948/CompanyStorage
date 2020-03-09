pragma solidity >=0.4.24 <0.6.0;
 
contract OrganisationName {
 
   struct Organisation {
       string CompanyName;
       string ID;
       string University;
       string location;
       string DHASH;
   }
 
   address company;
 
   constructor () public {
       company = msg.sender;
   }
 
   modifier onlyname() {
       if (msg.sender == company) {
           _;
       }
   }
 
   Organisation[] public invokeCompany;
 
   function registerCompnay(
       string memory _CompanyName,
       string memory _ID,
       string memory _University,
       string memory _location,
       string memory _DHASH) public onlyname {
       invokeCompany.push(Organisation(_CompanyName, _ID, _University, _location, _DHASH));
   }
 
}
