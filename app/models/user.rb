class User < ApplicationRecord
  # require 'csv'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable , :confirmable
    has_many :tasks
  
  
  # def self.to_csv(collection)
  #   CSV.generate(col_sep: ";") do |csv|
  #     csv << attribute_names
  #     collection.find_each do |record|
  #       csv << record.attributes.values
  #     end
  #   end
  # end



  end