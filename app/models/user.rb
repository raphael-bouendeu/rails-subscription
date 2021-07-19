class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:trackable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :restrict_with_exception

  after_create :create_stripe_customer

  def create_stripe_customer

  customer = Stripe::Customer.create(email: email)
  update(stripe_customer_id: customer.id)

  end
end
