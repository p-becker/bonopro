class Task < ApplicationRecord
  belongs_to :organization

  include AASM
  aasm column: 'status' do
    state :unverified, initial: true
    state :verified
    state :rejected
    state :doing
    state :done

    event :verify do
      transitions from: [:unverified], to: :verified
    end
    event :reject do
      transitions from: [:unverified], to: :rejected
    end
    event :start do
      transitions from: [:verified], to: :doing
    end
    event :finish do
      transitions from: [:doing], to: :done
    end
  end
end
