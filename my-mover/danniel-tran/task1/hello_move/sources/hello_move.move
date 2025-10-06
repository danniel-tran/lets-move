/*
/// Module: hello_move
module hello_move::hello_move;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

module hello_move::hello_move;
use std::string;


public struct Daniel_Tran has key {
    id: UID, // required by Sui Bytecode Verifier
    name: string::String,
}


public fun sya_hello_daniel_tran(ctx: &mut TxContext) {
    let daniel_tran = Daniel_Tran {
        id: object::new(ctx),
        name: string::utf8(b"daniel-tran"),
    };
    transfer::transfer(daniel_tran, tx_context::sender(ctx)); 
}   

