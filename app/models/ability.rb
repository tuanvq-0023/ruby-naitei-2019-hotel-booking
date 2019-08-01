# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Hotel

    if user.present?
      can :show, User, id: user.id

      if user.has_role? :moderator
        can :crud, Hotel, id: Hotel.with_role(:moderator, user)
        can :manage, :all if user.has_role? :admin
      end
    end
  end
end
