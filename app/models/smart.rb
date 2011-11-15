class Smart < ActiveRecord::Base

  validates :name, :uniqueness => true
  #validates :name, :presence =>
  validates :name, :presence => {:message => "Ingresar datos "}

  validates :description, :length => {:minimum => 20, :message => "debe tener como minimo 20 caracteres"}
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01, :message => "debe ser mayor a 0"}

  validates :image_url, :format => {
        :with => /\.(gif|jpg|png)$/i,
        :message => "debe ser una URL, una imagen gif o png "
    }
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  def ensure_not_referenced_by_any_line_item
    #Si existe item en linea item muestra un error
    if line_items.first        #empty?
      #agrega un mensaje de error a nivel del objeto, no a nivel del atributo
      errors.add(:base,"La linea de Item esta presente")
      return false
    else
      return true
    end
  end
end
