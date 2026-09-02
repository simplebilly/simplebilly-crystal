require "json"

module OpenAPIClient
  module Api
  class Auth
    def initialize(@conn : Connection); end

    # Accept an invite: create the account (or reuse an existing one) and join the inviting tenant. The invite token proves control of the mailbox.
    def accept_invite(accept_invite_request : OpenAPIClient::AcceptInviteRequest) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/auth/accept-invite",
        body: accept_invite_request,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Send a password reset email to the user
    def forgot_password(forgot_password_request : OpenAPIClient::ForgotPasswordRequest) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/auth/forgot-password",
        body: forgot_password_request,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Authenticate a user with email + password (optional TOTP)
    def login(login_request : OpenAPIClient::LoginRequest) : Response(OpenAPIClient::AuthResponse)
      @conn.request(OpenAPIClient::AuthResponse,
        method: :POST,
        path: "/auth/login",
        body: login_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Log out the current user (kills the assay session)
    def logout() : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/auth/logout",
        accept: %w[],
        auth: %w[bearer_token])
    end

    # Request a magic link login (sends an email with a one-time link)
    def magic_link(magic_link_request : OpenAPIClient::MagicLinkRequest) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/auth/magic-link",
        body: magic_link_request,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Verify a magic link token and log the user in
    def magic_link_verify(magic_link_verify_request : OpenAPIClient::MagicLinkVerifyRequest) : Response(OpenAPIClient::AuthResponse)
      @conn.request(OpenAPIClient::AuthResponse,
        method: :POST,
        path: "/auth/magic-link/verify",
        body: magic_link_verify_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Register a new user account
    def register(register_request : OpenAPIClient::RegisterRequest) : Response(OpenAPIClient::AuthResponse)
      @conn.request(OpenAPIClient::AuthResponse,
        method: :POST,
        path: "/auth/register",
        body: register_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Reset the user&#39;s password using a reset token
    def reset_password(reset_password_request : OpenAPIClient::ResetPasswordRequest) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/auth/reset-password",
        body: reset_password_request,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Enable TOTP two-factor authentication by verifying a code
    def totp_enable(totp_enable_request : OpenAPIClient::TotpEnableRequest) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/auth/totp/enable",
        body: totp_enable_request,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Set up TOTP two-factor authentication (generates secret + backup codes)
    def totp_setup() : Response(OpenAPIClient::TotpSetupResponse)
      @conn.request(OpenAPIClient::TotpSetupResponse,
        method: :GET,
        path: "/auth/totp/setup",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Verify a user&#39;s email address using a verification token
    def verify_email(verify_email_request : OpenAPIClient::VerifyEmailRequest) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/auth/verify-email",
        body: verify_email_request,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end
  end
  end

end
