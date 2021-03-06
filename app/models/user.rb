class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :nome, :endereco, :cpf, :telefone, :cep, :pais, :cidade

  def full_endereco
  <<EOF
#{endereco}
#{cep} #{cidade}
#{pais}
EOF
  end
end
