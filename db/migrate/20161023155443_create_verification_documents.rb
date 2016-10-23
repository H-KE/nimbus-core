class CreateVerificationDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :verification_documents do |t|
      t.belongs_to :user, index: true, unique: false, foreign_key: true
      t.string :verification_type
      t.string :verification_url
      t.timestamps
    end
  end
end
