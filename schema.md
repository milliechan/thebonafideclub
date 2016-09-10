# Schema

## Users
- id
- name (string)
- age (int)
- location (string)
- bio (text)
- pictures (urls hosted in s3)
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
- sent_datetime
- to_user_id
- text
- Stretch goals:
  - read_datetime
