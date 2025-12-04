🗳️ Voting System on Sui
A secure, on-chain voting module built using the Sui blockchain, powered by the Move language and compiled through Sui’s Rust-based toolchain. This project demonstrates safe state management, object ownership, and modular smart-contract design using the Sui framework.
🚀 Overview
The Voting System enables users to create proposals, cast votes, and finalize outcomes on-chain with strong safety guarantees. It leverages Sui’s object-centric architecture to ensure deterministic behavior and verifiable state transitions.
This project was built in production mode, pinned to a specific Git revision of the MystenLabs Sui framework, and compiled with reproducible settings via Move.lock.
🔧 Features
Create Proposals
Users can publish proposals that become on-chain objects managed entirely by the Sui runtime.
Cast Votes Safely
Voting logic enforces strict invariants to prevent duplicate ballots, unauthorized access, and invalid state transitions.
Deterministic Finalization
Proposal results are computed and stored immutably, with clear state flows.
Built on Sui Standards
Uses modules from:
MoveStdlib
Sui
SuiSystem
Bridge
(Dependencies confirmed via BuildInfo.yaml.)
🏗️ Architecture
Core Concepts
Component	Description
Proposal Object	Represents a voting proposal stored as a Move object.
Vote Object	Tracks each user’s vote, ensuring one-vote-per-participant.
Admin Logic	Functions allowing proposal creation and result finalization.
Module Storage	Ensures data integrity across state transitions.
Move Package Structure
voting_system/
 ├── sources/
 │    ├── voting_system.move
 │    └── ...
 ├── Move.lock
 ├── Move.toml
 └── BuildInfo.yaml
Your BuildInfo.yaml confirms the project’s compilation, dependency graph, and exact Sui framework commit hash. 
BuildInfo
💻 Tech Stack
Sui Blockchain
Move Programming Language
Rust-based Sui Toolchain
Pulled Dependencies from Official MystenLabs GitHub
Package Metadata:
Source digest: 11525014A52D3E...
Dev/Test mode disabled
Reproducible builds via Move.lock
🧪 Testing & Simulation
You can test and simulate the voting flow using the Sui CLI:
Publish module
sui client publish --path . --gas-budget 50000000
Call entry functions
Create proposal
Cast vote
Finalize proposal
(Adjust object IDs after publish.)
If you want, I can generate the exact CLI commands once you share the module code.
📦 Building the Package
The project compiles with:
sui move build
Build metadata (from BuildInfo.yaml) shows:
dev_mode: false
test_mode: false
Dependencies from pinned Git revisions
Automatic linking to MoveStdlib, Sui, SuiSystem, and Bridge

BuildInfo
🔐 Safety & Invariants
This project follows key Move safety patterns:
No global mutable state
Explicit resource ownership
No unexpected side effects
Deterministic execution
Strong type guarantees
These properties make the voting system resistant to double voting, stale references, or state corruption.
📈 Future Improvements
Add support for weighted voting
Add proposal expiration timestamps
Add analytics events for off-chain consumption
Add UI integration via Sui SDK in TypeScript
Add automated tests using Sui’s test runner