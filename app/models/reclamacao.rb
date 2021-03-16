class Reclamacao < ApplicationRecord
  belongs_to :usuario
  validates :titulo, presence: {message: "campo obrigatório"}, format: {with: /[A-Za-z0-9]+/}, length: {minimum: 5, too_short: "%{count} caracteres é o minimo permitido ", maximum:20, too_long: "%{count} caracteres é o máximo permitido " }, uniqueness: true
  validates :cat_problema, presence: {message: "campo obrigatório"}, length: {minimum: 5 , too_short: "%{count} caracteres é o minimo permitido ", maximum:20, too_long: "%{count} caracteres é o máximo permitido " }
  validates :texto, presence: {message: "campo obrigatório"}, format: {with: /[A-Za-z0-9]+/}, length: {minimum: 5, too_short: "%{count} caracteres é o minimo permitido ", maximum:500, too_long: "%{count} caracteres é o máximo permitido " }
  validates :nome_empresa, presence: {message: "campo obrigatório"},  length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido ", maximum:20, too_long: "%{count} caracteres é o máximo permitido " }, uniqueness: true
end