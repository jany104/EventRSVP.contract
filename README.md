# EventRSVP.contract
# EventRSVP Smart Contract

A decentralized event RSVP system built in Solidity and deployed to the Sepolia Testnet.

## Contract Info
- **Contract Name**: EventRSVP
- **Deployed To**: Sepolia Testnet
- **Contract Address**: 0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B

## Constructor Parameters
- `string eventName`: Name of the event
- `uint eventDate`: UNIX timestamp (e.g., `1722873600`)

## Functions
- `rsvp()`: Join the event
- `hasRSVPed(address)`: Check if someone RSVP'd
- `getAttendees()`: View all attendees

