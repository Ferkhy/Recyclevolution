pragma solidity >=0.4.21 <0.6.0;

contract AvatarBegin {

    event NewAvatar(uint avatarId, string nombre, uint tipo);

    uint codigo = 16;
    uint codModule = 10 ** codigo;

    struct Avatar {
        string name;
        uint tipo;
        Avatar[] public avatars;
    }
    struct Recycle {
        string name;
        uint cantidad;
        Recycle[] public recycler;
    }
    function _eatRecycle (string _nombre, uint _cantidad) private {
        recycler.push(Recycle(_nombre, _cantidad));
    }
    function createAvatar (string _nombre, uint _tipo) public {
        uint id = avatars.push(Avatar(_nombre, _tipo)) - 1;
        emit NewAvatar(id, _nombre, _tipo);
    }
    function _gererateRandomCode(string _str) private view returns (uint) {
        uint rand = uint(keccak256(_str));
        return rand & codModule;
    }
    function createRandomAvatar(string _nombre) public {
        uint randCod = _generteRandomCode(_nombre);
        createAvatar(_nombre, randCod);
    }
   
    
    
}