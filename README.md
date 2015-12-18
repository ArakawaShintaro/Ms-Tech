# DB設計

## model

- subject
  - name
  - company
  - occupation（職業）
  - position（役職）

- thumnail
  - image
  - status
  - model_id

- tag taggings
  - acts_as_taggable使用

- user（権限者）
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