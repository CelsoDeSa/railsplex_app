class Ability
	include CanCan::Ability

	def initialize(user)
		user ||= User.new #guest user

		if user.admin?
			can :manage, :all
		else
			can :read, :all
			#can :create, Define do |d|
			#	d.try(:user) == user
			#end
			#can :update, Define do |d|
			#	d.try(:user) == user
			#end
			#can :destroy, Define do |d|
			#	d.try(:user) == user
			#end
		end
		
	end
end