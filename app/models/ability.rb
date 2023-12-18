
class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Guest user (not logged in)

    if user.persisted? # Check if the user is logged in
      can :manage, :all
    end
    # No additional abilities for guests
  end
end
