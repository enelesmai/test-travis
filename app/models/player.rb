class Player
    include ActiveModel::Model
    attr_accessor :nombre, :nivel, :goles, :sueldo, :bono, :sueldo_completo, :equipo
    attribute :nombre, :string
    attribute :nivel, :string
    attribute :goles, :integer
    attribute :sueldo, :float
    attribute :bono, :float
    attribute :sueldo_completo, :float
    attribute :equipo, :string
end