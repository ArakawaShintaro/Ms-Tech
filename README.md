# DB設計

## model
- article
  - title
  - subject_id
  - content

- subject
  - name
  - company
  - occupation（職業）
  - position（役職）

- thumnail
  - image
  - status
  - subject_id

- tag taggings
  - acts_as_taggable使用

- admin_user（権限者）
  - name
  - email

- client
  - company_name
  - email
  - phone_number

## assosiation

- model and thumnail
  - model has many thumnails
  - thumnail belongs to model