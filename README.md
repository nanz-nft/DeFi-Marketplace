# Bitcoin DeFi-Enabled NFT Marketplace

A sophisticated NFT marketplace built on Bitcoin that combines traditional NFT trading with DeFi capabilities, enabling users to leverage their NFTs through staking, fractionalization, and collateralization.

## Features

### Core Functionality

- **NFT Minting**: Create NFTs with STX collateral backing
- **NFT Trading**: Buy and sell NFTs in a decentralized marketplace
- **Fractional Ownership**: Split NFT ownership into tradeable shares
- **NFT Staking**: Earn yield by staking NFTs
- **Protocol-Owned Liquidity**: Sustainable fee structure for long-term growth

### Key Components

#### Collateralization System

- Minimum collateral ratio: 150%
- Collateral requirement calculation based on NFT value
- Automatic collateral validation during minting

#### Marketplace Operations

- Decentralized listing and purchasing
- Protocol fee: 2.5% (25 basis points)
- Automated price validation and ownership transfers
- Active listing management

#### Staking Mechanism

- Annual yield rate: 5% (50 basis points)
- Block-based reward calculation
- Automated reward distribution
- Flexible staking/unstaking options

#### Fractional Ownership

- Dynamic share allocation
- Secure share transfer system
- Balance tracking per token and owner
- Overflow protection for share calculations

## Technical Details

### Data Structures

#### Token Data

```clarity
{
    owner: principal,
    uri: string-ascii,
    collateral: uint,
    is-staked: bool,
    stake-timestamp: uint,
    fractional-shares: uint
}
```

#### Marketplace Listing

```clarity
{
    price: uint,
    seller: principal,
    active: bool
}
```

#### Fractional Ownership Record

```clarity
{
    shares: uint
}
```

#### Staking Rewards

```clarity
{
    accumulated-yield: uint,
    last-claim: uint
}
```

### Public Functions

#### NFT Operations

- `mint-nft`: Create new NFT with collateral
- `transfer-nft`: Transfer NFT ownership
- `list-nft`: List NFT for sale
- `purchase-nft`: Buy listed NFT

#### Staking Operations

- `stake-nft`: Stake NFT for yield generation
- `unstake-nft`: Unstake NFT and claim rewards
- `calculate-rewards`: View accumulated rewards

#### Fractional Ownership

- `transfer-shares`: Transfer ownership shares
- `get-fractional-shares`: View share allocation

### Error Codes

#### Access Control

- `u100`: Owner-only operation
- `u101`: Not token owner

#### Financial Operations

- `u102`: Insufficient balance
- `u106`: Insufficient collateral

#### NFT Operations

- `u103`: Invalid token
- `u104`: Listing not found
- `u105`: Invalid price

#### Staking

- `u107`: Already staked
- `u108`: Not staked

#### Validation

- `u109`: Invalid percentage
- `u110`: Invalid URI
- `u111`: Invalid recipient
- `u112`: Arithmetic overflow

## Security Features

- Ownership validation for all operations
- Collateral requirements enforcement
- Safe arithmetic operations
- Input validation for all public functions
- Secure reward calculation and distribution
- Protected staking state management

## Usage Examples

### Minting an NFT

```clarity
(contract-call? .marketplace mint-nft "https://example.com/nft/1" u1000)
```

### Listing an NFT

```clarity
(contract-call? .marketplace list-nft u1 u5000)
```

### Staking an NFT

```clarity
(contract-call? .marketplace stake-nft u1)
```

### Transferring Shares

```clarity
(contract-call? .marketplace transfer-shares u1 'SP2J6ZY48GV1EZ5V2V5RB9MP66SW86PYKKNRV9EJ7 u50)
```

## Best Practices

1. **Collateral Management**

   - Maintain sufficient collateral ratio
   - Monitor collateral value fluctuations
   - Plan for collateral adjustments

2. **Staking Strategy**

   - Consider lock-up period implications
   - Monitor reward rates
   - Plan unstaking timing

3. **Fractional Trading**

   - Verify share calculations
   - Maintain accurate ownership records
   - Consider minimum share thresholds

4. **Market Operations**
   - Set reasonable prices
   - Monitor active listings
   - Verify transaction details

## Contributing

This contract is part of the Bitcoin DeFi ecosystem. For contributions:

1. Fork the repository
2. Create a feature branch
3. Submit a pull request
