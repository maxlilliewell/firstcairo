#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Helloxx(from: ContractAddress, value: felt252) {}


    #[external]
    fn Say_Hello(message: felt252) {
        let caller = get_caller_address();
        Helloxx(caller, message);

    }

}
