class Ability
    include CanCan::Ability
# not used yet: will be used by cancan
    def initialize(user)
      if user.admin?
        can :manage, :all
      else
        can :read, :all
      end
    end
  end
