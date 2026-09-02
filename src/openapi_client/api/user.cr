require "json"

module OpenAPIClient
  module Api
  class User
    def initialize(@conn : Connection); end

    # Generate a new API key for the current user
    def api_key() : Response(OpenAPIClient::ApiResponseString)
      @conn.request(OpenAPIClient::ApiResponseString,
        method: :POST,
        path: "/user/api-key",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Change the current user&#39;s password (requires the current password).
    def change_password(change_password_request : OpenAPIClient::ChangePasswordRequest) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/user/change-password",
        body: change_password_request,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Invite a user to the current tenant/organization
    def invite(invite_request : OpenAPIClient::InviteRequest) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/user/invite",
        body: invite_request,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Get the current user&#39;s profile
    def profile() : Response(OpenAPIClient::ApiResponseUserProfile)
      @conn.request(OpenAPIClient::ApiResponseUserProfile,
        method: :GET,
        path: "/user/profile",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Update the current user&#39;s profile
    def profile_put(update_profile_request : OpenAPIClient::UpdateProfileRequest) : Response(Nil)
      @conn.request(Nil,
        method: :PUT,
        path: "/user/profile",
        body: update_profile_request,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Remove a user from the current organization
    def remove(remove_user_request : OpenAPIClient::RemoveUserRequest) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/user/remove",
        body: remove_user_request,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # List all teams in the current tenant
    def teams() : Response(OpenAPIClient::ApiResponseVecTeam)
      @conn.request(OpenAPIClient::ApiResponseVecTeam,
        method: :GET,
        path: "/user/teams",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Create a new team within the current tenant
    def teams_post(team_create : OpenAPIClient::TeamCreate) : Response(OpenAPIClient::ApiResponseTeam)
      @conn.request(OpenAPIClient::ApiResponseTeam,
        method: :POST,
        path: "/user/teams",
        body: team_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # List all tenants (organizations) the current user belongs to
    def tenants() : Response(OpenAPIClient::ApiResponseVecUserTenantInfo)
      @conn.request(OpenAPIClient::ApiResponseVecUserTenantInfo,
        method: :GET,
        path: "/user/tenants",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end
  end
  end

end
