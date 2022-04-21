class AuditLogsController < ApplicationController
	def index
		@audit_logs = AuditLog.all
		@post = Post.all
		@user = User.all.order(created_at: :desc)
    authorize @audit_logs
	end


end
