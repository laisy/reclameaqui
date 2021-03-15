class Reclamacao < ApplicationRecord
  belongs_to :usuario
  validates :titulo, presence: {message: "campo obrigatório"}, format: {with: /[A-Za-z0-9]+/}, length: {minimum: 5, maximum:20, too_long: "%{count} characters is the maximum allowed" }, uniqueness: true
  validates :cat_problema, presence: {message: "campo obrigatório"}, length: {minimum: 5, maximum:20, too_long: "%{count} characters is the maximum allowed" }
  validates :texto, presence: {message: "campo obrigatório"}, format: {with: /[A-Za-z0-9]+/}, length: {minimum: 5, maximum:500, too_long: "%{count} characters is the maximum allowed" }
  validates :nome_empresa, presence: {message: "campo obrigatório"},  length: {minimum: 3, maximum:20, too_long: "%{count} characters is the maximum allowed" }, uniqueness: true
end
