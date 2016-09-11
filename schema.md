# Schema

## Users
- id
- email
- password_digest
- name (string)
- age (int)
- picture (url hosted in s3)
- location (string)
- bio (text)
- Stretch goals:
    - latitude
    - longitude

## Likes
- user id
- liked (bool)
- match id

## Matches
- user id
- match id

## Messages
- from_user_id
- to_user_id
- channel

- Stretch goals:
  - read_datetime
