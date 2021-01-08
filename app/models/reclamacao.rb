class Reclamacao < ApplicationRecord
  belongs_to :usuario
  validates :titulo, presence: {message: "campo obrigatório"}
  validates :cat_problema, presence: {message: "campo obrigatório"}
  validates :texto, presence: {message: "campo obrigatório"}
  validates :nome_empresa, presence: {message: "campo obrigatório"}
  validates :usuario_id, presence: {message: "campo obrigatório"}
end
