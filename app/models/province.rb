class Province < 
    validates :name, presence: true

    has_many :customers
end
