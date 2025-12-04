
    module voting_system::dashboard;

    use std::string::String;

    public struct Proposal has key, store {
        id: UID,
        title: String,
        description: String,
        voted_yes: u64,
        voted_no: u64,
        expiration: u64,
        creator: address,
        voter_registry: vector<address>
    }

    public fun create_proposal(
        title: String,
        description: String,
        expiration: u64,
        ctx: &mut TxContext
    ){
        let proposal: Proposal = Proposal{
            id: object::new(ctx),
            title,
            description,
            voted_yes: 0,
            voted_no: 0,
            expiration,
            creator: ctx.sender(),
           voter_registry: vector::empty<address>(),
        };

        sui::transfer::public_share_object(proposal);
    }
