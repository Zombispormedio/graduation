class Student < ActiveRecord::Base

  validates :name, presence: {message: "es requerido"}
  validates :surname, presence: {message: "es requerido"}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: {message: "es requerido"}, uniqueness: {case_sensitive: false, message: "ya está registrado"},
            format: { :with => VALID_EMAIL_REGEX , message: "no tiene un formato válido" }
end
