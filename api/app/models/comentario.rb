class Comentario < ApplicationRecord
  has_many :comentarios

  validates :mensagem ,  presence: true , length: { in: 2..500 }
  validates :like     ,  presence: true , numericality: { numericality: true, only_integer: true }
  validates :deslike  ,  presence: true , numericality: { numericality: true, only_integer: true }
end
