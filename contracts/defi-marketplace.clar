;; Title: DeFi-Enabled NFT Marketplace
;;
;; A sophisticated NFT marketplace built on Bitcoin that combines
;; traditional NFT trading with DeFi elements including:
;;   - Fractional ownership
;;   - Collateralized NFTs
;;   - Yield-generating staking
;;   - Protocol-owned liquidity
;;
;; This contract enables users to:
;;   - Mint NFTs with STX collateral
;;   - Trade NFTs in a decentralized marketplace
;;   - Stake NFTs for yield generation
;;   - Split NFT ownership through fractionalization
;;   - Earn rewards through protocol participation

;; Constants & Error Codes

(define-constant contract-owner tx-sender)

;; Access Control
(define-constant err-owner-only (err u100))
(define-constant err-not-token-owner (err u101))

;; Financial
(define-constant err-insufficient-balance (err u102))
(define-constant err-insufficient-collateral (err u106))

;; NFT Operations
(define-constant err-invalid-token (err u103))
(define-constant err-listing-not-found (err u104))
(define-constant err-invalid-price (err u105))

;; Staking
(define-constant err-already-staked (err u107))
(define-constant err-not-staked (err u108))