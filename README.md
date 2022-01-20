# README

## How does it work?
Clone repo and run:

- `bundle install`
- `rails db:create`
- `rails db:migrate`
- `rails db:seed`
- `rails server`
`
{
  "id": 11,
  "name": "root folder",
  "documentable_id": 13,
  "documentable_type": "Entity",
  "created_at": "2022-01-19T22:23:34.992Z",
  "updated_at": "2022-01-19T22:23:34.992Z",
  "ancestry": null,
  "documents": [
    {
      "id": 7,
      "name": "new document",
      "url": "s3bucket.com",
      "description": "its ok",
      "document_store_id": 11,
      "created_at": "2022-01-19T22:23:35.077Z",
      "updated_at": "2022-01-19T22:23:35.077Z"
    }
  ],
  "children_folders": [
    {
      "id": 12,
      "name": "son folder",
      "documentable_id": 11,
      "documentable_type": "DocumentStore",
      "created_at": "2022-01-19T22:23:35.012Z",
      "updated_at": "2022-01-19T22:23:35.012Z",
      "ancestry": null,
      "documents": [
        
      ],
      "children_folders": [
        {
          "id": 13,
          "name": "grand_son_folder",
          "documentable_id": 12,
          "documentable_type": "DocumentStore",
          "created_at": "2022-01-19T22:23:35.035Z",
          "updated_at": "2022-01-19T22:23:35.035Z",
          "ancestry": null,
          "documents": [
            {
              "id": 8,
              "name": "new document two",
              "url": "s3bucket1.com",
              "description": "its ok 1",
              "document_store_id": 13,
              "created_at": "2022-01-19T22:23:35.111Z",
              "updated_at": "2022-01-19T22:23:35.111Z"
            }
          ],
          "children_folders": [
            
          ]
        }
      ]
    }
  ]
}
`
