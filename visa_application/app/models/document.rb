class Document < ApplicationRecord
    mount_uploader :file_data, DocumentUploader
  
    # Add the 'name' attribute to the whitelist of attributes
    attr_accessor :name
  end
  