require "json"

module OpenAPIClient
  module Api
  class Api
    def initialize(@conn : Connection); end

    # 
    def pos_billing() : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :GET,
        path: "/api/pos/billing",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_kasse_closing(body : JSON::Any) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/pos/kasse/closing",
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_kasse_entries() : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :GET,
        path: "/api/pos/kasse/entries",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_kasse_export() : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :GET,
        path: "/api/pos/kasse/export",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_kasse_pay_in_out(body : JSON::Any) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/pos/kasse/pay-in-out",
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_orders(*, status : String? = nil) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :GET,
        path: "/api/pos/orders",
        query: { "status" => status },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_orders_pay(order_number : String, body : JSON::Any) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/pos/orders/{order_number}/pay".sub("{order_number}", OpenAPIClient.enc(order_number)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_orders_post(body : JSON::Any) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/pos/orders",
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_orders_print(order_number : String) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :GET,
        path: "/api/pos/orders/{order_number}/print".sub("{order_number}", OpenAPIClient.enc(order_number)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_orders_receipt(order_number : String) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :GET,
        path: "/api/pos/orders/{order_number}/receipt".sub("{order_number}", OpenAPIClient.enc(order_number)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_products(*, q : String? = nil) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :GET,
        path: "/api/pos/products",
        query: { "q" => q },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_registers() : Response(Array(OpenAPIClient::PosRegister))
      @conn.request(Array(OpenAPIClient::PosRegister),
        method: :GET,
        path: "/api/pos/registers",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_registers_disable(id : String) : Response(OpenAPIClient::PosRegister)
      @conn.request(OpenAPIClient::PosRegister,
        method: :POST,
        path: "/api/pos/registers/{id}/disable".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_registers_post(pos_register_create : OpenAPIClient::PosRegisterCreate) : Response(OpenAPIClient::PosRegister)
      @conn.request(OpenAPIClient::PosRegister,
        method: :POST,
        path: "/api/pos/registers",
        body: pos_register_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_sumup_checkout(body : JSON::Any) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/pos/sumup/checkout",
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_tables() : Response(Array(OpenAPIClient::PosTable))
      @conn.request(Array(OpenAPIClient::PosTable),
        method: :GET,
        path: "/api/pos/tables",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_tables_free(id : String) : Response(OpenAPIClient::PosTable)
      @conn.request(OpenAPIClient::PosTable,
        method: :POST,
        path: "/api/pos/tables/{id}/free".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def pos_tables_post(pos_table_create : OpenAPIClient::PosTableCreate) : Response(OpenAPIClient::PosTable)
      @conn.request(OpenAPIClient::PosTable,
        method: :POST,
        path: "/api/pos/tables",
        body: pos_table_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_absences(absence_create : OpenAPIClient::AbsenceCreate) : Response(OpenAPIClient::Absence)
      @conn.request(OpenAPIClient::Absence,
        method: :POST,
        path: "/api/v1/absences",
        body: absence_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_absences_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/absences/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_absences_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::Absence))
      @conn.request(Array(OpenAPIClient::Absence),
        method: :GET,
        path: "/api/v1/absences/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_absences_get_1(id : String) : Response(OpenAPIClient::Absence)
      @conn.request(OpenAPIClient::Absence,
        method: :GET,
        path: "/api/v1/absences/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_absences_put(id : String, absence_update : OpenAPIClient::AbsenceUpdate) : Response(OpenAPIClient::Absence)
      @conn.request(OpenAPIClient::Absence,
        method: :PUT,
        path: "/api/v1/absences/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: absence_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_activities(activity : OpenAPIClient::Activity) : Response(OpenAPIClient::Activity)
      @conn.request(OpenAPIClient::Activity,
        method: :POST,
        path: "/api/v1/activities",
        body: activity,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_activities_delete(activity_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/activities/{activity_id}".sub("{activity_id}", OpenAPIClient.enc(activity_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_activities_get(*, page : Int32? = nil, page_size : Int32? = nil, contact_id : String? = nil, activity_type : String? = nil, status : String? = nil, assigned_to : String? = nil, overdue_only : Bool? = nil) : Response(Array(OpenAPIClient::Activity))
      @conn.request(Array(OpenAPIClient::Activity),
        method: :GET,
        path: "/api/v1/activities/",
        query: { "page" => page, "pageSize" => page_size, "contactId" => contact_id, "activityType" => activity_type, "status" => status, "assignedTo" => assigned_to, "overdueOnly" => overdue_only },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_activities_get_1(activity_id : String) : Response(OpenAPIClient::Activity)
      @conn.request(OpenAPIClient::Activity,
        method: :GET,
        path: "/api/v1/activities/{activity_id}".sub("{activity_id}", OpenAPIClient.enc(activity_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_activities_put(activity_id : String, body : JSON::Any) : Response(OpenAPIClient::Activity)
      @conn.request(OpenAPIClient::Activity,
        method: :PUT,
        path: "/api/v1/activities/{activity_id}".sub("{activity_id}", OpenAPIClient.enc(activity_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_activities_status(activity_id : String, activity_status_update : OpenAPIClient::ActivityStatusUpdate) : Response(OpenAPIClient::Activity)
      @conn.request(OpenAPIClient::Activity,
        method: :PUT,
        path: "/api/v1/activities/{activity_id}/status".sub("{activity_id}", OpenAPIClient.enc(activity_id)),
        body: activity_status_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_admin_storage_mirror() : Response(OpenAPIClient::MirrorTriggerResponse)
      @conn.request(OpenAPIClient::MirrorTriggerResponse,
        method: :POST,
        path: "/api/v1/admin/storage/mirror",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_attachments(attachment_create : OpenAPIClient::AttachmentCreate) : Response(OpenAPIClient::Attachment)
      @conn.request(OpenAPIClient::Attachment,
        method: :POST,
        path: "/api/v1/attachments",
        body: attachment_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_attachments_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/attachments/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_attachments_get(*, page : Int32? = nil, page_size : Int32? = nil, contact_id : String? = nil) : Response(Array(OpenAPIClient::Attachment))
      @conn.request(Array(OpenAPIClient::Attachment),
        method: :GET,
        path: "/api/v1/attachments/",
        query: { "page" => page, "pageSize" => page_size, "contactId" => contact_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_attachments_get_1(id : String) : Response(OpenAPIClient::Attachment)
      @conn.request(OpenAPIClient::Attachment,
        method: :GET,
        path: "/api/v1/attachments/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Persist client-side OCR output for an attachment.
    def v1_attachments_ocr_text(attachment_id : String, ocr_text_request : OpenAPIClient::OcrTextRequest) : Response(OpenAPIClient::Attachment)
      @conn.request(OpenAPIClient::Attachment,
        method: :PUT,
        path: "/api/v1/attachments/{attachment_id}/ocr-text".sub("{attachment_id}", OpenAPIClient.enc(attachment_id)),
        body: ocr_text_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_attachments_restore(id : String) : Response(OpenAPIClient::Attachment)
      @conn.request(OpenAPIClient::Attachment,
        method: :POST,
        path: "/api/v1/attachments/{id}/restore".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_attachments_versions(attachment_id : String) : Response(Array(OpenAPIClient::AttachmentVersion))
      @conn.request(Array(OpenAPIClient::AttachmentVersion),
        method: :GET,
        path: "/api/v1/attachments/{attachment_id}/versions".sub("{attachment_id}", OpenAPIClient.enc(attachment_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_attachments_versions_post(attachment_id : String, new_version_request : OpenAPIClient::NewVersionRequest) : Response(OpenAPIClient::AttachmentVersion)
      @conn.request(OpenAPIClient::AttachmentVersion,
        method: :POST,
        path: "/api/v1/attachments/{attachment_id}/versions".sub("{attachment_id}", OpenAPIClient.enc(attachment_id)),
        body: new_version_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_attachments_versions_restore(attachment_id : String, version_id : String) : Response(OpenAPIClient::Attachment)
      @conn.request(OpenAPIClient::Attachment,
        method: :POST,
        path: "/api/v1/attachments/{attachment_id}/versions/{version_id}/restore".sub("{attachment_id}", OpenAPIClient.enc(attachment_id)).sub("{version_id}", OpenAPIClient.enc(version_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_automations() : Response(Array(OpenAPIClient::AutomationDto))
      @conn.request(Array(OpenAPIClient::AutomationDto),
        method: :GET,
        path: "/api/v1/automations",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_automations_put(key : String, update_automation : OpenAPIClient::UpdateAutomation) : Response(OpenAPIClient::AutomationDto)
      @conn.request(OpenAPIClient::AutomationDto,
        method: :PUT,
        path: "/api/v1/automations/{key}".sub("{key}", OpenAPIClient.enc(key)),
        body: update_automation,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_automations_trigger(key : String) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/v1/automations/{key}/trigger".sub("{key}", OpenAPIClient.enc(key)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_boms(bom_create : OpenAPIClient::BomCreate) : Response(OpenAPIClient::Bom)
      @conn.request(OpenAPIClient::Bom,
        method: :POST,
        path: "/api/v1/boms",
        body: bom_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_boms_delete(bom_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/boms/{bom_id}".sub("{bom_id}", OpenAPIClient.enc(bom_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_boms_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, product_id : String? = nil) : Response(Array(OpenAPIClient::Bom))
      @conn.request(Array(OpenAPIClient::Bom),
        method: :GET,
        path: "/api/v1/boms/",
        query: { "page" => page, "pageSize" => page_size, "search" => search, "productId" => product_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_boms_get_1(bom_id : String) : Response(OpenAPIClient::Bom)
      @conn.request(OpenAPIClient::Bom,
        method: :GET,
        path: "/api/v1/boms/{bom_id}".sub("{bom_id}", OpenAPIClient.enc(bom_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_boms_put(bom_id : String, bom_update : OpenAPIClient::BomUpdate) : Response(OpenAPIClient::Bom)
      @conn.request(OpenAPIClient::Bom,
        method: :PUT,
        path: "/api/v1/boms/{bom_id}".sub("{bom_id}", OpenAPIClient.enc(bom_id)),
        body: bom_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_anlage_g(*, year : Int32? = nil) : Response(OpenAPIClient::AnlageGErgebnis)
      @conn.request(OpenAPIClient::AnlageGErgebnis,
        method: :GET,
        path: "/api/v1/bookkeeping/anlage-g",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_anlage_s(*, year : Int32? = nil) : Response(OpenAPIClient::AnlageSErgebnis)
      @conn.request(OpenAPIClient::AnlageSErgebnis,
        method: :GET,
        path: "/api/v1/bookkeeping/anlage-s",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_banking_lookup(*, iban : String? = nil) : Response(OpenAPIClient::BankLookup)
      @conn.request(OpenAPIClient::BankLookup,
        method: :GET,
        path: "/api/v1/bookkeeping/banking/lookup",
        query: { "iban" => iban },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_banking_transactions() : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/bookkeeping/banking/transactions",
        accept: %w[],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_buchhalter_csv(*, date_from : String? = nil, date_to : String? = nil) : Response(OpenAPIClient::GoBDExportResponse)
      @conn.request(OpenAPIClient::GoBDExportResponse,
        method: :GET,
        path: "/api/v1/bookkeeping/buchhalter-csv",
        query: { "date_from" => date_from, "date_to" => date_to },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_budgets(*, year : Int32? = nil, month : Int32? = nil) : Response(OpenAPIClient::BudgetErgebnis)
      @conn.request(OpenAPIClient::BudgetErgebnis,
        method: :GET,
        path: "/api/v1/bookkeeping/budgets",
        query: { "year" => year, "month" => month },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_budgets_goals(category : String, budget_goal_request : OpenAPIClient::BudgetGoalRequest) : Response(OpenAPIClient::Budget)
      @conn.request(OpenAPIClient::Budget,
        method: :PUT,
        path: "/api/v1/bookkeeping/budgets/goals/{category}".sub("{category}", OpenAPIClient.enc(category)),
        body: budget_goal_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Get BWA (Betriebswirtschaftliche Auswertung) report
    def v1_bookkeeping_bwa(*, year : Int32? = nil, month : Int32? = nil) : Response(OpenAPIClient::BWAReport)
      @conn.request(OpenAPIClient::BWAReport,
        method: :GET,
        path: "/api/v1/bookkeeping/bwa",
        query: { "year" => year, "month" => month },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # GET /api/v1/bookkeeping/cashflow Returns operating, investing, and financing cashflow for the given period.
    def v1_bookkeeping_cashflow(*, year : Int32? = nil, month : Int32? = nil) : Response(OpenAPIClient::CashflowReport)
      @conn.request(OpenAPIClient::CashflowReport,
        method: :GET,
        path: "/api/v1/bookkeeping/cashflow",
        query: { "year" => year, "month" => month },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Export bookkeeping data as DATEV CSV
    def v1_bookkeeping_datev_export(*, account_schema : String? = nil, date_from : String? = nil, date_to : String? = nil, page : Int32? = nil, page_size : Int32? = nil) : Response(OpenAPIClient::DatevExportResponse)
      @conn.request(OpenAPIClient::DatevExportResponse,
        method: :GET,
        path: "/api/v1/bookkeeping/datev/export",
        query: { "account_schema" => account_schema, "date_from" => date_from, "date_to" => date_to, "page" => page, "page_size" => page_size },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_datev_import(body : JSON::Any) : Response(OpenAPIClient::DatevImportResponse)
      @conn.request(OpenAPIClient::DatevImportResponse,
        method: :POST,
        path: "/api/v1/bookkeeping/datev/import",
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Exported_datev_bookings: returns formed bookings for review
    def v1_bookkeeping_datev_preview(*, account_schema : String? = nil, date_from : String? = nil, date_to : String? = nil, page : Int32? = nil, page_size : Int32? = nil) : Response(Array(OpenAPIClient::DatevBookingPreview))
      @conn.request(Array(OpenAPIClient::DatevBookingPreview),
        method: :GET,
        path: "/api/v1/bookkeeping/datev/preview",
        query: { "account_schema" => account_schema, "date_from" => date_from, "date_to" => date_to, "page" => page, "page_size" => page_size },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_dunning() : Response(OpenAPIClient::DunningResult)
      @conn.request(OpenAPIClient::DunningResult,
        method: :POST,
        path: "/api/v1/bookkeeping/dunning",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_ebilanz(*, year : Int32? = nil, date_from : String? = nil, date_to : String? = nil) : Response(OpenAPIClient::EBilanzReport)
      @conn.request(OpenAPIClient::EBilanzReport,
        method: :GET,
        path: "/api/v1/bookkeeping/ebilanz",
        query: { "year" => year, "date_from" => date_from, "date_to" => date_to },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_ebilanz_xbrl(*, year : Int32? = nil, date_from : String? = nil, date_to : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/bookkeeping/ebilanz/xbrl",
        query: { "year" => year, "date_from" => date_from, "date_to" => date_to },
        accept: %w[application/xml],
        raw: true,
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_eks(*, year : Int32? = nil) : Response(OpenAPIClient::EksErgebnis)
      @conn.request(OpenAPIClient::EksErgebnis,
        method: :GET,
        path: "/api/v1/bookkeeping/eks",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_elster_status() : Response(OpenAPIClient::ElsterStatus)
      @conn.request(OpenAPIClient::ElsterStatus,
        method: :GET,
        path: "/api/v1/bookkeeping/elster/status",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_emissions_entries(*, year : Int32? = nil) : Response(Array(OpenAPIClient::EmissionEntry))
      @conn.request(Array(OpenAPIClient::EmissionEntry),
        method: :GET,
        path: "/api/v1/bookkeeping/emissions/entries",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_emissions_entries_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/bookkeeping/emissions/entries/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_emissions_entries_post(create_emission_entry : OpenAPIClient::CreateEmissionEntry) : Response(OpenAPIClient::EmissionEntry)
      @conn.request(OpenAPIClient::EmissionEntry,
        method: :POST,
        path: "/api/v1/bookkeeping/emissions/entries",
        body: create_emission_entry,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_emissions_export(*, year : Int32? = nil) : Response(OpenAPIClient::EmissionsExportResponse)
      @conn.request(OpenAPIClient::EmissionsExportResponse,
        method: :GET,
        path: "/api/v1/bookkeeping/emissions/export",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_emissions_factors() : Response(Array(OpenAPIClient::EmissionFactorResponse))
      @conn.request(Array(OpenAPIClient::EmissionFactorResponse),
        method: :GET,
        path: "/api/v1/bookkeeping/emissions/factors",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_emissions_report(*, year : Int32? = nil) : Response(OpenAPIClient::EmissionsReport)
      @conn.request(OpenAPIClient::EmissionsReport,
        method: :GET,
        path: "/api/v1/bookkeeping/emissions/report",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_emissions_targets() : Response(Array(OpenAPIClient::EmissionTarget))
      @conn.request(Array(OpenAPIClient::EmissionTarget),
        method: :GET,
        path: "/api/v1/bookkeeping/emissions/targets",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_emissions_targets_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/bookkeeping/emissions/targets/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_emissions_targets_post(create_emission_target : OpenAPIClient::CreateEmissionTarget) : Response(OpenAPIClient::EmissionTarget)
      @conn.request(OpenAPIClient::EmissionTarget,
        method: :POST,
        path: "/api/v1/bookkeeping/emissions/targets",
        body: create_emission_target,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_euer(*, year : Int32? = nil) : Response(OpenAPIClient::EuerErgebnis)
      @conn.request(OpenAPIClient::EuerErgebnis,
        method: :GET,
        path: "/api/v1/bookkeeping/euer",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_euer_kategorien(*, year : Int32? = nil) : Response(OpenAPIClient::EuerDetailErgebnis)
      @conn.request(OpenAPIClient::EuerDetailErgebnis,
        method: :GET,
        path: "/api/v1/bookkeeping/euer/kategorien",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_fristen(*, bundesland : String? = nil, voranmeldungsrhythmus : String? = nil, dauerfristverlaengerung : Bool? = nil, est_aktiv : Bool? = nil, gewst_aktiv : Bool? = nil, monate : Int32? = nil) : Response(OpenAPIClient::FristenErgebnis)
      @conn.request(OpenAPIClient::FristenErgebnis,
        method: :GET,
        path: "/api/v1/bookkeeping/fristen",
        query: { "bundesland" => bundesland, "voranmeldungsrhythmus" => voranmeldungsrhythmus, "dauerfristverlaengerung" => dauerfristverlaengerung, "est_aktiv" => est_aktiv, "gewst_aktiv" => gewst_aktiv, "monate" => monate },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_gewerbesteuer(*, year : Int32? = nil, hebesatz : String? = nil, gewerbeertrag : String? = nil, country : String? = nil, gemeindeschluessel : String? = nil) : Response(OpenAPIClient::GewerbesteuerErgebnis)
      @conn.request(OpenAPIClient::GewerbesteuerErgebnis,
        method: :GET,
        path: "/api/v1/bookkeeping/gewerbesteuer",
        query: { "year" => year, "hebesatz" => hebesatz, "gewerbeertrag" => gewerbeertrag, "country" => country, "gemeindeschluessel" => gemeindeschluessel },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_gewinnverwendung(*, year : Int32? = nil) : Response(OpenAPIClient::GewinnverwendungsReport)
      @conn.request(OpenAPIClient::GewinnverwendungsReport,
        method: :GET,
        path: "/api/v1/bookkeeping/gewinnverwendung",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_gewinnverwendung_export(*, year : Int32? = nil) : Response(OpenAPIClient::GewinnverwendungsExportResponse)
      @conn.request(OpenAPIClient::GewinnverwendungsExportResponse,
        method: :GET,
        path: "/api/v1/bookkeeping/gewinnverwendung/export",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_gez(*, jahr : Int32? = nil, betriebsstaetten : String? = nil, kfz : Int64? = nil, hotelzimmer : Int64? = nil, beschaefigte : Int64? = nil) : Response(OpenAPIClient::GezReport)
      @conn.request(OpenAPIClient::GezReport,
        method: :GET,
        path: "/api/v1/bookkeeping/gez",
        query: { "jahr" => jahr, "betriebsstaetten" => betriebsstaetten, "kfz" => kfz, "hotelzimmer" => hotelzimmer, "beschaefigte" => beschaefigte },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # GoBD/GDPdU export. Default: ZIP archive (&#x60;index.xml&#x60; + CSV tables, IDEA format). &#x60;?format&#x3D;csv&#x60; returns the legacy single-journal CSV as JSON.
    def v1_bookkeeping_gobd(*, year : Int32? = nil, format : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/bookkeeping/gobd",
        query: { "year" => year, "format" => format },
        accept: %w[application/zip application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_hebesatz(*, gemeindeschluessel : String? = nil, plz : String? = nil, name : String? = nil, stichtag : String? = nil, country_code : String? = nil) : Response(Array(OpenAPIClient::HebesatzLookup))
      @conn.request(Array(OpenAPIClient::HebesatzLookup),
        method: :GET,
        path: "/api/v1/bookkeeping/hebesatz",
        query: { "gemeindeschluessel" => gemeindeschluessel, "plz" => plz, "name" => name, "stichtag" => stichtag, "country_code" => country_code },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_institute_status() : Response(OpenAPIClient::InstituteStatus)
      @conn.request(OpenAPIClient::InstituteStatus,
        method: :GET,
        path: "/api/v1/bookkeeping/institute/status",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_inventory_value() : Response(OpenAPIClient::CurrentInventoryValue)
      @conn.request(OpenAPIClient::CurrentInventoryValue,
        method: :GET,
        path: "/api/v1/bookkeeping/inventory-value",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_inventory_value_record() : Response(OpenAPIClient::InventoryValuePoint)
      @conn.request(OpenAPIClient::InventoryValuePoint,
        method: :POST,
        path: "/api/v1/bookkeeping/inventory-value/record",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_jahresust(*, year : Int32? = nil) : Response(OpenAPIClient::JahresUstErgebnis)
      @conn.request(OpenAPIClient::JahresUstErgebnis,
        method: :GET,
        path: "/api/v1/bookkeeping/jahresust",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_konzern_status(*, year : Int32? = nil) : Response(OpenAPIClient::KonzernStatus)
      @conn.request(OpenAPIClient::KonzernStatus,
        method: :GET,
        path: "/api/v1/bookkeeping/konzern/status",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_konzern_status_export(*, year : Int32? = nil) : Response(OpenAPIClient::KonzernExportResponse)
      @conn.request(OpenAPIClient::KonzernExportResponse,
        method: :GET,
        path: "/api/v1/bookkeeping/konzern/status/export",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_kosten_vorschau(*, year : Int32? = nil, month : Int32? = nil) : Response(OpenAPIClient::KostenVorschau)
      @conn.request(OpenAPIClient::KostenVorschau,
        method: :GET,
        path: "/api/v1/bookkeeping/kosten-vorschau",
        query: { "year" => year, "month" => month },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_kst(*, year : Int32? = nil, gewinn : String? = nil) : Response(OpenAPIClient::KstErgebnis)
      @conn.request(OpenAPIClient::KstErgebnis,
        method: :GET,
        path: "/api/v1/bookkeeping/kst",
        query: { "year" => year, "gewinn" => gewinn },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # GET /api/v1/bookkeeping/liquidity Returns current liquidity position with ratios.
    def v1_bookkeeping_liquidity() : Response(OpenAPIClient::LiquidityPosition)
      @conn.request(OpenAPIClient::LiquidityPosition,
        method: :GET,
        path: "/api/v1/bookkeeping/liquidity",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_offenlegung() : Response(OpenAPIClient::OffenlegungReport)
      @conn.request(OpenAPIClient::OffenlegungReport,
        method: :GET,
        path: "/api/v1/bookkeeping/offenlegung",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_open_items(*, reminder_level1_days : Int64? = nil, reminder_level2_days : Int64? = nil, reminder_level3_days : Int64? = nil, customer_id : String? = nil) : Response(Array(OpenAPIClient::OpenItem))
      @conn.request(Array(OpenAPIClient::OpenItem),
        method: :GET,
        path: "/api/v1/bookkeeping/open-items",
        query: { "reminder_level1_days" => reminder_level1_days, "reminder_level2_days" => reminder_level2_days, "reminder_level3_days" => reminder_level3_days, "customer_id" => customer_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_oss() : Response(OpenAPIClient::OssReport)
      @conn.request(OpenAPIClient::OssReport,
        method: :GET,
        path: "/api/v1/bookkeeping/oss",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_paygap_auskunft(employee_id : String) : Response(OpenAPIClient::PayGapInfoResponse)
      @conn.request(OpenAPIClient::PayGapInfoResponse,
        method: :GET,
        path: "/api/v1/bookkeeping/paygap/auskunft/{employee_id}".sub("{employee_id}", OpenAPIClient.enc(employee_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_paygap_export() : Response(OpenAPIClient::PayGapExportResponse)
      @conn.request(OpenAPIClient::PayGapExportResponse,
        method: :GET,
        path: "/api/v1/bookkeeping/paygap/export",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_paygap_report() : Response(OpenAPIClient::PayGapReport)
      @conn.request(OpenAPIClient::PayGapReport,
        method: :GET,
        path: "/api/v1/bookkeeping/paygap/report",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_plausibility(*, date_from : String? = nil, date_to : String? = nil) : Response(OpenAPIClient::PlausibilityReport)
      @conn.request(OpenAPIClient::PlausibilityReport,
        method: :GET,
        path: "/api/v1/bookkeeping/plausibility",
        query: { "date_from" => date_from, "date_to" => date_to },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_propose_assignments(*, min_confidence : Float64? = nil, customer_id : String? = nil) : Response(Array(OpenAPIClient::ProposedAssignment))
      @conn.request(Array(OpenAPIClient::ProposedAssignment),
        method: :GET,
        path: "/api/v1/bookkeeping/propose-assignments",
        query: { "min_confidence" => min_confidence, "customer_id" => customer_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Bilanz (Balance Sheet)
    def v1_bookkeeping_reports_bilanz(*, year : Int32? = nil, month : Int32? = nil, date_from : String? = nil, date_to : String? = nil, page : Int32? = nil, page_size : Int32? = nil) : Response(OpenAPIClient::BilanzReport)
      @conn.request(OpenAPIClient::BilanzReport,
        method: :GET,
        path: "/api/v1/bookkeeping/reports/bilanz",
        query: { "year" => year, "month" => month, "date_from" => date_from, "date_to" => date_to, "page" => page, "page_size" => page_size },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Gewinn- und Verlustrechnung (P&amp;L statement)
    def v1_bookkeeping_reports_guv(*, year : Int32? = nil, month : Int32? = nil, date_from : String? = nil, date_to : String? = nil, page : Int32? = nil, page_size : Int32? = nil) : Response(OpenAPIClient::GuVReport)
      @conn.request(OpenAPIClient::GuVReport,
        method: :GET,
        path: "/api/v1/bookkeeping/reports/guv",
        query: { "year" => year, "month" => month, "date_from" => date_from, "date_to" => date_to, "page" => page, "page_size" => page_size },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Kontenansicht (Account Overview)
    def v1_bookkeeping_reports_kontenansicht(*, year : Int32? = nil, month : Int32? = nil, date_from : String? = nil, date_to : String? = nil, page : Int32? = nil, page_size : Int32? = nil) : Response(OpenAPIClient::KontoReport)
      @conn.request(OpenAPIClient::KontoReport,
        method: :GET,
        path: "/api/v1/bookkeeping/reports/kontenansicht",
        query: { "year" => year, "month" => month, "date_from" => date_from, "date_to" => date_to, "page" => page, "page_size" => page_size },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Umsatzsteuer-Voranmeldung (VAT report)
    def v1_bookkeeping_reports_umsatzsteuer(*, year : Int32? = nil, month : Int32? = nil, date_from : String? = nil, date_to : String? = nil, page : Int32? = nil, page_size : Int32? = nil) : Response(OpenAPIClient::UmsatzsteuerReport)
      @conn.request(OpenAPIClient::UmsatzsteuerReport,
        method: :GET,
        path: "/api/v1/bookkeeping/reports/umsatzsteuer",
        query: { "year" => year, "month" => month, "date_from" => date_from, "date_to" => date_to, "page" => page, "page_size" => page_size },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_sepa_direct_debit(*, creditor_name : String? = nil, creditor_iban : String? = nil, creditor_bic : String? = nil, creditor_id : String? = nil, mandate_id : String? = nil, mandate_date : String? = nil, debtor_name : String? = nil, debtor_iban : String? = nil, debtor_bic : String? = nil, amount : String? = nil, collection_date : String? = nil, description : String? = nil) : Response(OpenAPIClient::SepaDirectDebitResponse)
      @conn.request(OpenAPIClient::SepaDirectDebitResponse,
        method: :POST,
        path: "/api/v1/bookkeeping/sepa-direct-debit",
        query: { "creditor_name" => creditor_name, "creditor_iban" => creditor_iban, "creditor_bic" => creditor_bic, "creditor_id" => creditor_id, "mandate_id" => mandate_id, "mandate_date" => mandate_date, "debtor_name" => debtor_name, "debtor_iban" => debtor_iban, "debtor_bic" => debtor_bic, "amount" => amount, "collection_date" => collection_date, "description" => description },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_stille_export(*, year : Int32? = nil) : Response(OpenAPIClient::StilleExportResponse)
      @conn.request(OpenAPIClient::StilleExportResponse,
        method: :GET,
        path: "/api/v1/bookkeeping/stille/export",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_stille_report(*, year : Int32? = nil) : Response(OpenAPIClient::StilleReport)
      @conn.request(OpenAPIClient::StilleReport,
        method: :GET,
        path: "/api/v1/bookkeeping/stille/report",
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_ustva(*, zeitraum : String? = nil) : Response(OpenAPIClient::UstvaErgebnis)
      @conn.request(OpenAPIClient::UstvaErgebnis,
        method: :GET,
        path: "/api/v1/bookkeeping/ustva",
        query: { "zeitraum" => zeitraum },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_ustva_elster_validate(*, zeitraum : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/api/v1/bookkeeping/ustva/elster-validate",
        query: { "zeitraum" => zeitraum },
        accept: %w[],
        auth: %w[bearer_token])
    end

    # 
    def v1_bookkeeping_ustva_elster_xml(*, zeitraum : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/bookkeeping/ustva/elster-xml",
        query: { "zeitraum" => zeitraum },
        accept: %w[],
        auth: %w[bearer_token])
    end

    # GET /api/v1/bookkeeping/verfahrensdokumentation Returns the complete compliance catalog of all documented modules.
    def v1_bookkeeping_verfahrensdokumentation() : Response(OpenAPIClient::Verfahrensdokumentation)
      @conn.request(OpenAPIClient::Verfahrensdokumentation,
        method: :GET,
        path: "/api/v1/bookkeeping/verfahrensdokumentation",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_communications(customer_communication_create : OpenAPIClient::CustomerCommunicationCreate) : Response(OpenAPIClient::CustomerCommunication)
      @conn.request(OpenAPIClient::CustomerCommunication,
        method: :POST,
        path: "/api/v1/communications",
        body: customer_communication_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_communications_delete(communication_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/communications/{communication_id}".sub("{communication_id}", OpenAPIClient.enc(communication_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_communications_get(*, page : Int32? = nil, page_size : Int32? = nil, contact_id : String? = nil, channel : OpenAPIClient::CommunicationChannel? = nil, direction : OpenAPIClient::CommunicationDirection? = nil, from : Time? = nil, to : Time? = nil) : Response(Array(OpenAPIClient::CustomerCommunication))
      @conn.request(Array(OpenAPIClient::CustomerCommunication),
        method: :GET,
        path: "/api/v1/communications/",
        query: { "page" => page, "page_size" => page_size, "contact_id" => contact_id, "channel" => channel, "direction" => direction, "from" => from, "to" => to },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_communications_get_1(communication_id : String) : Response(OpenAPIClient::CustomerCommunication)
      @conn.request(OpenAPIClient::CustomerCommunication,
        method: :GET,
        path: "/api/v1/communications/{communication_id}".sub("{communication_id}", OpenAPIClient.enc(communication_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_communications_put(communication_id : String, customer_communication_update : OpenAPIClient::CustomerCommunicationUpdate) : Response(OpenAPIClient::CustomerCommunication)
      @conn.request(OpenAPIClient::CustomerCommunication,
        method: :PUT,
        path: "/api/v1/communications/{communication_id}".sub("{communication_id}", OpenAPIClient.enc(communication_id)),
        body: customer_communication_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_communications_restore(communication_id : String) : Response(OpenAPIClient::CustomerCommunication)
      @conn.request(OpenAPIClient::CustomerCommunication,
        method: :POST,
        path: "/api/v1/communications/{communication_id}/restore".sub("{communication_id}", OpenAPIClient.enc(communication_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_compliance_trainings(compliance_training_create : OpenAPIClient::ComplianceTrainingCreate) : Response(OpenAPIClient::ComplianceTraining)
      @conn.request(OpenAPIClient::ComplianceTraining,
        method: :POST,
        path: "/api/v1/compliance-trainings",
        body: compliance_training_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_compliance_trainings_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/compliance-trainings/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_compliance_trainings_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::ComplianceTraining))
      @conn.request(Array(OpenAPIClient::ComplianceTraining),
        method: :GET,
        path: "/api/v1/compliance-trainings/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_compliance_trainings_get_1(id : String) : Response(OpenAPIClient::ComplianceTraining)
      @conn.request(OpenAPIClient::ComplianceTraining,
        method: :GET,
        path: "/api/v1/compliance-trainings/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_compliance_trainings_put(id : String, compliance_training_update : OpenAPIClient::ComplianceTrainingUpdate) : Response(OpenAPIClient::ComplianceTraining)
      @conn.request(OpenAPIClient::ComplianceTraining,
        method: :PUT,
        path: "/api/v1/compliance-trainings/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: compliance_training_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # List contacts with search, type filter, and pagination
    def v1_contacts(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, contact_type : String? = nil, tag : String? = nil) : Response(Array(OpenAPIClient::Contact))
      @conn.request(Array(OpenAPIClient::Contact),
        method: :GET,
        path: "/api/v1/contacts",
        query: { "page" => page, "page_size" => page_size, "search" => search, "contact_type" => contact_type, "tag" => tag },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_contacts_communications(contact_id : String) : Response(OpenAPIClient::ContactHistoryResponse)
      @conn.request(OpenAPIClient::ContactHistoryResponse,
        method: :GET,
        path: "/api/v1/contacts/{contact_id}/communications".sub("{contact_id}", OpenAPIClient.enc(contact_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Soft-delete contact
    def v1_contacts_delete(contact_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/contacts/{contact_id}".sub("{contact_id}", OpenAPIClient.enc(contact_id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # Get single contact
    def v1_contacts_get(contact_id : String) : Response(OpenAPIClient::Contact)
      @conn.request(OpenAPIClient::Contact,
        method: :GET,
        path: "/api/v1/contacts/{contact_id}".sub("{contact_id}", OpenAPIClient.enc(contact_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Create contact
    def v1_contacts_post(body : JSON::Any) : Response(OpenAPIClient::Contact)
      @conn.request(OpenAPIClient::Contact,
        method: :POST,
        path: "/api/v1/contacts",
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Update contact
    def v1_contacts_put(contact_id : String, body : JSON::Any) : Response(OpenAPIClient::Contact)
      @conn.request(OpenAPIClient::Contact,
        method: :PUT,
        path: "/api/v1/contacts/{contact_id}".sub("{contact_id}", OpenAPIClient.enc(contact_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Sales volume per contact
    def v1_contacts_sales_volume(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, contact_type : String? = nil, tag : String? = nil) : Response(OpenAPIClient::SalesVolumeReport)
      @conn.request(OpenAPIClient::SalesVolumeReport,
        method: :GET,
        path: "/api/v1/contacts/sales-volume",
        query: { "page" => page, "page_size" => page_size, "search" => search, "contact_type" => contact_type, "tag" => tag },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Serve JSON Schema for client-side validation
    def v1_contacts_schema() : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :GET,
        path: "/api/v1/contacts/schema",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Get the full per-contact timeline (Xentral §4.6/4.7). Aggregates communications, quotations, orders, invoices and uploaded documents for a contact, merged into a single reverse-chronological feed.
    def v1_contacts_timeline(contact_id : String) : Response(OpenAPIClient::ContactTimelineResponse)
      @conn.request(OpenAPIClient::ContactTimelineResponse,
        method: :GET,
        path: "/api/v1/contacts/{contact_id}/timeline".sub("{contact_id}", OpenAPIClient.enc(contact_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_coupons(coupon_create : OpenAPIClient::CouponCreate) : Response(OpenAPIClient::Coupon)
      @conn.request(OpenAPIClient::Coupon,
        method: :POST,
        path: "/api/v1/coupons",
        body: coupon_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_coupons_delete(coupon_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/coupons/{coupon_id}".sub("{coupon_id}", OpenAPIClient.enc(coupon_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_coupons_get(*, page : Int32? = nil, page_size : Int32? = nil, is_active : Bool? = nil, code : String? = nil, discount_type : String? = nil) : Response(Array(OpenAPIClient::Coupon))
      @conn.request(Array(OpenAPIClient::Coupon),
        method: :GET,
        path: "/api/v1/coupons/",
        query: { "page" => page, "page_size" => page_size, "is_active" => is_active, "code" => code, "discount_type" => discount_type },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_coupons_get_1(coupon_id : String) : Response(OpenAPIClient::Coupon)
      @conn.request(OpenAPIClient::Coupon,
        method: :GET,
        path: "/api/v1/coupons/{coupon_id}".sub("{coupon_id}", OpenAPIClient.enc(coupon_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_coupons_put(coupon_id : String, coupon_update : OpenAPIClient::CouponUpdate) : Response(OpenAPIClient::Coupon)
      @conn.request(OpenAPIClient::Coupon,
        method: :PUT,
        path: "/api/v1/coupons/{coupon_id}".sub("{coupon_id}", OpenAPIClient.enc(coupon_id)),
        body: coupon_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_coupons_restore(coupon_id : String) : Response(OpenAPIClient::Coupon)
      @conn.request(OpenAPIClient::Coupon,
        method: :POST,
        path: "/api/v1/coupons/{coupon_id}/restore".sub("{coupon_id}", OpenAPIClient.enc(coupon_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_credit_notes(body : JSON::Any) : Response(OpenAPIClient::Invoice)
      @conn.request(OpenAPIClient::Invoice,
        method: :POST,
        path: "/api/v1/credit-notes",
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_credit_notes_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::Invoice))
      @conn.request(Array(OpenAPIClient::Invoice),
        method: :GET,
        path: "/api/v1/credit-notes/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_credit_notes_get_1(credit_note_id : String) : Response(OpenAPIClient::Invoice)
      @conn.request(OpenAPIClient::Invoice,
        method: :GET,
        path: "/api/v1/credit-notes/{credit_note_id}".sub("{credit_note_id}", OpenAPIClient.enc(credit_note_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_credit_notes_pdf(credit_note_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/credit-notes/{credit_note_id}/pdf".sub("{credit_note_id}", OpenAPIClient.enc(credit_note_id)),
        accept: %w[application/pdf application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_customer_groups(customer_group_create : OpenAPIClient::CustomerGroupCreate) : Response(OpenAPIClient::CustomerGroup)
      @conn.request(OpenAPIClient::CustomerGroup,
        method: :POST,
        path: "/api/v1/customer-groups",
        body: customer_group_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_customer_groups_delete(customer_group_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/customer-groups/{customer_group_id}".sub("{customer_group_id}", OpenAPIClient.enc(customer_group_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_customer_groups_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::CustomerGroup))
      @conn.request(Array(OpenAPIClient::CustomerGroup),
        method: :GET,
        path: "/api/v1/customer-groups/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_customer_groups_get_1(customer_group_id : String) : Response(OpenAPIClient::CustomerGroup)
      @conn.request(OpenAPIClient::CustomerGroup,
        method: :GET,
        path: "/api/v1/customer-groups/{customer_group_id}".sub("{customer_group_id}", OpenAPIClient.enc(customer_group_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_customer_groups_members(customer_group_id : String, body : JSON::Any) : Response(OpenAPIClient::CustomerGroup)
      @conn.request(OpenAPIClient::CustomerGroup,
        method: :POST,
        path: "/api/v1/customer-groups/{customer_group_id}/members".sub("{customer_group_id}", OpenAPIClient.enc(customer_group_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_customer_groups_put(customer_group_id : String, customer_group_update : OpenAPIClient::CustomerGroupUpdate) : Response(OpenAPIClient::CustomerGroup)
      @conn.request(OpenAPIClient::CustomerGroup,
        method: :PUT,
        path: "/api/v1/customer-groups/{customer_group_id}".sub("{customer_group_id}", OpenAPIClient.enc(customer_group_id)),
        body: customer_group_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_customers(customer_create : OpenAPIClient::CustomerCreate) : Response(OpenAPIClient::Customer)
      @conn.request(OpenAPIClient::Customer,
        method: :POST,
        path: "/api/v1/customers",
        body: customer_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_customers_delete(customer_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/customers/{customer_id}".sub("{customer_id}", OpenAPIClient.enc(customer_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_customers_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::Customer))
      @conn.request(Array(OpenAPIClient::Customer),
        method: :GET,
        path: "/api/v1/customers/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_customers_get_1(customer_id : String) : Response(OpenAPIClient::Customer)
      @conn.request(OpenAPIClient::Customer,
        method: :GET,
        path: "/api/v1/customers/{customer_id}".sub("{customer_id}", OpenAPIClient.enc(customer_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_customers_put(customer_id : String, customer_update : OpenAPIClient::CustomerUpdate) : Response(OpenAPIClient::Customer)
      @conn.request(OpenAPIClient::Customer,
        method: :PUT,
        path: "/api/v1/customers/{customer_id}".sub("{customer_id}", OpenAPIClient.enc(customer_id)),
        body: customer_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_customers_restore(customer_id : String) : Response(OpenAPIClient::Customer)
      @conn.request(OpenAPIClient::Customer,
        method: :POST,
        path: "/api/v1/customers/{customer_id}/restore".sub("{customer_id}", OpenAPIClient.enc(customer_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_declarations(declaration_create : OpenAPIClient::DeclarationCreate) : Response(OpenAPIClient::Declaration)
      @conn.request(OpenAPIClient::Declaration,
        method: :POST,
        path: "/api/v1/declarations",
        body: declaration_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_declarations_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/declarations/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_declarations_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::Declaration))
      @conn.request(Array(OpenAPIClient::Declaration),
        method: :GET,
        path: "/api/v1/declarations/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_declarations_get_1(id : String) : Response(OpenAPIClient::Declaration)
      @conn.request(OpenAPIClient::Declaration,
        method: :GET,
        path: "/api/v1/declarations/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_declarations_put(id : String, declaration_update : OpenAPIClient::DeclarationUpdate) : Response(OpenAPIClient::Declaration)
      @conn.request(OpenAPIClient::Declaration,
        method: :PUT,
        path: "/api/v1/declarations/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: declaration_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_declarations_restore(id : String) : Response(OpenAPIClient::Declaration)
      @conn.request(OpenAPIClient::Declaration,
        method: :POST,
        path: "/api/v1/declarations/{id}/restore".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_appointments(*, page : Int32? = nil, page_size : Int32? = nil, status : String? = nil, warehouse_id : String? = nil, from : Time? = nil, to : Time? = nil) : Response(Array(OpenAPIClient::DeliveryAppointment))
      @conn.request(Array(OpenAPIClient::DeliveryAppointment),
        method: :GET,
        path: "/api/v1/delivery-appointments",
        query: { "page" => page, "page_size" => page_size, "status" => status, "warehouse_id" => warehouse_id, "from" => from, "to" => to },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_appointments_delete(appointment_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/delivery-appointments/{appointment_id}".sub("{appointment_id}", OpenAPIClient.enc(appointment_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_appointments_get(appointment_id : String) : Response(OpenAPIClient::DeliveryAppointment)
      @conn.request(OpenAPIClient::DeliveryAppointment,
        method: :GET,
        path: "/api/v1/delivery-appointments/{appointment_id}".sub("{appointment_id}", OpenAPIClient.enc(appointment_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_appointments_post(delivery_appointment_create : OpenAPIClient::DeliveryAppointmentCreate) : Response(OpenAPIClient::DeliveryAppointment)
      @conn.request(OpenAPIClient::DeliveryAppointment,
        method: :POST,
        path: "/api/v1/delivery-appointments",
        body: delivery_appointment_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_appointments_put(appointment_id : String, body : JSON::Any) : Response(OpenAPIClient::DeliveryAppointment)
      @conn.request(OpenAPIClient::DeliveryAppointment,
        method: :PUT,
        path: "/api/v1/delivery-appointments/{appointment_id}".sub("{appointment_id}", OpenAPIClient.enc(appointment_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_appointments_status(appointment_id : String, appointment_status_update : OpenAPIClient::AppointmentStatusUpdate) : Response(OpenAPIClient::DeliveryAppointment)
      @conn.request(OpenAPIClient::DeliveryAppointment,
        method: :PUT,
        path: "/api/v1/delivery-appointments/{appointment_id}/status".sub("{appointment_id}", OpenAPIClient.enc(appointment_id)),
        body: appointment_status_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_dates(delivery_date_create : OpenAPIClient::DeliveryDateCreate) : Response(OpenAPIClient::DeliveryDate)
      @conn.request(OpenAPIClient::DeliveryDate,
        method: :POST,
        path: "/api/v1/delivery-dates",
        body: delivery_date_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_dates_delete(delivery_date_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/delivery-dates/{delivery_date_id}".sub("{delivery_date_id}", OpenAPIClient.enc(delivery_date_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_dates_get(*, page : Int32? = nil, page_size : Int32? = nil, order_number : String? = nil, status : String? = nil, from : Time? = nil, to : Time? = nil) : Response(Array(OpenAPIClient::DeliveryDate))
      @conn.request(Array(OpenAPIClient::DeliveryDate),
        method: :GET,
        path: "/api/v1/delivery-dates/",
        query: { "page" => page, "pageSize" => page_size, "orderNumber" => order_number, "status" => status, "from" => from, "to" => to },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_dates_get_1(delivery_date_id : String) : Response(OpenAPIClient::DeliveryDate)
      @conn.request(OpenAPIClient::DeliveryDate,
        method: :GET,
        path: "/api/v1/delivery-dates/{delivery_date_id}".sub("{delivery_date_id}", OpenAPIClient.enc(delivery_date_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # On-time performance summary: how many promised delivery dates were met within a period.
    def v1_delivery_dates_performance(*, page : Int32? = nil, page_size : Int32? = nil, order_number : String? = nil, status : String? = nil, from : Time? = nil, to : Time? = nil) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :GET,
        path: "/api/v1/delivery-dates/performance",
        query: { "page" => page, "pageSize" => page_size, "orderNumber" => order_number, "status" => status, "from" => from, "to" => to },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_dates_put(delivery_date_id : String, body : JSON::Any) : Response(OpenAPIClient::DeliveryDate)
      @conn.request(OpenAPIClient::DeliveryDate,
        method: :PUT,
        path: "/api/v1/delivery-dates/{delivery_date_id}".sub("{delivery_date_id}", OpenAPIClient.enc(delivery_date_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_dates_status(delivery_date_id : String, delivery_date_status_update : OpenAPIClient::DeliveryDateStatusUpdate) : Response(OpenAPIClient::DeliveryDate)
      @conn.request(OpenAPIClient::DeliveryDate,
        method: :PUT,
        path: "/api/v1/delivery-dates/{delivery_date_id}/status".sub("{delivery_date_id}", OpenAPIClient.enc(delivery_date_id)),
        body: delivery_date_status_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_notes(delivery_note_create : OpenAPIClient::DeliveryNoteCreate) : Response(OpenAPIClient::DeliveryNote)
      @conn.request(OpenAPIClient::DeliveryNote,
        method: :POST,
        path: "/api/v1/delivery-notes",
        body: delivery_note_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_notes_delete(delivery_note_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/delivery-notes/{delivery_note_id}".sub("{delivery_note_id}", OpenAPIClient.enc(delivery_note_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_notes_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::DeliveryNote))
      @conn.request(Array(OpenAPIClient::DeliveryNote),
        method: :GET,
        path: "/api/v1/delivery-notes/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_notes_get_1(delivery_note_id : String) : Response(OpenAPIClient::DeliveryNote)
      @conn.request(OpenAPIClient::DeliveryNote,
        method: :GET,
        path: "/api/v1/delivery-notes/{delivery_note_id}".sub("{delivery_note_id}", OpenAPIClient.enc(delivery_note_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_notes_pdf(delivery_note_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/delivery-notes/{delivery_note_id}/pdf".sub("{delivery_note_id}", OpenAPIClient.enc(delivery_note_id)),
        accept: %w[application/pdf application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_notes_pursue(delivery_note_id : String) : Response(OpenAPIClient::Invoice)
      @conn.request(OpenAPIClient::Invoice,
        method: :POST,
        path: "/api/v1/delivery-notes/{delivery_note_id}/pursue".sub("{delivery_note_id}", OpenAPIClient.enc(delivery_note_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_delivery_notes_restore(delivery_note_id : String) : Response(OpenAPIClient::DeliveryNote)
      @conn.request(OpenAPIClient::DeliveryNote,
        method: :POST,
        path: "/api/v1/delivery-notes/{delivery_note_id}/restore".sub("{delivery_note_id}", OpenAPIClient.enc(delivery_note_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_down_payment_invoices(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::DownPaymentInvoice))
      @conn.request(Array(OpenAPIClient::DownPaymentInvoice),
        method: :GET,
        path: "/api/v1/down-payment-invoices/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_down_payment_invoices_get(id : String) : Response(OpenAPIClient::DownPaymentInvoice)
      @conn.request(OpenAPIClient::DownPaymentInvoice,
        method: :GET,
        path: "/api/v1/down-payment-invoices/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_down_payment_invoices_pdf(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/down-payment-invoices/{id}/pdf".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_email_templates(email_template_create : OpenAPIClient::EmailTemplateCreate) : Response(OpenAPIClient::EmailTemplate)
      @conn.request(OpenAPIClient::EmailTemplate,
        method: :POST,
        path: "/api/v1/email-templates",
        body: email_template_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_email_templates_delete(email_template_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/email-templates/{email_template_id}".sub("{email_template_id}", OpenAPIClient.enc(email_template_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_email_templates_get(*, page : Int32? = nil, page_size : Int32? = nil, status : String? = nil, search : String? = nil) : Response(Array(OpenAPIClient::EmailTemplate))
      @conn.request(Array(OpenAPIClient::EmailTemplate),
        method: :GET,
        path: "/api/v1/email-templates/",
        query: { "page" => page, "pageSize" => page_size, "status" => status, "search" => search },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_email_templates_get_1(email_template_id : String) : Response(OpenAPIClient::EmailTemplate)
      @conn.request(OpenAPIClient::EmailTemplate,
        method: :GET,
        path: "/api/v1/email-templates/{email_template_id}".sub("{email_template_id}", OpenAPIClient.enc(email_template_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_email_templates_put(email_template_id : String, email_template_update : OpenAPIClient::EmailTemplateUpdate) : Response(OpenAPIClient::EmailTemplate)
      @conn.request(OpenAPIClient::EmailTemplate,
        method: :PUT,
        path: "/api/v1/email-templates/{email_template_id}".sub("{email_template_id}", OpenAPIClient.enc(email_template_id)),
        body: email_template_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_email_templates_render(email_template_id : String, body : JSON::Any) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/v1/email-templates/{email_template_id}/render".sub("{email_template_id}", OpenAPIClient.enc(email_template_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_employees(employee_create : OpenAPIClient::EmployeeCreate) : Response(OpenAPIClient::Employee)
      @conn.request(OpenAPIClient::Employee,
        method: :POST,
        path: "/api/v1/employees",
        body: employee_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_employees_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/employees/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_employees_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::Employee))
      @conn.request(Array(OpenAPIClient::Employee),
        method: :GET,
        path: "/api/v1/employees/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_employees_get_1(id : String) : Response(OpenAPIClient::Employee)
      @conn.request(OpenAPIClient::Employee,
        method: :GET,
        path: "/api/v1/employees/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_employees_payroll_summary(id : String, *, year : Int32? = nil) : Response(OpenAPIClient::PayrollSummary)
      @conn.request(OpenAPIClient::PayrollSummary,
        method: :GET,
        path: "/api/v1/employees/{id}/payroll-summary".sub("{id}", OpenAPIClient.enc(id)),
        query: { "year" => year },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_employees_put(id : String, employee_update : OpenAPIClient::EmployeeUpdate) : Response(OpenAPIClient::Employee)
      @conn.request(OpenAPIClient::Employee,
        method: :PUT,
        path: "/api/v1/employees/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: employee_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_employees_restore(id : String) : Response(OpenAPIClient::Employee)
      @conn.request(OpenAPIClient::Employee,
        method: :POST,
        path: "/api/v1/employees/{id}/restore".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_event_subscriptions(body : JSON::Any) : Response(OpenAPIClient::EventSubscription)
      @conn.request(OpenAPIClient::EventSubscription,
        method: :POST,
        path: "/api/v1/event-subscriptions",
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_event_subscriptions_delete(subscription_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/event-subscriptions/{subscription_id}".sub("{subscription_id}", OpenAPIClient.enc(subscription_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_event_subscriptions_get() : Response(Array(OpenAPIClient::EventSubscription))
      @conn.request(Array(OpenAPIClient::EventSubscription),
        method: :GET,
        path: "/api/v1/event-subscriptions/",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Erase ALL personal data of the tenant (TOS §11: deletion 90 days after termination). Anonymizes every contact, anonymizes personal fields on bookkeeping records (orders/invoices/payments keep amounts and dates for GoBD), removes the tenant linkage of the (global, saasy-framework) users and marks the erasure on &#x60;tenant_settings.gdpr_erased_at&#x60;. No row is physically deleted. The audit triggers on the touched tables record who/when.
    def v1_gdpr_account_erasure() : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/v1/gdpr/account-erasure",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Current DPA acceptance status (from tenant_settings).
    def v1_gdpr_dpa() : Response(OpenAPIClient::DpaStatus)
      @conn.request(OpenAPIClient::DpaStatus,
        method: :GET,
        path: "/api/v1/gdpr/dpa",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Record DPA acceptance: sets dpa_accepted_at/by/version on the tenant settings row (created with company-type defaults if missing).
    def v1_gdpr_dpa_put(dpa_accept_request : OpenAPIClient::DpaAcceptRequest) : Response(OpenAPIClient::DpaStatus)
      @conn.request(OpenAPIClient::DpaStatus,
        method: :PUT,
        path: "/api/v1/gdpr/dpa",
        body: dpa_accept_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Anonymize + soft-delete a contact: personal attributes are cleared, the record itself is kept for GoBD retention (Art. 17(3)(e) DSGVO). The audit trigger on &#x60;contacts&#x60; already records who/when.
    def v1_gdpr_erasure(contact_id : String) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/v1/gdpr/erasure/{contact_id}".sub("{contact_id}", OpenAPIClient.enc(contact_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Export the current user&#39;s personal data (GDPR Art. 15/20). No admin permission required: a user always exports their own data.
    def v1_gdpr_export() : Response(OpenAPIClient::ApiResponseGdprExport)
      @conn.request(OpenAPIClient::ApiResponseGdprExport,
        method: :GET,
        path: "/api/v1/gdpr/export",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Art. 15 data-subject access export for a contact. Returns the contact itself plus the tenant-scoped rows linked to it.  ## Relations The &#x60;customers&#x60;/&#x60;orders&#x60;/&#x60;invoices&#x60;/&#x60;payments&#x60; tables have no FK to &#x60;contacts&#x60;; they are linked through the &#x60;customer_id&#x60; column, which per the app&#39;s conventions holds one of: - the admin customer&#39;s &#x60;customer_id&#x60; (a UUID, often the same value as   the contact&#39;s &#x60;contact_id&#x60;/&#x60;customer_number&#x60;), - the buyer&#39;s email for shop orders, or - the marketplace&#39;s external customer id for plugin orders.  The export therefore matches the contact&#39;s identifiers (&#x60;contact_id&#x60;, &#x60;customer_number&#x60;, &#x60;external_id&#x60;, &#x60;email&#x60;) plus any resolved customer ids against &#x60;customer_id&#x60;. &#x60;delivery_notes&#x60; and &#x60;customer_communications&#x60; reference contacts directly via &#x60;contact_id&#x60;. Soft-deleted rows are included (their data is still processed and retained for GoBD). Relations that genuinely do not exist for a contact stay empty but the key is always present.
    def v1_gdpr_export_get(contact_id : String) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :GET,
        path: "/api/v1/gdpr/export/{contact_id}".sub("{contact_id}", OpenAPIClient.enc(contact_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_goods_receipts(goods_receipt : OpenAPIClient::GoodsReceipt) : Response(OpenAPIClient::GoodsReceipt)
      @conn.request(OpenAPIClient::GoodsReceipt,
        method: :POST,
        path: "/api/v1/goods-receipts",
        body: goods_receipt,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_goods_receipts_delete(goods_receipt_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/goods-receipts/{goods_receipt_id}".sub("{goods_receipt_id}", OpenAPIClient.enc(goods_receipt_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_goods_receipts_get(*, page : Int32? = nil, page_size : Int32? = nil, purchase_order_id : String? = nil, supplier_name : String? = nil, warehouse_id : String? = nil) : Response(Array(OpenAPIClient::GoodsReceipt))
      @conn.request(Array(OpenAPIClient::GoodsReceipt),
        method: :GET,
        path: "/api/v1/goods-receipts/",
        query: { "page" => page, "page_size" => page_size, "purchase_order_id" => purchase_order_id, "supplier_name" => supplier_name, "warehouse_id" => warehouse_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_goods_receipts_get_1(goods_receipt_id : String) : Response(OpenAPIClient::GoodsReceipt)
      @conn.request(OpenAPIClient::GoodsReceipt,
        method: :GET,
        path: "/api/v1/goods-receipts/{goods_receipt_id}".sub("{goods_receipt_id}", OpenAPIClient.enc(goods_receipt_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_group_figures(group_figure_create : OpenAPIClient::GroupFigureCreate) : Response(OpenAPIClient::GroupFigure)
      @conn.request(OpenAPIClient::GroupFigure,
        method: :POST,
        path: "/api/v1/group-figures",
        body: group_figure_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_group_figures_delete(year : Int32) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/group-figures/{year}".sub("{year}", OpenAPIClient.enc(year)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_group_figures_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::GroupFigure))
      @conn.request(Array(OpenAPIClient::GroupFigure),
        method: :GET,
        path: "/api/v1/group-figures/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_group_figures_get_1(year : Int32) : Response(OpenAPIClient::GroupFigure)
      @conn.request(OpenAPIClient::GroupFigure,
        method: :GET,
        path: "/api/v1/group-figures/{year}".sub("{year}", OpenAPIClient.enc(year)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_group_figures_put(year : Int32, group_figure_update : OpenAPIClient::GroupFigureUpdate) : Response(OpenAPIClient::GroupFigure)
      @conn.request(OpenAPIClient::GroupFigure,
        method: :PUT,
        path: "/api/v1/group-figures/{year}".sub("{year}", OpenAPIClient.enc(year)),
        body: group_figure_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_import(job_id : String) : Response(OpenAPIClient::ImportJobStatus)
      @conn.request(OpenAPIClient::ImportJobStatus,
        method: :GET,
        path: "/api/v1/import/{job_id}".sub("{job_id}", OpenAPIClient.enc(job_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_import_start(import_start_request : OpenAPIClient::ImportStartRequest) : Response(OpenAPIClient::ImportStartResponse)
      @conn.request(OpenAPIClient::ImportStartResponse,
        method: :POST,
        path: "/api/v1/import/start",
        body: import_start_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_import_test(import_test_request : OpenAPIClient::ImportTestRequest) : Response(OpenAPIClient::ImportTestResponse)
      @conn.request(OpenAPIClient::ImportTestResponse,
        method: :POST,
        path: "/api/v1/import/test",
        body: import_test_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Current institute profile (created with defaults when missing).
    def v1_institute_profile() : Response(OpenAPIClient::InstituteProfile)
      @conn.request(OpenAPIClient::InstituteProfile,
        method: :GET,
        path: "/api/v1/institute-profile",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Update the institute profile (institute_type and/or kapitalmarktorientiert).
    def v1_institute_profile_put(institute_profile_update : OpenAPIClient::InstituteProfileUpdate) : Response(OpenAPIClient::InstituteProfile)
      @conn.request(OpenAPIClient::InstituteProfile,
        method: :PUT,
        path: "/api/v1/institute-profile",
        body: institute_profile_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_inventory_counts(inventory_count : OpenAPIClient::InventoryCount) : Response(OpenAPIClient::InventoryCount)
      @conn.request(OpenAPIClient::InventoryCount,
        method: :POST,
        path: "/api/v1/inventory-counts",
        body: inventory_count,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_inventory_counts_delete(inventory_count_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/inventory-counts/{inventory_count_id}".sub("{inventory_count_id}", OpenAPIClient.enc(inventory_count_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_inventory_counts_generate(generate_count_request : OpenAPIClient::GenerateCountRequest) : Response(OpenAPIClient::InventoryCount)
      @conn.request(OpenAPIClient::InventoryCount,
        method: :POST,
        path: "/api/v1/inventory-counts/generate",
        body: generate_count_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_inventory_counts_get(*, page : Int32? = nil, page_size : Int32? = nil, status : String? = nil, warehouse_id : String? = nil) : Response(Array(OpenAPIClient::InventoryCount))
      @conn.request(Array(OpenAPIClient::InventoryCount),
        method: :GET,
        path: "/api/v1/inventory-counts/",
        query: { "page" => page, "page_size" => page_size, "status" => status, "warehouse_id" => warehouse_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_inventory_counts_get_1(inventory_count_id : String) : Response(OpenAPIClient::InventoryCount)
      @conn.request(OpenAPIClient::InventoryCount,
        method: :GET,
        path: "/api/v1/inventory-counts/{inventory_count_id}".sub("{inventory_count_id}", OpenAPIClient.enc(inventory_count_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_inventory_counts_put(inventory_count_id : String, body : JSON::Any) : Response(OpenAPIClient::InventoryCount)
      @conn.request(OpenAPIClient::InventoryCount,
        method: :PUT,
        path: "/api/v1/inventory-counts/{inventory_count_id}".sub("{inventory_count_id}", OpenAPIClient.enc(inventory_count_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_inventory_counts_status(inventory_count_id : String, inventory_count_status_update : OpenAPIClient::InventoryCountStatusUpdate) : Response(OpenAPIClient::InventoryCount)
      @conn.request(OpenAPIClient::InventoryCount,
        method: :PUT,
        path: "/api/v1/inventory-counts/{inventory_count_id}/status".sub("{inventory_count_id}", OpenAPIClient.enc(inventory_count_id)),
        body: inventory_count_status_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_invoices(invoice_create : OpenAPIClient::InvoiceCreate) : Response(OpenAPIClient::Invoice)
      @conn.request(OpenAPIClient::Invoice,
        method: :POST,
        path: "/api/v1/invoices",
        body: invoice_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_invoices_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/invoices/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_invoices_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::Invoice))
      @conn.request(Array(OpenAPIClient::Invoice),
        method: :GET,
        path: "/api/v1/invoices/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_invoices_get_1(id : String) : Response(OpenAPIClient::Invoice)
      @conn.request(OpenAPIClient::Invoice,
        method: :GET,
        path: "/api/v1/invoices/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_invoices_pdf(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/invoices/{id}/pdf".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/pdf application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_invoices_pdf_url(id : String) : Response(OpenAPIClient::InvoicePdfUrlResponse)
      @conn.request(OpenAPIClient::InvoicePdfUrlResponse,
        method: :GET,
        path: "/api/v1/invoices/{id}/pdf-url".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_invoices_peppol(id : String) : Response(OpenAPIClient::PeppolResponse)
      @conn.request(OpenAPIClient::PeppolResponse,
        method: :GET,
        path: "/api/v1/invoices/{id}/peppol".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_invoices_put(id : String, body : JSON::Any) : Response(OpenAPIClient::Invoice)
      @conn.request(OpenAPIClient::Invoice,
        method: :PUT,
        path: "/api/v1/invoices/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_invoices_qrcode(id : String, *, iban : String? = nil, holder_name : String? = nil, bic : String? = nil, amount : String? = nil, reference : String? = nil, purpose : String? = nil) : Response(OpenAPIClient::QRCodeResponse)
      @conn.request(OpenAPIClient::QRCodeResponse,
        method: :GET,
        path: "/api/v1/invoices/{id}/qrcode".sub("{id}", OpenAPIClient.enc(id)),
        query: { "iban" => iban, "holder_name" => holder_name, "bic" => bic, "amount" => amount, "reference" => reference, "purpose" => purpose },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_invoices_restore(id : String) : Response(OpenAPIClient::Invoice)
      @conn.request(OpenAPIClient::Invoice,
        method: :POST,
        path: "/api/v1/invoices/{id}/restore".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_invoices_xrechnung(id : String, *, supplier_name : String? = nil, supplier_street : String? = nil, supplier_city : String? = nil, supplier_zip : String? = nil, supplier_country : String? = nil, supplier_vat_id : String? = nil) : Response(OpenAPIClient::XRechnungResponse)
      @conn.request(OpenAPIClient::XRechnungResponse,
        method: :GET,
        path: "/api/v1/invoices/{id}/xrechnung".sub("{id}", OpenAPIClient.enc(id)),
        query: { "supplier_name" => supplier_name, "supplier_street" => supplier_street, "supplier_city" => supplier_city, "supplier_zip" => supplier_zip, "supplier_country" => supplier_country, "supplier_vat_id" => supplier_vat_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_invoices_zugferd(id : String, *, supplier_name : String? = nil, supplier_street : String? = nil, supplier_city : String? = nil, supplier_zip : String? = nil, supplier_country : String? = nil, supplier_vat_id : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/invoices/{id}/zugferd".sub("{id}", OpenAPIClient.enc(id)),
        query: { "supplier_name" => supplier_name, "supplier_street" => supplier_street, "supplier_city" => supplier_city, "supplier_zip" => supplier_zip, "supplier_country" => supplier_country, "supplier_vat_id" => supplier_vat_id },
        accept: %w[application/pdf],
        raw: true,
        auth: %w[bearer_token])
    end

    # 
    def v1_job_applications(*, posting_id : String? = nil, status : String? = nil, page : Int32? = nil, page_size : Int32? = nil) : Response(Array(OpenAPIClient::JobApplication))
      @conn.request(Array(OpenAPIClient::JobApplication),
        method: :GET,
        path: "/api/v1/job-applications",
        query: { "postingId" => posting_id, "status" => status, "page" => page, "pageSize" => page_size },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_job_applications_cv(application_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/job-applications/{application_id}/cv".sub("{application_id}", OpenAPIClient.enc(application_id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # 
    def v1_job_applications_delete(application_id : String) : Response(OpenAPIClient::JobApplication)
      @conn.request(OpenAPIClient::JobApplication,
        method: :DELETE,
        path: "/api/v1/job-applications/{application_id}".sub("{application_id}", OpenAPIClient.enc(application_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_job_applications_get(application_id : String) : Response(OpenAPIClient::JobApplication)
      @conn.request(OpenAPIClient::JobApplication,
        method: :GET,
        path: "/api/v1/job-applications/{application_id}".sub("{application_id}", OpenAPIClient.enc(application_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_job_applications_score(application_id : String) : Response(OpenAPIClient::JobApplication)
      @conn.request(OpenAPIClient::JobApplication,
        method: :POST,
        path: "/api/v1/job-applications/{application_id}/score".sub("{application_id}", OpenAPIClient.enc(application_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_job_applications_status(application_id : String, application_status_dto : OpenAPIClient::ApplicationStatusDto) : Response(OpenAPIClient::JobApplication)
      @conn.request(OpenAPIClient::JobApplication,
        method: :PATCH,
        path: "/api/v1/job-applications/{application_id}/status".sub("{application_id}", OpenAPIClient.enc(application_id)),
        body: application_status_dto,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_job_postings(*, status : String? = nil, page : Int32? = nil, page_size : Int32? = nil) : Response(Array(OpenAPIClient::JobPosting))
      @conn.request(Array(OpenAPIClient::JobPosting),
        method: :GET,
        path: "/api/v1/job-postings",
        query: { "status" => status, "page" => page, "pageSize" => page_size },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_job_postings_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/job-postings/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_job_postings_get(id : String) : Response(OpenAPIClient::JobPosting)
      @conn.request(OpenAPIClient::JobPosting,
        method: :GET,
        path: "/api/v1/job-postings/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_job_postings_post(job_posting_create : OpenAPIClient::JobPostingCreate) : Response(OpenAPIClient::JobPosting)
      @conn.request(OpenAPIClient::JobPosting,
        method: :POST,
        path: "/api/v1/job-postings",
        body: job_posting_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_job_postings_put(id : String, job_posting_update : OpenAPIClient::JobPostingUpdate) : Response(OpenAPIClient::JobPosting)
      @conn.request(OpenAPIClient::JobPosting,
        method: :PUT,
        path: "/api/v1/job-postings/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: job_posting_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_kyc_records(kyc_record_create : OpenAPIClient::KycRecordCreate) : Response(OpenAPIClient::KycRecord)
      @conn.request(OpenAPIClient::KycRecord,
        method: :POST,
        path: "/api/v1/kyc-records",
        body: kyc_record_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_kyc_records_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/kyc-records/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_kyc_records_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::KycRecord))
      @conn.request(Array(OpenAPIClient::KycRecord),
        method: :GET,
        path: "/api/v1/kyc-records/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_kyc_records_get_1(id : String) : Response(OpenAPIClient::KycRecord)
      @conn.request(OpenAPIClient::KycRecord,
        method: :GET,
        path: "/api/v1/kyc-records/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_kyc_records_put(id : String, kyc_record_update : OpenAPIClient::KycRecordUpdate) : Response(OpenAPIClient::KycRecord)
      @conn.request(OpenAPIClient::KycRecord,
        method: :PUT,
        path: "/api/v1/kyc-records/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: kyc_record_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Labor-cost report: worked hours aggregated per employee / order / day, valued at the employee&#39;s hourly cost rate.
    def v1_labor_costs(*, from : Time? = nil, to : Time? = nil, group_by : String? = nil) : Response(Array(OpenAPIClient::LaborCostRow))
      @conn.request(Array(OpenAPIClient::LaborCostRow),
        method: :GET,
        path: "/api/v1/labor-costs",
        query: { "from" => from, "to" => to, "group_by" => group_by },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # List all legal documents of the tenant. Missing documents are seeded from the default texts (with tenant placeholders replaced) on first access.
    def v1_legal_documents() : Response(Array(OpenAPIClient::LegalDocument))
      @conn.request(Array(OpenAPIClient::LegalDocument),
        method: :GET,
        path: "/api/v1/legal/documents",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Upsert legal documents per (doc_type, lang). Returns the full tenant list.
    def v1_legal_documents_put(legal_document_upsert : Array(OpenAPIClient::LegalDocumentUpsert)) : Response(Array(OpenAPIClient::LegalDocument))
      @conn.request(Array(OpenAPIClient::LegalDocument),
        method: :PUT,
        path: "/api/v1/legal/documents",
        body: legal_document_upsert,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Restore default texts for all documents (or a single doc_type/lang when the optional filter is given). Returns the full tenant list.
    def v1_legal_documents_reset(legal_document_reset : OpenAPIClient::LegalDocumentReset) : Response(Array(OpenAPIClient::LegalDocument))
      @conn.request(Array(OpenAPIClient::LegalDocument),
        method: :POST,
        path: "/api/v1/legal/documents/reset",
        body: legal_document_reset,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # List connections for the current tenant
    def v1_marketplace_connections() : Response(Array(OpenAPIClient::MarketplaceConnection))
      @conn.request(Array(OpenAPIClient::MarketplaceConnection),
        method: :GET,
        path: "/api/v1/marketplace/connections",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Soft-delete a connection
    def v1_marketplace_connections_delete(connection_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/marketplace/connections/{connection_id}".sub("{connection_id}", OpenAPIClient.enc(connection_id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # Get current sync direction configuration for a connection
    def v1_marketplace_connections_directions(connection_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/marketplace/connections/{connection_id}/directions".sub("{connection_id}", OpenAPIClient.enc(connection_id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # Update per-entity sync direction configuration for a connection
    def v1_marketplace_connections_directions_put(connection_id : String, update_sync_direction_request : OpenAPIClient::UpdateSyncDirectionRequest) : Response(Nil)
      @conn.request(Nil,
        method: :PUT,
        path: "/api/v1/marketplace/connections/{connection_id}/directions".sub("{connection_id}", OpenAPIClient.enc(connection_id)),
        body: update_sync_direction_request,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Get a single connection
    def v1_marketplace_connections_get(connection_id : String) : Response(OpenAPIClient::MarketplaceConnection)
      @conn.request(OpenAPIClient::MarketplaceConnection,
        method: :GET,
        path: "/api/v1/marketplace/connections/{connection_id}".sub("{connection_id}", OpenAPIClient.enc(connection_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Get sync logs for a connection
    def v1_marketplace_connections_logs(connection_id : String) : Response(Array(OpenAPIClient::SyncLog))
      @conn.request(Array(OpenAPIClient::SyncLog),
        method: :GET,
        path: "/api/v1/marketplace/connections/{connection_id}/logs".sub("{connection_id}", OpenAPIClient.enc(connection_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Create a new connection (for API-key based platforms)
    def v1_marketplace_connections_post(create_connection_request : OpenAPIClient::CreateConnectionRequest) : Response(OpenAPIClient::MarketplaceConnection)
      @conn.request(OpenAPIClient::MarketplaceConnection,
        method: :POST,
        path: "/api/v1/marketplace/connections",
        body: create_connection_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Update a connection
    def v1_marketplace_connections_put(connection_id : String, update_connection_request : OpenAPIClient::UpdateConnectionRequest) : Response(OpenAPIClient::MarketplaceConnection)
      @conn.request(OpenAPIClient::MarketplaceConnection,
        method: :PUT,
        path: "/api/v1/marketplace/connections/{connection_id}".sub("{connection_id}", OpenAPIClient.enc(connection_id)),
        body: update_connection_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Trigger sync for a connection
    def v1_marketplace_connections_sync(connection_id : String, *, sync_type : String? = nil, direction : String? = nil) : Response(OpenAPIClient::SyncSummary)
      @conn.request(OpenAPIClient::SyncSummary,
        method: :POST,
        path: "/api/v1/marketplace/connections/{connection_id}/sync".sub("{connection_id}", OpenAPIClient.enc(connection_id)),
        query: { "sync_type" => sync_type, "direction" => direction },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # OAuth: initiate authorization flow
    def v1_marketplace_oauth_authorize(o_auth_authorize_request : OpenAPIClient::OAuthAuthorizeRequest) : Response(OpenAPIClient::OAuthAuthorizeResponse)
      @conn.request(OpenAPIClient::OAuthAuthorizeResponse,
        method: :POST,
        path: "/api/v1/marketplace/oauth/authorize",
        body: o_auth_authorize_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # OAuth: handle callback after authorization
    def v1_marketplace_oauth_callback(o_auth_callback_request : OpenAPIClient::OAuthCallbackRequest) : Response(OpenAPIClient::MarketplaceConnection)
      @conn.request(OpenAPIClient::MarketplaceConnection,
        method: :POST,
        path: "/api/v1/marketplace/oauth/callback",
        body: o_auth_callback_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # List all supported platforms
    def v1_marketplace_platforms() : Response(Array(OpenAPIClient::PlatformInfo))
      @conn.request(Array(OpenAPIClient::PlatformInfo),
        method: :GET,
        path: "/api/v1/marketplace/platforms",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Webhook receiver
    def v1_marketplace_webhook(platform : String, connection_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/api/v1/marketplace/webhook/{platform}/{connection_id}".sub("{platform}", OpenAPIClient.enc(platform)).sub("{connection_id}", OpenAPIClient.enc(connection_id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # GET /api/v1/me/permissions — resolved permissions from the auth token, used by the frontend to show/hide admin navigation.
    def v1_me_permissions() : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :GET,
        path: "/api/v1/me/permissions",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_notifications() : Response(Array(OpenAPIClient::NotificationDto))
      @conn.request(Array(OpenAPIClient::NotificationDto),
        method: :GET,
        path: "/api/v1/notifications",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_notifications_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/notifications/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # 
    def v1_notifications_read(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :PUT,
        path: "/api/v1/notifications/{id}/read".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # 
    def v1_notifications_read_all() : Response(Int64)
      @conn.request(Int64,
        method: :PUT,
        path: "/api/v1/notifications/read-all",
        accept: %w[text/plain],
        raw: true,
        auth: %w[bearer_token])
    end

    # 
    def v1_notifications_unread_count() : Response(Int64)
      @conn.request(Int64,
        method: :GET,
        path: "/api/v1/notifications/unread-count",
        accept: %w[text/plain],
        raw: true,
        auth: %w[bearer_token])
    end

    # 
    def v1_order(order_number : String) : Response(OpenAPIClient::Order)
      @conn.request(OpenAPIClient::Order,
        method: :GET,
        path: "/api/v1/order/{order_number}".sub("{order_number}", OpenAPIClient.enc(order_number)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_order_confirmations(order_confirmation_create : OpenAPIClient::OrderConfirmationCreate) : Response(OpenAPIClient::OrderConfirmation)
      @conn.request(OpenAPIClient::OrderConfirmation,
        method: :POST,
        path: "/api/v1/order-confirmations",
        body: order_confirmation_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_order_confirmations_delete(confirmation_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/order-confirmations/{confirmation_id}".sub("{confirmation_id}", OpenAPIClient.enc(confirmation_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_order_confirmations_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::OrderConfirmation))
      @conn.request(Array(OpenAPIClient::OrderConfirmation),
        method: :GET,
        path: "/api/v1/order-confirmations/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_order_confirmations_get_1(confirmation_id : String) : Response(OpenAPIClient::OrderConfirmation)
      @conn.request(OpenAPIClient::OrderConfirmation,
        method: :GET,
        path: "/api/v1/order-confirmations/{confirmation_id}".sub("{confirmation_id}", OpenAPIClient.enc(confirmation_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_order_confirmations_pdf(confirmation_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/order-confirmations/{confirmation_id}/pdf".sub("{confirmation_id}", OpenAPIClient.enc(confirmation_id)),
        accept: %w[application/pdf application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_order_confirmations_pursue(confirmation_id : String) : Response(OpenAPIClient::DeliveryNote)
      @conn.request(OpenAPIClient::DeliveryNote,
        method: :POST,
        path: "/api/v1/order-confirmations/{confirmation_id}/pursue".sub("{confirmation_id}", OpenAPIClient.enc(confirmation_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_order_confirmations_restore(confirmation_id : String) : Response(OpenAPIClient::OrderConfirmation)
      @conn.request(OpenAPIClient::OrderConfirmation,
        method: :POST,
        path: "/api/v1/order-confirmations/{confirmation_id}/restore".sub("{confirmation_id}", OpenAPIClient.enc(confirmation_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_orders(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::Order))
      @conn.request(Array(OpenAPIClient::Order),
        method: :GET,
        path: "/api/v1/orders",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_orders_by_ext_ref(ext_ref : String) : Response(OpenAPIClient::Order)
      @conn.request(OpenAPIClient::Order,
        method: :GET,
        path: "/api/v1/orders/by-ext-ref/{ext_ref}".sub("{ext_ref}", OpenAPIClient.enc(ext_ref)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_orders_patch(order_id : String, body : JSON::Any) : Response(OpenAPIClient::Order)
      @conn.request(OpenAPIClient::Order,
        method: :PATCH,
        path: "/api/v1/orders/{order_id}".sub("{order_id}", OpenAPIClient.enc(order_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Create a real shipment for an order: calls the configured carrier&#39;s label API, stores the returned tracking/label on a new shipment row, and marks the order as shipped.
    def v1_orders_shipments(order_number : String, create_shipment_request : OpenAPIClient::CreateShipmentRequest) : Response(OpenAPIClient::Shipment)
      @conn.request(OpenAPIClient::Shipment,
        method: :POST,
        path: "/api/v1/orders/{order_number}/shipments".sub("{order_number}", OpenAPIClient.enc(order_number)),
        body: create_shipment_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_orders_state(order_id : String, order_state_update : OpenAPIClient::OrderStateUpdate) : Response(OpenAPIClient::Order)
      @conn.request(OpenAPIClient::Order,
        method: :PUT,
        path: "/api/v1/orders/{order_id}/state".sub("{order_id}", OpenAPIClient.enc(order_id)),
        body: order_state_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_orders_tags(order_id : String, order_tags_request : OpenAPIClient::OrderTagsRequest) : Response(OpenAPIClient::Order)
      @conn.request(OpenAPIClient::Order,
        method: :PUT,
        path: "/api/v1/orders/{order_id}/tags".sub("{order_id}", OpenAPIClient.enc(order_id)),
        body: order_tags_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_orders_tags_post(order_id : String, order_tags_request : OpenAPIClient::OrderTagsRequest) : Response(OpenAPIClient::Order)
      @conn.request(OpenAPIClient::Order,
        method: :POST,
        path: "/api/v1/orders/{order_id}/tags".sub("{order_id}", OpenAPIClient.enc(order_id)),
        body: order_tags_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Mark packing as complete and transition order to shipped
    def v1_packing_complete(order_number : String, packing_complete_request : OpenAPIClient::PackingCompleteRequest) : Response(OpenAPIClient::PackingCompleteResponse)
      @conn.request(OpenAPIClient::PackingCompleteResponse,
        method: :POST,
        path: "/api/v1/packing/{order_number}/complete".sub("{order_number}", OpenAPIClient.enc(order_number)),
        body: packing_complete_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Print delivery note (Lieferschein) for an order
    def v1_packing_print_delivery_note(order_number : String) : Response(OpenAPIClient::PrintDeliveryNoteResponse)
      @conn.request(OpenAPIClient::PrintDeliveryNoteResponse,
        method: :POST,
        path: "/api/v1/packing/{order_number}/print-delivery-note".sub("{order_number}", OpenAPIClient.enc(order_number)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Print shipping label for an order
    def v1_packing_print_label(order_number : String) : Response(OpenAPIClient::PrintLabelResponse)
      @conn.request(OpenAPIClient::PrintLabelResponse,
        method: :POST,
        path: "/api/v1/packing/{order_number}/print-label".sub("{order_number}", OpenAPIClient.enc(order_number)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Get the packing queue - orders ready for packing
    def v1_packing_queue(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil) : Response(OpenAPIClient::PackingQueue)
      @conn.request(OpenAPIClient::PackingQueue,
        method: :GET,
        path: "/api/v1/packing/queue",
        query: { "page" => page, "page_size" => page_size, "search" => search },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Record video of packing process
    def v1_packing_record_video(order_number : String, body : JSON::Any) : Response(OpenAPIClient::PackingVideoResponse)
      @conn.request(OpenAPIClient::PackingVideoResponse,
        method: :POST,
        path: "/api/v1/packing/{order_number}/record-video".sub("{order_number}", OpenAPIClient.enc(order_number)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_participations(participation_create : OpenAPIClient::ParticipationCreate) : Response(OpenAPIClient::Participation)
      @conn.request(OpenAPIClient::Participation,
        method: :POST,
        path: "/api/v1/participations",
        body: participation_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_participations_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/participations/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_participations_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::Participation))
      @conn.request(Array(OpenAPIClient::Participation),
        method: :GET,
        path: "/api/v1/participations/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_participations_get_1(id : String) : Response(OpenAPIClient::Participation)
      @conn.request(OpenAPIClient::Participation,
        method: :GET,
        path: "/api/v1/participations/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_participations_put(id : String, participation_update : OpenAPIClient::ParticipationUpdate) : Response(OpenAPIClient::Participation)
      @conn.request(OpenAPIClient::Participation,
        method: :PUT,
        path: "/api/v1/participations/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: participation_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payment_conditions() : Response(Array(OpenAPIClient::PaymentCondition))
      @conn.request(Array(OpenAPIClient::PaymentCondition),
        method: :GET,
        path: "/api/v1/payment-conditions",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payment_gateways(body : JSON::Any) : Response(OpenAPIClient::PaymentGateway)
      @conn.request(OpenAPIClient::PaymentGateway,
        method: :POST,
        path: "/api/v1/payment-gateways",
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payment_gateways_delete(gateway_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/payment-gateways/{gateway_id}".sub("{gateway_id}", OpenAPIClient.enc(gateway_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payment_gateways_get() : Response(Array(OpenAPIClient::PaymentGateway))
      @conn.request(Array(OpenAPIClient::PaymentGateway),
        method: :GET,
        path: "/api/v1/payment-gateways/",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payment_gateways_oauth_authorize(gateway_o_auth_authorize_request : OpenAPIClient::GatewayOAuthAuthorizeRequest) : Response(OpenAPIClient::GatewayOAuthAuthorizeResponse)
      @conn.request(OpenAPIClient::GatewayOAuthAuthorizeResponse,
        method: :POST,
        path: "/api/v1/payment-gateways/oauth/authorize",
        body: gateway_o_auth_authorize_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payment_gateways_oauth_callback(gateway_o_auth_callback_request : OpenAPIClient::GatewayOAuthCallbackRequest) : Response(OpenAPIClient::PaymentGateway)
      @conn.request(OpenAPIClient::PaymentGateway,
        method: :POST,
        path: "/api/v1/payment-gateways/oauth/callback",
        body: gateway_o_auth_callback_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payment_gateways_put(gateway_id : String, body : JSON::Any) : Response(OpenAPIClient::PaymentGateway)
      @conn.request(OpenAPIClient::PaymentGateway,
        method: :PUT,
        path: "/api/v1/payment-gateways/{gateway_id}".sub("{gateway_id}", OpenAPIClient.enc(gateway_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payments(payment_create : OpenAPIClient::PaymentCreate) : Response(OpenAPIClient::Payment)
      @conn.request(OpenAPIClient::Payment,
        method: :POST,
        path: "/api/v1/payments",
        body: payment_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Allocate a payment to an invoice
    def v1_payments_allocate(allocate_payment_request : OpenAPIClient::AllocatePaymentRequest) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/api/v1/payments/allocate",
        body: allocate_payment_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payments_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/payments/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payments_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::Payment))
      @conn.request(Array(OpenAPIClient::Payment),
        method: :GET,
        path: "/api/v1/payments/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payments_get_1(id : String) : Response(OpenAPIClient::Payment)
      @conn.request(OpenAPIClient::Payment,
        method: :GET,
        path: "/api/v1/payments/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Get open invoices for a customer
    def v1_payments_open_invoices(customer_id : String) : Response(Array(OpenAPIClient::Invoice))
      @conn.request(Array(OpenAPIClient::Invoice),
        method: :GET,
        path: "/api/v1/payments/open-invoices/{customer_id}".sub("{customer_id}", OpenAPIClient.enc(customer_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payments_put(id : String, body : JSON::Any) : Response(OpenAPIClient::Payment)
      @conn.request(OpenAPIClient::Payment,
        method: :PUT,
        path: "/api/v1/payments/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payments_restore(id : String) : Response(OpenAPIClient::Payment)
      @conn.request(OpenAPIClient::Payment,
        method: :POST,
        path: "/api/v1/payments/{id}/restore".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payroll(*, year : Int32? = nil, status : String? = nil) : Response(Array(OpenAPIClient::PayrollRunApi))
      @conn.request(Array(OpenAPIClient::PayrollRunApi),
        method: :GET,
        path: "/api/v1/payroll",
        query: { "year" => year, "status" => status },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payroll_approve(id : String) : Response(OpenAPIClient::PayrollRunApi)
      @conn.request(OpenAPIClient::PayrollRunApi,
        method: :POST,
        path: "/api/v1/payroll/{id}/approve".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payroll_autopay(id : String, body : JSON::Any? = nil) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/v1/payroll/{id}/autopay".sub("{id}", OpenAPIClient.enc(id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payroll_calculate(id : String) : Response(OpenAPIClient::PayrollRunApi)
      @conn.request(OpenAPIClient::PayrollRunApi,
        method: :POST,
        path: "/api/v1/payroll/{id}/calculate".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payroll_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/payroll/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # 
    def v1_payroll_elster_export(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/api/v1/payroll/{id}/elster-export".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # 
    def v1_payroll_email(id : String) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/v1/payroll/{id}/email".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payroll_entries_pdf(id : String, entry_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/payroll/{id}/entries/{entry_id}/pdf".sub("{id}", OpenAPIClient.enc(id)).sub("{entry_id}", OpenAPIClient.enc(entry_id)),
        accept: %w[application/pdf],
        raw: true,
        auth: %w[bearer_token])
    end

    # 
    def v1_payroll_get(id : String) : Response(OpenAPIClient::PayrollRunApi)
      @conn.request(OpenAPIClient::PayrollRunApi,
        method: :GET,
        path: "/api/v1/payroll/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payroll_pay(id : String, payroll_pay_payload : OpenAPIClient::PayrollPayPayload) : Response(OpenAPIClient::PayrollRunApi)
      @conn.request(OpenAPIClient::PayrollRunApi,
        method: :POST,
        path: "/api/v1/payroll/{id}/pay".sub("{id}", OpenAPIClient.enc(id)),
        body: payroll_pay_payload,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payroll_pdf(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/payroll/{id}/pdf".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/pdf],
        raw: true,
        auth: %w[bearer_token])
    end

    # 
    def v1_payroll_post(payroll_create_payload : OpenAPIClient::PayrollCreatePayload) : Response(OpenAPIClient::PayrollRunApi)
      @conn.request(OpenAPIClient::PayrollRunApi,
        method: :POST,
        path: "/api/v1/payroll",
        body: payroll_create_payload,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payroll_summary(year : Int32) : Response(OpenAPIClient::YearlyPayrollSummary)
      @conn.request(OpenAPIClient::YearlyPayrollSummary,
        method: :GET,
        path: "/api/v1/payroll/summary/{year}".sub("{year}", OpenAPIClient.enc(year)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_payroll_sv_meldungen(id : String) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/v1/payroll/{id}/sv-meldungen".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # All canonical plans (free/starter/business/enterprise) — the single source of truth lives in &#x60;crate::saasy::plans&#x60;, matching marketing.
    def v1_plans() : Response(OpenAPIClient::ApiResponseVecPlan)
      @conn.request(OpenAPIClient::ApiResponseVecPlan,
        method: :GET,
        path: "/api/v1/plans",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_posting_categories() : Response(Array(OpenAPIClient::PostingCategory))
      @conn.request(Array(OpenAPIClient::PostingCategory),
        method: :GET,
        path: "/api/v1/posting-categories",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_posting_categories_delete(category_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/posting-categories/{category_id}".sub("{category_id}", OpenAPIClient.enc(category_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_posting_categories_post(body : JSON::Any) : Response(OpenAPIClient::PostingCategory)
      @conn.request(OpenAPIClient::PostingCategory,
        method: :POST,
        path: "/api/v1/posting-categories",
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_posting_categories_put(category_id : String, body : JSON::Any) : Response(OpenAPIClient::PostingCategory)
      @conn.request(OpenAPIClient::PostingCategory,
        method: :PUT,
        path: "/api/v1/posting-categories/{category_id}".sub("{category_id}", OpenAPIClient.enc(category_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_posting_categories_seed(skr_version : String) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/api/v1/posting-categories/seed/{skr_version}".sub("{skr_version}", OpenAPIClient.enc(skr_version)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_price_tiers(price_tier_create : OpenAPIClient::PriceTierCreate) : Response(OpenAPIClient::PriceTier)
      @conn.request(OpenAPIClient::PriceTier,
        method: :POST,
        path: "/api/v1/price-tiers",
        body: price_tier_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_price_tiers_delete(price_tier_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/price-tiers/{price_tier_id}".sub("{price_tier_id}", OpenAPIClient.enc(price_tier_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_price_tiers_get(*, page : Int32? = nil, page_size : Int32? = nil, product_id : String? = nil, customer_group_id : String? = nil) : Response(Array(OpenAPIClient::PriceTier))
      @conn.request(Array(OpenAPIClient::PriceTier),
        method: :GET,
        path: "/api/v1/price-tiers/",
        query: { "page" => page, "page_size" => page_size, "product_id" => product_id, "customer_group_id" => customer_group_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_price_tiers_get_1(price_tier_id : String) : Response(OpenAPIClient::PriceTier)
      @conn.request(OpenAPIClient::PriceTier,
        method: :GET,
        path: "/api/v1/price-tiers/{price_tier_id}".sub("{price_tier_id}", OpenAPIClient.enc(price_tier_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_price_tiers_put(price_tier_id : String, price_tier_update : OpenAPIClient::PriceTierUpdate) : Response(OpenAPIClient::PriceTier)
      @conn.request(OpenAPIClient::PriceTier,
        method: :PUT,
        path: "/api/v1/price-tiers/{price_tier_id}".sub("{price_tier_id}", OpenAPIClient.enc(price_tier_id)),
        body: price_tier_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_price_tiers_resolved(*, product_id : String? = nil, quantity : Int64? = nil, contact_id : String? = nil) : Response(OpenAPIClient::ResolvedPriceResponse)
      @conn.request(OpenAPIClient::ResolvedPriceResponse,
        method: :GET,
        path: "/api/v1/price-tiers/resolved",
        query: { "productId" => product_id, "quantity" => quantity, "contactId" => contact_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_attributes(product_attribute_create : OpenAPIClient::ProductAttributeCreate) : Response(OpenAPIClient::ProductAttribute)
      @conn.request(OpenAPIClient::ProductAttribute,
        method: :POST,
        path: "/api/v1/product-attributes",
        body: product_attribute_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_attributes_delete(attribute_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/product-attributes/{attribute_id}".sub("{attribute_id}", OpenAPIClient.enc(attribute_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_attributes_get(*, page : Int32? = nil, page_size : Int32? = nil, product_id : String? = nil, is_filterable : Bool? = nil, search : String? = nil) : Response(Array(OpenAPIClient::ProductAttribute))
      @conn.request(Array(OpenAPIClient::ProductAttribute),
        method: :GET,
        path: "/api/v1/product-attributes/",
        query: { "page" => page, "page_size" => page_size, "product_id" => product_id, "is_filterable" => is_filterable, "search" => search },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_attributes_get_1(attribute_id : String) : Response(OpenAPIClient::ProductAttribute)
      @conn.request(OpenAPIClient::ProductAttribute,
        method: :GET,
        path: "/api/v1/product-attributes/{attribute_id}".sub("{attribute_id}", OpenAPIClient.enc(attribute_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_attributes_put(attribute_id : String, product_attribute_update : OpenAPIClient::ProductAttributeUpdate) : Response(OpenAPIClient::ProductAttribute)
      @conn.request(OpenAPIClient::ProductAttribute,
        method: :PUT,
        path: "/api/v1/product-attributes/{attribute_id}".sub("{attribute_id}", OpenAPIClient.enc(attribute_id)),
        body: product_attribute_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_categories() : Response(Array(OpenAPIClient::ProductCategory))
      @conn.request(Array(OpenAPIClient::ProductCategory),
        method: :GET,
        path: "/api/v1/product-categories",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_categories_delete(category_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/product-categories/{category_id}".sub("{category_id}", OpenAPIClient.enc(category_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_categories_get(category_id : String) : Response(OpenAPIClient::ProductCategory)
      @conn.request(OpenAPIClient::ProductCategory,
        method: :GET,
        path: "/api/v1/product-categories/{category_id}".sub("{category_id}", OpenAPIClient.enc(category_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_categories_post(product_category : OpenAPIClient::ProductCategory) : Response(OpenAPIClient::ProductCategory)
      @conn.request(OpenAPIClient::ProductCategory,
        method: :POST,
        path: "/api/v1/product-categories",
        body: product_category,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_categories_put(category_id : String, body : JSON::Any) : Response(OpenAPIClient::ProductCategory)
      @conn.request(OpenAPIClient::ProductCategory,
        method: :PUT,
        path: "/api/v1/product-categories/{category_id}".sub("{category_id}", OpenAPIClient.enc(category_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_variants(product_variant : OpenAPIClient::ProductVariant) : Response(OpenAPIClient::ProductVariant)
      @conn.request(OpenAPIClient::ProductVariant,
        method: :POST,
        path: "/api/v1/product-variants",
        body: product_variant,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_variants_delete(variant_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/product-variants/{variant_id}".sub("{variant_id}", OpenAPIClient.enc(variant_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_variants_generate(generate_variants_request : OpenAPIClient::GenerateVariantsRequest) : Response(Array(OpenAPIClient::ProductVariant))
      @conn.request(Array(OpenAPIClient::ProductVariant),
        method: :POST,
        path: "/api/v1/product-variants/generate",
        body: generate_variants_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_variants_get(*, page : Int32? = nil, page_size : Int32? = nil, product_id : String? = nil, is_active : Bool? = nil) : Response(Array(OpenAPIClient::ProductVariant))
      @conn.request(Array(OpenAPIClient::ProductVariant),
        method: :GET,
        path: "/api/v1/product-variants/",
        query: { "page" => page, "page_size" => page_size, "product_id" => product_id, "is_active" => is_active },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_variants_get_1(variant_id : String) : Response(OpenAPIClient::ProductVariant)
      @conn.request(OpenAPIClient::ProductVariant,
        method: :GET,
        path: "/api/v1/product-variants/{variant_id}".sub("{variant_id}", OpenAPIClient.enc(variant_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_product_variants_put(variant_id : String, body : JSON::Any) : Response(OpenAPIClient::ProductVariant)
      @conn.request(OpenAPIClient::ProductVariant,
        method: :PUT,
        path: "/api/v1/product-variants/{variant_id}".sub("{variant_id}", OpenAPIClient.enc(variant_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_production_orders(production_order : OpenAPIClient::ProductionOrder) : Response(OpenAPIClient::ProductionOrder)
      @conn.request(OpenAPIClient::ProductionOrder,
        method: :POST,
        path: "/api/v1/production-orders",
        body: production_order,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Actual-costing report (Nachkalkulation) — material costs from BOM components at their purchase price plus the resulting per-unit cost and margin against the finished product&#39;s sale price.
    def v1_production_orders_costing(production_order_id : String) : Response(OpenAPIClient::ProductionOrderCosting)
      @conn.request(OpenAPIClient::ProductionOrderCosting,
        method: :GET,
        path: "/api/v1/production-orders/{production_order_id}/costing".sub("{production_order_id}", OpenAPIClient.enc(production_order_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_production_orders_delete(production_order_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/production-orders/{production_order_id}".sub("{production_order_id}", OpenAPIClient.enc(production_order_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_production_orders_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, status : String? = nil) : Response(Array(OpenAPIClient::ProductionOrder))
      @conn.request(Array(OpenAPIClient::ProductionOrder),
        method: :GET,
        path: "/api/v1/production-orders/",
        query: { "page" => page, "pageSize" => page_size, "search" => search, "status" => status },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_production_orders_get_1(production_order_id : String) : Response(OpenAPIClient::ProductionOrder)
      @conn.request(OpenAPIClient::ProductionOrder,
        method: :GET,
        path: "/api/v1/production-orders/{production_order_id}".sub("{production_order_id}", OpenAPIClient.enc(production_order_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_production_orders_put(production_order_id : String, production_order : OpenAPIClient::ProductionOrder) : Response(OpenAPIClient::ProductionOrder)
      @conn.request(OpenAPIClient::ProductionOrder,
        method: :PUT,
        path: "/api/v1/production-orders/{production_order_id}".sub("{production_order_id}", OpenAPIClient.enc(production_order_id)),
        body: production_order,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_production_orders_status(production_order_id : String, production_order_status_update : OpenAPIClient::ProductionOrderStatusUpdate) : Response(OpenAPIClient::ProductionOrder)
      @conn.request(OpenAPIClient::ProductionOrder,
        method: :PUT,
        path: "/api/v1/production-orders/{production_order_id}/status".sub("{production_order_id}", OpenAPIClient.enc(production_order_id)),
        body: production_order_status_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_products(product_create : OpenAPIClient::ProductCreate) : Response(OpenAPIClient::Product)
      @conn.request(OpenAPIClient::Product,
        method: :POST,
        path: "/api/v1/products",
        body: product_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_products_delete(product_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/products/{product_id}".sub("{product_id}", OpenAPIClient.enc(product_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_products_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::Product))
      @conn.request(Array(OpenAPIClient::Product),
        method: :GET,
        path: "/api/v1/products/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_products_get_1(product_id : String) : Response(OpenAPIClient::Product)
      @conn.request(OpenAPIClient::Product,
        method: :GET,
        path: "/api/v1/products/{product_id}".sub("{product_id}", OpenAPIClient.enc(product_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_products_low_stock(*, threshold : Int64? = nil) : Response(Array(OpenAPIClient::ProductStock))
      @conn.request(Array(OpenAPIClient::ProductStock),
        method: :GET,
        path: "/api/v1/products/low-stock",
        query: { "threshold" => threshold },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_products_put(product_id : String, product_update : OpenAPIClient::ProductUpdate) : Response(OpenAPIClient::Product)
      @conn.request(OpenAPIClient::Product,
        method: :PUT,
        path: "/api/v1/products/{product_id}".sub("{product_id}", OpenAPIClient.enc(product_id)),
        body: product_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_products_restore(product_id : String) : Response(OpenAPIClient::Product)
      @conn.request(OpenAPIClient::Product,
        method: :POST,
        path: "/api/v1/products/{product_id}/restore".sub("{product_id}", OpenAPIClient.enc(product_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_products_stock(product_id : String) : Response(OpenAPIClient::ProductStock)
      @conn.request(OpenAPIClient::ProductStock,
        method: :GET,
        path: "/api/v1/products/{product_id}/stock".sub("{product_id}", OpenAPIClient.enc(product_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_products_stock_put(product_id : String, stock_update_request : OpenAPIClient::StockUpdateRequest) : Response(OpenAPIClient::ProductStock)
      @conn.request(OpenAPIClient::ProductStock,
        method: :PUT,
        path: "/api/v1/products/{product_id}/stock".sub("{product_id}", OpenAPIClient.enc(product_id)),
        body: stock_update_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_proforma_invoices(proforma_invoice : OpenAPIClient::ProformaInvoice) : Response(OpenAPIClient::ProformaInvoice)
      @conn.request(OpenAPIClient::ProformaInvoice,
        method: :POST,
        path: "/api/v1/proforma-invoices",
        body: proforma_invoice,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_proforma_invoices_convert(proforma_id : String) : Response(OpenAPIClient::ConvertResponse)
      @conn.request(OpenAPIClient::ConvertResponse,
        method: :POST,
        path: "/api/v1/proforma-invoices/{proforma_id}/convert".sub("{proforma_id}", OpenAPIClient.enc(proforma_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_proforma_invoices_delete(proforma_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/proforma-invoices/{proforma_id}".sub("{proforma_id}", OpenAPIClient.enc(proforma_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_proforma_invoices_get(*, page : Int32? = nil, page_size : Int32? = nil, status : String? = nil, customer_id : String? = nil, order_number : String? = nil) : Response(Array(OpenAPIClient::ProformaInvoice))
      @conn.request(Array(OpenAPIClient::ProformaInvoice),
        method: :GET,
        path: "/api/v1/proforma-invoices/",
        query: { "page" => page, "page_size" => page_size, "status" => status, "customer_id" => customer_id, "order_number" => order_number },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_proforma_invoices_get_1(proforma_id : String) : Response(OpenAPIClient::ProformaInvoice)
      @conn.request(OpenAPIClient::ProformaInvoice,
        method: :GET,
        path: "/api/v1/proforma-invoices/{proforma_id}".sub("{proforma_id}", OpenAPIClient.enc(proforma_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_proforma_invoices_put(proforma_id : String, body : JSON::Any) : Response(OpenAPIClient::ProformaInvoice)
      @conn.request(OpenAPIClient::ProformaInvoice,
        method: :PUT,
        path: "/api/v1/proforma-invoices/{proforma_id}".sub("{proforma_id}", OpenAPIClient.enc(proforma_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Supplier/carrier requests an inbound delivery slot (public, no auth). The tenant is derived from the warehouse found by &#x60;code&#x60; — never from the request.
    def v1_public_delivery_appointments_request(public_delivery_appointment_request : OpenAPIClient::PublicDeliveryAppointmentRequest) : Response(OpenAPIClient::PublicDeliveryAppointmentResponse)
      @conn.request(OpenAPIClient::PublicDeliveryAppointmentResponse,
        method: :POST,
        path: "/api/v1/public/delivery-appointments/request",
        body: public_delivery_appointment_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Supplier/carrier checks appointment status (public, no auth). The appointment is only revealed when email AND token match.
    def v1_public_delivery_appointments_status(*, appointment_id : String? = nil, email : String? = nil, token : String? = nil) : Response(OpenAPIClient::PublicDeliveryAppointmentStatusResponse)
      @conn.request(OpenAPIClient::PublicDeliveryAppointmentStatusResponse,
        method: :GET,
        path: "/api/v1/public/delivery-appointments/status",
        query: { "appointmentId" => appointment_id, "email" => email, "token" => token },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_public_jobs() : Response(Array(OpenAPIClient::PublicPosting))
      @conn.request(Array(OpenAPIClient::PublicPosting),
        method: :GET,
        path: "/api/v1/public/jobs",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_public_jobs_apply(posting_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/api/v1/public/jobs/{posting_id}/apply".sub("{posting_id}", OpenAPIClient.enc(posting_id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # Inbound CV email, mailgun/sendgrid inbound-parse style: multipart form with &#x60;from&#x60;, &#x60;subject&#x60;, &#x60;body-plain&#x60; and one or more &#x60;attachment-N&#x60; file fields. The subject may reference a posting as &#x60;[JOB-&lt;posting_id&gt;]&#x60;; without one the application lands in the general inbox.
    def v1_public_jobs_inbound_email() : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/api/v1/public/jobs/inbound-email",
        accept: %w[],
        auth: %w[bearer_token])
    end

    # List all returns for an order (public, no auth).
    def v1_public_returns_list(*, order_number : String? = nil, email : String? = nil) : Response(Array(OpenAPIClient::PublicReturnStatusResponse))
      @conn.request(Array(OpenAPIClient::PublicReturnStatusResponse),
        method: :GET,
        path: "/api/v1/public/returns/list",
        query: { "orderNumber" => order_number, "email" => email },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Customer requests a return for an order (public, no auth).
    def v1_public_returns_request(public_return_request : OpenAPIClient::PublicReturnRequest) : Response(OpenAPIClient::PublicReturnResponse)
      @conn.request(OpenAPIClient::PublicReturnResponse,
        method: :POST,
        path: "/api/v1/public/returns/request",
        body: public_return_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Customer checks the status of a return (public, no auth). The return is only revealed when its linked order&#39;s email matches.
    def v1_public_returns_status(*, return_number : String? = nil, return_order_id : String? = nil, email : String? = nil, order_number : String? = nil) : Response(OpenAPIClient::PublicReturnStatusResponse)
      @conn.request(OpenAPIClient::PublicReturnStatusResponse,
        method: :GET,
        path: "/api/v1/public/returns/status",
        query: { "returnNumber" => return_number, "returnOrderId" => return_order_id, "email" => email, "orderNumber" => order_number },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Customer-facing tracking lookup: order number + email → shipment status and live carrier events. No auth (public storefront API).
    def v1_public_track(track_order_request : OpenAPIClient::TrackOrderRequest) : Response(OpenAPIClient::TrackOrderResponse)
      @conn.request(OpenAPIClient::TrackOrderResponse,
        method: :POST,
        path: "/api/v1/public/track",
        body: track_order_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_purchase_orders(purchase_order : OpenAPIClient::PurchaseOrder) : Response(OpenAPIClient::PurchaseOrder)
      @conn.request(OpenAPIClient::PurchaseOrder,
        method: :POST,
        path: "/api/v1/purchase-orders",
        body: purchase_order,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_purchase_orders_delete(purchase_order_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/purchase-orders/{purchase_order_id}".sub("{purchase_order_id}", OpenAPIClient.enc(purchase_order_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_purchase_orders_get(*, page : Int32? = nil, page_size : Int32? = nil, status : String? = nil, supplier_name : String? = nil, search : String? = nil) : Response(Array(OpenAPIClient::PurchaseOrder))
      @conn.request(Array(OpenAPIClient::PurchaseOrder),
        method: :GET,
        path: "/api/v1/purchase-orders/",
        query: { "page" => page, "page_size" => page_size, "status" => status, "supplier_name" => supplier_name, "search" => search },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_purchase_orders_get_1(purchase_order_id : String) : Response(OpenAPIClient::PurchaseOrder)
      @conn.request(OpenAPIClient::PurchaseOrder,
        method: :GET,
        path: "/api/v1/purchase-orders/{purchase_order_id}".sub("{purchase_order_id}", OpenAPIClient.enc(purchase_order_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 3-way invoice check (Rechnungsprüfung): compares the purchase order line items, the quantities received via goods receipts, and the supplier invoice line items, reporting quantity and price variances per product.
    def v1_purchase_orders_match_invoice(purchase_order_id : String, invoice_match_request : OpenAPIClient::InvoiceMatchRequest) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/v1/purchase-orders/{purchase_order_id}/match-invoice".sub("{purchase_order_id}", OpenAPIClient.enc(purchase_order_id)),
        body: invoice_match_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_purchase_orders_put(purchase_order_id : String, body : JSON::Any) : Response(OpenAPIClient::PurchaseOrder)
      @conn.request(OpenAPIClient::PurchaseOrder,
        method: :PUT,
        path: "/api/v1/purchase-orders/{purchase_order_id}".sub("{purchase_order_id}", OpenAPIClient.enc(purchase_order_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_purchase_orders_status(purchase_order_id : String, purchase_order_status_update : OpenAPIClient::PurchaseOrderStatusUpdate) : Response(OpenAPIClient::PurchaseOrder)
      @conn.request(OpenAPIClient::PurchaseOrder,
        method: :PUT,
        path: "/api/v1/purchase-orders/{purchase_order_id}/status".sub("{purchase_order_id}", OpenAPIClient.enc(purchase_order_id)),
        body: purchase_order_status_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Effective limits + current usage for the calling tenant.
    def v1_quota() : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/quota",
        accept: %w[],
        auth: %w[bearer_token])
    end

    # Write the per-tenant quota override (&#x60;admin:settings&#x60;). An empty object clears the override.
    def v1_quota_put(quota_override : OpenAPIClient::QuotaOverride) : Response(Nil)
      @conn.request(Nil,
        method: :PUT,
        path: "/api/v1/quota",
        body: quota_override,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_quotations(quotation_create : OpenAPIClient::QuotationCreate) : Response(OpenAPIClient::Quotation)
      @conn.request(OpenAPIClient::Quotation,
        method: :POST,
        path: "/api/v1/quotations",
        body: quotation_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_quotations_delete(quotation_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/quotations/{quotation_id}".sub("{quotation_id}", OpenAPIClient.enc(quotation_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_quotations_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::Quotation))
      @conn.request(Array(OpenAPIClient::Quotation),
        method: :GET,
        path: "/api/v1/quotations/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_quotations_get_1(quotation_id : String) : Response(OpenAPIClient::Quotation)
      @conn.request(OpenAPIClient::Quotation,
        method: :GET,
        path: "/api/v1/quotations/{quotation_id}".sub("{quotation_id}", OpenAPIClient.enc(quotation_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_quotations_pdf(quotation_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/quotations/{quotation_id}/pdf".sub("{quotation_id}", OpenAPIClient.enc(quotation_id)),
        accept: %w[application/pdf application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_quotations_pursue(quotation_id : String) : Response(OpenAPIClient::OrderConfirmation)
      @conn.request(OpenAPIClient::OrderConfirmation,
        method: :POST,
        path: "/api/v1/quotations/{quotation_id}/pursue".sub("{quotation_id}", OpenAPIClient.enc(quotation_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_quotations_put(quotation_id : String, body : JSON::Any) : Response(OpenAPIClient::Quotation)
      @conn.request(OpenAPIClient::Quotation,
        method: :PUT,
        path: "/api/v1/quotations/{quotation_id}".sub("{quotation_id}", OpenAPIClient.enc(quotation_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_quotations_restore(quotation_id : String) : Response(OpenAPIClient::Quotation)
      @conn.request(OpenAPIClient::Quotation,
        method: :POST,
        path: "/api/v1/quotations/{quotation_id}/restore".sub("{quotation_id}", OpenAPIClient.enc(quotation_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_recurring_templates(body : JSON::Any) : Response(OpenAPIClient::RecurringTemplate)
      @conn.request(OpenAPIClient::RecurringTemplate,
        method: :POST,
        path: "/api/v1/recurring-templates",
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_recurring_templates_delete(template_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/recurring-templates/{template_id}".sub("{template_id}", OpenAPIClient.enc(template_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_recurring_templates_get() : Response(Array(OpenAPIClient::RecurringTemplate))
      @conn.request(Array(OpenAPIClient::RecurringTemplate),
        method: :GET,
        path: "/api/v1/recurring-templates/",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_recurring_templates_get_1(template_id : String) : Response(OpenAPIClient::RecurringTemplate)
      @conn.request(OpenAPIClient::RecurringTemplate,
        method: :GET,
        path: "/api/v1/recurring-templates/{template_id}".sub("{template_id}", OpenAPIClient.enc(template_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_reorder_proposals(*, configured_only : Bool? = nil, warehouse_id : String? = nil) : Response(OpenAPIClient::ReorderProposalResponse)
      @conn.request(OpenAPIClient::ReorderProposalResponse,
        method: :GET,
        path: "/api/v1/reorder-proposals",
        query: { "configuredOnly" => configured_only, "warehouseId" => warehouse_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Convert a reorder proposal into a draft purchase order. Returns the created purchase order id. Suggested line items are generated with the current reorder quantity per product.
    def v1_reorder_proposals_apply(*, configured_only : Bool? = nil, warehouse_id : String? = nil) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/v1/reorder-proposals/apply",
        query: { "configuredOnly" => configured_only, "warehouseId" => warehouse_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_replenishments(*, target_warehouse_id : String? = nil, source_warehouse_id : String? = nil) : Response(OpenAPIClient::ReplenishmentResponse)
      @conn.request(OpenAPIClient::ReplenishmentResponse,
        method: :GET,
        path: "/api/v1/replenishments",
        query: { "targetWarehouseId" => target_warehouse_id, "sourceWarehouseId" => source_warehouse_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Create one draft stock transfer per (source → target) pair carrying all suggested product lines for that pair.
    def v1_replenishments_apply(*, target_warehouse_id : String? = nil, source_warehouse_id : String? = nil) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/v1/replenishments/apply",
        query: { "targetWarehouseId" => target_warehouse_id, "sourceWarehouseId" => source_warehouse_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_returns(return_order : OpenAPIClient::ReturnOrder) : Response(OpenAPIClient::ReturnOrder)
      @conn.request(OpenAPIClient::ReturnOrder,
        method: :POST,
        path: "/api/v1/returns",
        body: return_order,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_returns_delete(return_order_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/returns/{return_order_id}".sub("{return_order_id}", OpenAPIClient.enc(return_order_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_returns_get(*, page : Int32? = nil, page_size : Int32? = nil, status : String? = nil, customer_name : String? = nil, order_number : String? = nil) : Response(Array(OpenAPIClient::ReturnOrder))
      @conn.request(Array(OpenAPIClient::ReturnOrder),
        method: :GET,
        path: "/api/v1/returns/",
        query: { "page" => page, "page_size" => page_size, "status" => status, "customer_name" => customer_name, "order_number" => order_number },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_returns_get_1(return_order_id : String) : Response(OpenAPIClient::ReturnOrder)
      @conn.request(OpenAPIClient::ReturnOrder,
        method: :GET,
        path: "/api/v1/returns/{return_order_id}".sub("{return_order_id}", OpenAPIClient.enc(return_order_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_returns_logistics_queue() : Response(Array(OpenAPIClient::ReturnLogisticsQueueItem))
      @conn.request(Array(OpenAPIClient::ReturnLogisticsQueueItem),
        method: :GET,
        path: "/api/v1/returns/logistics-queue",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Returns-logistics aggregation for the dashboard: quantities received, restocked and scrapped per warehouse.
    def v1_returns_logistics_summary() : Response(OpenAPIClient::ReturnLogisticsSummary)
      @conn.request(OpenAPIClient::ReturnLogisticsSummary,
        method: :GET,
        path: "/api/v1/returns/logistics-summary",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_returns_put(return_order_id : String, body : JSON::Any) : Response(OpenAPIClient::ReturnOrder)
      @conn.request(OpenAPIClient::ReturnOrder,
        method: :PUT,
        path: "/api/v1/returns/{return_order_id}".sub("{return_order_id}", OpenAPIClient.enc(return_order_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_returns_status(return_order_id : String, return_order_status_update : OpenAPIClient::ReturnOrderStatusUpdate) : Response(OpenAPIClient::ReturnOrder)
      @conn.request(OpenAPIClient::ReturnOrder,
        method: :PUT,
        path: "/api/v1/returns/{return_order_id}/status".sub("{return_order_id}", OpenAPIClient.enc(return_order_id)),
        body: return_order_status_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_rfqs(rfq : OpenAPIClient::Rfq) : Response(OpenAPIClient::Rfq)
      @conn.request(OpenAPIClient::Rfq,
        method: :POST,
        path: "/api/v1/rfqs",
        body: rfq,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Convert an RFQ into a draft purchase order using the quoted unit prices (falling back to the requested prices, then leaving them blank). Marks the RFQ as &#x60;converted&#x60;.
    def v1_rfqs_convert(rfq_id : String) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/v1/rfqs/{rfq_id}/convert".sub("{rfq_id}", OpenAPIClient.enc(rfq_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_rfqs_delete(rfq_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/rfqs/{rfq_id}".sub("{rfq_id}", OpenAPIClient.enc(rfq_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_rfqs_get(*, page : Int32? = nil, page_size : Int32? = nil, status : String? = nil, supplier_name : String? = nil) : Response(Array(OpenAPIClient::Rfq))
      @conn.request(Array(OpenAPIClient::Rfq),
        method: :GET,
        path: "/api/v1/rfqs/",
        query: { "page" => page, "page_size" => page_size, "status" => status, "supplier_name" => supplier_name },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_rfqs_get_1(rfq_id : String) : Response(OpenAPIClient::Rfq)
      @conn.request(OpenAPIClient::Rfq,
        method: :GET,
        path: "/api/v1/rfqs/{rfq_id}".sub("{rfq_id}", OpenAPIClient.enc(rfq_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_rfqs_put(rfq_id : String, body : JSON::Any) : Response(OpenAPIClient::Rfq)
      @conn.request(OpenAPIClient::Rfq,
        method: :PUT,
        path: "/api/v1/rfqs/{rfq_id}".sub("{rfq_id}", OpenAPIClient.enc(rfq_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_rfqs_status(rfq_id : String, rfq_status_update : OpenAPIClient::RfqStatusUpdate) : Response(OpenAPIClient::Rfq)
      @conn.request(OpenAPIClient::Rfq,
        method: :PUT,
        path: "/api/v1/rfqs/{rfq_id}/status".sub("{rfq_id}", OpenAPIClient.enc(rfq_id)),
        body: rfq_status_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # GET /api/v1/search?q&#x3D;...
    def v1_search(*, q : String? = nil) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :GET,
        path: "/api/v1/search",
        query: { "q" => q },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_service_assignments(service_assignment_create : OpenAPIClient::ServiceAssignmentCreate) : Response(OpenAPIClient::ServiceAssignment)
      @conn.request(OpenAPIClient::ServiceAssignment,
        method: :POST,
        path: "/api/v1/service-assignments",
        body: service_assignment_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_service_assignments_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/service-assignments/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_service_assignments_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::ServiceAssignment))
      @conn.request(Array(OpenAPIClient::ServiceAssignment),
        method: :GET,
        path: "/api/v1/service-assignments/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_service_assignments_get_1(id : String) : Response(OpenAPIClient::ServiceAssignment)
      @conn.request(OpenAPIClient::ServiceAssignment,
        method: :GET,
        path: "/api/v1/service-assignments/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_service_assignments_put(id : String, service_assignment_update : OpenAPIClient::ServiceAssignmentUpdate) : Response(OpenAPIClient::ServiceAssignment)
      @conn.request(OpenAPIClient::ServiceAssignment,
        method: :PUT,
        path: "/api/v1/service-assignments/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: service_assignment_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_service_jobs(service_job_create : OpenAPIClient::ServiceJobCreate) : Response(OpenAPIClient::ServiceJob)
      @conn.request(OpenAPIClient::ServiceJob,
        method: :POST,
        path: "/api/v1/service-jobs",
        body: service_job_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_service_jobs_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/service-jobs/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_service_jobs_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::ServiceJob))
      @conn.request(Array(OpenAPIClient::ServiceJob),
        method: :GET,
        path: "/api/v1/service-jobs/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_service_jobs_get_1(id : String) : Response(OpenAPIClient::ServiceJob)
      @conn.request(OpenAPIClient::ServiceJob,
        method: :GET,
        path: "/api/v1/service-jobs/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_service_jobs_put(id : String, service_job_update : OpenAPIClient::ServiceJobUpdate) : Response(OpenAPIClient::ServiceJob)
      @conn.request(OpenAPIClient::ServiceJob,
        method: :PUT,
        path: "/api/v1/service-jobs/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: service_job_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_settings_smtp() : Response(OpenAPIClient::SmtpConfig)
      @conn.request(OpenAPIClient::SmtpConfig,
        method: :GET,
        path: "/api/v1/settings/smtp",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_settings_smtp_put(smtp_config : OpenAPIClient::SmtpConfig? = nil) : Response(OpenAPIClient::SmtpConfig)
      @conn.request(OpenAPIClient::SmtpConfig,
        method: :PUT,
        path: "/api/v1/settings/smtp",
        body: smtp_config,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_settings_tenant() : Response(OpenAPIClient::TenantSettings)
      @conn.request(OpenAPIClient::TenantSettings,
        method: :GET,
        path: "/api/v1/settings/tenant",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_settings_tenant_put(update_tenant_settings : OpenAPIClient::UpdateTenantSettings) : Response(OpenAPIClient::TenantSettings)
      @conn.request(OpenAPIClient::TenantSettings,
        method: :PUT,
        path: "/api/v1/settings/tenant",
        body: update_tenant_settings,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shareholders(shareholder_create : OpenAPIClient::ShareholderCreate) : Response(OpenAPIClient::Shareholder)
      @conn.request(OpenAPIClient::Shareholder,
        method: :POST,
        path: "/api/v1/shareholders",
        body: shareholder_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shareholders_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/shareholders/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shareholders_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::Shareholder))
      @conn.request(Array(OpenAPIClient::Shareholder),
        method: :GET,
        path: "/api/v1/shareholders/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shareholders_get_1(id : String) : Response(OpenAPIClient::Shareholder)
      @conn.request(OpenAPIClient::Shareholder,
        method: :GET,
        path: "/api/v1/shareholders/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shareholders_put(id : String, shareholder_update : OpenAPIClient::ShareholderUpdate) : Response(OpenAPIClient::Shareholder)
      @conn.request(OpenAPIClient::Shareholder,
        method: :PUT,
        path: "/api/v1/shareholders/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: shareholder_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipments(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::Shipment))
      @conn.request(Array(OpenAPIClient::Shipment),
        method: :GET,
        path: "/api/v1/shipments",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipments_delete(shipment_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/shipments/{shipment_id}".sub("{shipment_id}", OpenAPIClient.enc(shipment_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipments_get(shipment_id : String) : Response(OpenAPIClient::Shipment)
      @conn.request(OpenAPIClient::Shipment,
        method: :GET,
        path: "/api/v1/shipments/{shipment_id}".sub("{shipment_id}", OpenAPIClient.enc(shipment_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipments_post(shipment : OpenAPIClient::Shipment) : Response(OpenAPIClient::Shipment)
      @conn.request(OpenAPIClient::Shipment,
        method: :POST,
        path: "/api/v1/shipments",
        body: shipment,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipments_status(shipment_id : String, shipment_status_update : OpenAPIClient::ShipmentStatusUpdate) : Response(OpenAPIClient::Shipment)
      @conn.request(OpenAPIClient::Shipment,
        method: :PUT,
        path: "/api/v1/shipments/{shipment_id}/status".sub("{shipment_id}", OpenAPIClient.enc(shipment_id)),
        body: shipment_status_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipments_tracking(shipment_id : String) : Response(OpenAPIClient::TrackingInfo)
      @conn.request(OpenAPIClient::TrackingInfo,
        method: :GET,
        path: "/api/v1/shipments/{shipment_id}/tracking".sub("{shipment_id}", OpenAPIClient.enc(shipment_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_credentials() : Response(OpenAPIClient::ShippingCredentials)
      @conn.request(OpenAPIClient::ShippingCredentials,
        method: :GET,
        path: "/api/v1/shipping/credentials",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_credentials_put(shipping_credentials : OpenAPIClient::ShippingCredentials) : Response(OpenAPIClient::ShippingCredentials)
      @conn.request(OpenAPIClient::ShippingCredentials,
        method: :PUT,
        path: "/api/v1/shipping/credentials",
        body: shipping_credentials,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_providers() : Response(Array(OpenAPIClient::ProviderInfo))
      @conn.request(Array(OpenAPIClient::ProviderInfo),
        method: :GET,
        path: "/api/v1/shipping/providers",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_rates(rate_request : OpenAPIClient::RateRequest) : Response(OpenAPIClient::RateResponse)
      @conn.request(OpenAPIClient::RateResponse,
        method: :POST,
        path: "/api/v1/shipping/rates",
        body: rate_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_rules(shipping_rule_create : OpenAPIClient::ShippingRuleCreate) : Response(OpenAPIClient::ShippingRule)
      @conn.request(OpenAPIClient::ShippingRule,
        method: :POST,
        path: "/api/v1/shipping-rules",
        body: shipping_rule_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_rules_delete(rule_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/shipping-rules/{rule_id}".sub("{rule_id}", OpenAPIClient.enc(rule_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_rules_get(*, page : Int32? = nil, page_size : Int32? = nil, country : String? = nil) : Response(Array(OpenAPIClient::ShippingRule))
      @conn.request(Array(OpenAPIClient::ShippingRule),
        method: :GET,
        path: "/api/v1/shipping-rules/",
        query: { "page" => page, "page_size" => page_size, "country" => country },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_rules_get_1(rule_id : String) : Response(OpenAPIClient::ShippingRule)
      @conn.request(OpenAPIClient::ShippingRule,
        method: :GET,
        path: "/api/v1/shipping-rules/{rule_id}".sub("{rule_id}", OpenAPIClient.enc(rule_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_rules_put(rule_id : String, shipping_rule_update : OpenAPIClient::ShippingRuleUpdate) : Response(OpenAPIClient::ShippingRule)
      @conn.request(OpenAPIClient::ShippingRule,
        method: :PUT,
        path: "/api/v1/shipping-rules/{rule_id}".sub("{rule_id}", OpenAPIClient.enc(rule_id)),
        body: shipping_rule_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_suitability(suitability_request : OpenAPIClient::SuitabilityRequest) : Response(OpenAPIClient::SuitabilityResult)
      @conn.request(OpenAPIClient::SuitabilityResult,
        method: :POST,
        path: "/api/v1/shipping/suitability",
        body: suitability_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_thresholds(shipping_threshold_create : OpenAPIClient::ShippingThresholdCreate) : Response(OpenAPIClient::ShippingThreshold)
      @conn.request(OpenAPIClient::ShippingThreshold,
        method: :POST,
        path: "/api/v1/shipping-thresholds",
        body: shipping_threshold_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_thresholds_delete(threshold_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/shipping-thresholds/{threshold_id}".sub("{threshold_id}", OpenAPIClient.enc(threshold_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_thresholds_deliverable(*, product_id : String? = nil, warehouse_id : String? = nil) : Response(OpenAPIClient::DeliverableResponse)
      @conn.request(OpenAPIClient::DeliverableResponse,
        method: :GET,
        path: "/api/v1/shipping-thresholds/deliverable",
        query: { "productId" => product_id, "warehouseId" => warehouse_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_thresholds_get(*, page : Int32? = nil, page_size : Int32? = nil, product_id : String? = nil, warehouse_id : String? = nil, is_active : Bool? = nil) : Response(Array(OpenAPIClient::ShippingThreshold))
      @conn.request(Array(OpenAPIClient::ShippingThreshold),
        method: :GET,
        path: "/api/v1/shipping-thresholds/",
        query: { "page" => page, "page_size" => page_size, "product_id" => product_id, "warehouse_id" => warehouse_id, "is_active" => is_active },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_thresholds_get_1(threshold_id : String) : Response(OpenAPIClient::ShippingThreshold)
      @conn.request(OpenAPIClient::ShippingThreshold,
        method: :GET,
        path: "/api/v1/shipping-thresholds/{threshold_id}".sub("{threshold_id}", OpenAPIClient.enc(threshold_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shipping_thresholds_put(threshold_id : String, shipping_threshold_update : OpenAPIClient::ShippingThresholdUpdate) : Response(OpenAPIClient::ShippingThreshold)
      @conn.request(OpenAPIClient::ShippingThreshold,
        method: :PUT,
        path: "/api/v1/shipping-thresholds/{threshold_id}".sub("{threshold_id}", OpenAPIClient.enc(threshold_id)),
        body: shipping_threshold_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_shop_editor(body : JSON::Any) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :POST,
        path: "/api/v1/shop/editor",
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_silent_partners(silent_partner_create : OpenAPIClient::SilentPartnerCreate) : Response(OpenAPIClient::SilentPartner)
      @conn.request(OpenAPIClient::SilentPartner,
        method: :POST,
        path: "/api/v1/silent-partners",
        body: silent_partner_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_silent_partners_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/silent-partners/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_silent_partners_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::SilentPartner))
      @conn.request(Array(OpenAPIClient::SilentPartner),
        method: :GET,
        path: "/api/v1/silent-partners/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_silent_partners_get_1(id : String) : Response(OpenAPIClient::SilentPartner)
      @conn.request(OpenAPIClient::SilentPartner,
        method: :GET,
        path: "/api/v1/silent-partners/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_silent_partners_put(id : String, silent_partner_update : OpenAPIClient::SilentPartnerUpdate) : Response(OpenAPIClient::SilentPartner)
      @conn.request(OpenAPIClient::SilentPartner,
        method: :PUT,
        path: "/api/v1/silent-partners/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: silent_partner_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_stock_movements(*, page : Int32? = nil, page_size : Int32? = nil, product_id : String? = nil, warehouse_id : String? = nil, movement_type : String? = nil, from : Time? = nil, to : Time? = nil) : Response(Array(OpenAPIClient::StockMovement))
      @conn.request(Array(OpenAPIClient::StockMovement),
        method: :GET,
        path: "/api/v1/stock-movements/",
        query: { "page" => page, "pageSize" => page_size, "productId" => product_id, "warehouseId" => warehouse_id, "movementType" => movement_type, "from" => from, "to" => to },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_stock_movements_get(movement_id : String) : Response(OpenAPIClient::StockMovement)
      @conn.request(OpenAPIClient::StockMovement,
        method: :GET,
        path: "/api/v1/stock-movements/{movement_id}".sub("{movement_id}", OpenAPIClient.enc(movement_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_stock_transfers(stock_transfer : OpenAPIClient::StockTransfer) : Response(OpenAPIClient::StockTransfer)
      @conn.request(OpenAPIClient::StockTransfer,
        method: :POST,
        path: "/api/v1/stock-transfers",
        body: stock_transfer,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_stock_transfers_delete(stock_transfer_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/stock-transfers/{stock_transfer_id}".sub("{stock_transfer_id}", OpenAPIClient.enc(stock_transfer_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_stock_transfers_get(*, page : Int32? = nil, page_size : Int32? = nil, status : String? = nil, warehouse_id : String? = nil) : Response(Array(OpenAPIClient::StockTransfer))
      @conn.request(Array(OpenAPIClient::StockTransfer),
        method: :GET,
        path: "/api/v1/stock-transfers/",
        query: { "page" => page, "page_size" => page_size, "status" => status, "warehouse_id" => warehouse_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_stock_transfers_get_1(stock_transfer_id : String) : Response(OpenAPIClient::StockTransfer)
      @conn.request(OpenAPIClient::StockTransfer,
        method: :GET,
        path: "/api/v1/stock-transfers/{stock_transfer_id}".sub("{stock_transfer_id}", OpenAPIClient.enc(stock_transfer_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_stock_transfers_status(stock_transfer_id : String, stock_transfer_status_update : OpenAPIClient::StockTransferStatusUpdate) : Response(OpenAPIClient::StockTransfer)
      @conn.request(OpenAPIClient::StockTransfer,
        method: :PUT,
        path: "/api/v1/stock-transfers/{stock_transfer_id}/status".sub("{stock_transfer_id}", OpenAPIClient.enc(stock_transfer_id)),
        body: stock_transfer_status_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_subscription() : Response(OpenAPIClient::ApiResponseSubscriptionOverview)
      @conn.request(OpenAPIClient::ApiResponseSubscriptionOverview,
        method: :GET,
        path: "/api/v1/subscription",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_supplier_conditions(supplier_condition_create : OpenAPIClient::SupplierConditionCreate) : Response(OpenAPIClient::SupplierCondition)
      @conn.request(OpenAPIClient::SupplierCondition,
        method: :POST,
        path: "/api/v1/supplier-conditions",
        body: supplier_condition_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_supplier_conditions_delete(supplier_condition_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/supplier-conditions/{supplier_condition_id}".sub("{supplier_condition_id}", OpenAPIClient.enc(supplier_condition_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_supplier_conditions_get(*, page : Int32? = nil, page_size : Int32? = nil, supplier_contact_id : String? = nil, search : String? = nil) : Response(Array(OpenAPIClient::SupplierCondition))
      @conn.request(Array(OpenAPIClient::SupplierCondition),
        method: :GET,
        path: "/api/v1/supplier-conditions/",
        query: { "page" => page, "page_size" => page_size, "supplier_contact_id" => supplier_contact_id, "search" => search },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_supplier_conditions_get_1(supplier_condition_id : String) : Response(OpenAPIClient::SupplierCondition)
      @conn.request(OpenAPIClient::SupplierCondition,
        method: :GET,
        path: "/api/v1/supplier-conditions/{supplier_condition_id}".sub("{supplier_condition_id}", OpenAPIClient.enc(supplier_condition_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_supplier_conditions_put(supplier_condition_id : String, supplier_condition_update : OpenAPIClient::SupplierConditionUpdate) : Response(OpenAPIClient::SupplierCondition)
      @conn.request(OpenAPIClient::SupplierCondition,
        method: :PUT,
        path: "/api/v1/supplier-conditions/{supplier_condition_id}".sub("{supplier_condition_id}", OpenAPIClient.enc(supplier_condition_id)),
        body: supplier_condition_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_supplier_invoices(supplier_invoice : OpenAPIClient::SupplierInvoice) : Response(OpenAPIClient::SupplierInvoice)
      @conn.request(OpenAPIClient::SupplierInvoice,
        method: :POST,
        path: "/api/v1/supplier-invoices",
        body: supplier_invoice,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_supplier_invoices_delete(supplier_invoice_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/supplier-invoices/{supplier_invoice_id}".sub("{supplier_invoice_id}", OpenAPIClient.enc(supplier_invoice_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_supplier_invoices_get(*, page : Int32? = nil, page_size : Int32? = nil, status : String? = nil, purchase_order_id : String? = nil, supplier_name : String? = nil) : Response(Array(OpenAPIClient::SupplierInvoice))
      @conn.request(Array(OpenAPIClient::SupplierInvoice),
        method: :GET,
        path: "/api/v1/supplier-invoices/",
        query: { "page" => page, "page_size" => page_size, "status" => status, "purchase_order_id" => purchase_order_id, "supplier_name" => supplier_name },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_supplier_invoices_get_1(supplier_invoice_id : String) : Response(OpenAPIClient::SupplierInvoice)
      @conn.request(OpenAPIClient::SupplierInvoice,
        method: :GET,
        path: "/api/v1/supplier-invoices/{supplier_invoice_id}".sub("{supplier_invoice_id}", OpenAPIClient.enc(supplier_invoice_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_supplier_invoices_put(supplier_invoice_id : String, body : JSON::Any) : Response(OpenAPIClient::SupplierInvoice)
      @conn.request(OpenAPIClient::SupplierInvoice,
        method: :PUT,
        path: "/api/v1/supplier-invoices/{supplier_invoice_id}".sub("{supplier_invoice_id}", OpenAPIClient.enc(supplier_invoice_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_supplier_invoices_status(supplier_invoice_id : String, supplier_invoice_status_update : OpenAPIClient::SupplierInvoiceStatusUpdate) : Response(OpenAPIClient::SupplierInvoice)
      @conn.request(OpenAPIClient::SupplierInvoice,
        method: :PUT,
        path: "/api/v1/supplier-invoices/{supplier_invoice_id}/status".sub("{supplier_invoice_id}", OpenAPIClient.enc(supplier_invoice_id)),
        body: supplier_invoice_status_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_ai_suggest(ai_suggestion_request : OpenAPIClient::AiSuggestionRequest) : Response(OpenAPIClient::AiSuggestion)
      @conn.request(OpenAPIClient::AiSuggestion,
        method: :POST,
        path: "/api/v1/support/ai/suggest",
        body: ai_suggestion_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_ai_workers() : Response(Array(OpenAPIClient::AiWorkerConfig))
      @conn.request(Array(OpenAPIClient::AiWorkerConfig),
        method: :GET,
        path: "/api/v1/support/ai/workers",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_ai_workers_post(ai_config_dto : OpenAPIClient::AiConfigDto) : Response(OpenAPIClient::AiWorkerConfig)
      @conn.request(OpenAPIClient::AiWorkerConfig,
        method: :POST,
        path: "/api/v1/support/ai/workers",
        body: ai_config_dto,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_ai_workers_run(worker_id : String, ai_suggestion_request : OpenAPIClient::AiSuggestionRequest) : Response(OpenAPIClient::AiSuggestion)
      @conn.request(OpenAPIClient::AiSuggestion,
        method: :POST,
        path: "/api/v1/support/ai/workers/{worker_id}/run".sub("{worker_id}", OpenAPIClient.enc(worker_id)),
        body: ai_suggestion_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_channels() : Response(Array(OpenAPIClient::SupportChannel))
      @conn.request(Array(OpenAPIClient::SupportChannel),
        method: :GET,
        path: "/api/v1/support/channels",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_channels_delete(channel_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/support/channels/{channel_id}".sub("{channel_id}", OpenAPIClient.enc(channel_id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_channels_post(create_channel_dto : OpenAPIClient::CreateChannelDto) : Response(OpenAPIClient::SupportChannel)
      @conn.request(OpenAPIClient::SupportChannel,
        method: :POST,
        path: "/api/v1/support/channels",
        body: create_channel_dto,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_channels_put(channel_id : String, update_channel_dto : OpenAPIClient::UpdateChannelDto) : Response(OpenAPIClient::SupportChannel)
      @conn.request(OpenAPIClient::SupportChannel,
        method: :PUT,
        path: "/api/v1/support/channels/{channel_id}".sub("{channel_id}", OpenAPIClient.enc(channel_id)),
        body: update_channel_dto,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_leads(*, status : String? = nil, source : String? = nil, search : String? = nil, page : Int32? = nil, page_size : Int32? = nil) : Response(Array(OpenAPIClient::Lead))
      @conn.request(Array(OpenAPIClient::Lead),
        method: :GET,
        path: "/api/v1/support/leads",
        query: { "status" => status, "source" => source, "search" => search, "page" => page, "page_size" => page_size },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_leads_put(lead_id : String, lead_update : OpenAPIClient::LeadUpdate) : Response(OpenAPIClient::Lead)
      @conn.request(OpenAPIClient::Lead,
        method: :PUT,
        path: "/api/v1/support/leads/{lead_id}".sub("{lead_id}", OpenAPIClient.enc(lead_id)),
        body: lead_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_tickets(*, status : String? = nil, priority : String? = nil, assigned_to : String? = nil, channel_type : String? = nil, customer_id : String? = nil, search : String? = nil, page : Int32? = nil, page_size : Int32? = nil) : Response(Array(OpenAPIClient::SupportTicket))
      @conn.request(Array(OpenAPIClient::SupportTicket),
        method: :GET,
        path: "/api/v1/support/tickets",
        query: { "status" => status, "priority" => priority, "assigned_to" => assigned_to, "channel_type" => channel_type, "customer_id" => customer_id, "search" => search, "page" => page, "page_size" => page_size },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_tickets_delete(ticket_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/support/tickets/{ticket_id}".sub("{ticket_id}", OpenAPIClient.enc(ticket_id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_tickets_get(ticket_id : String) : Response(OpenAPIClient::SupportTicket)
      @conn.request(OpenAPIClient::SupportTicket,
        method: :GET,
        path: "/api/v1/support/tickets/{ticket_id}".sub("{ticket_id}", OpenAPIClient.enc(ticket_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_tickets_messages(ticket_id : String) : Response(Array(OpenAPIClient::TicketMessage))
      @conn.request(Array(OpenAPIClient::TicketMessage),
        method: :GET,
        path: "/api/v1/support/tickets/{ticket_id}/messages".sub("{ticket_id}", OpenAPIClient.enc(ticket_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_tickets_messages_post(ticket_id : String, send_message_dto : OpenAPIClient::SendMessageDto) : Response(OpenAPIClient::TicketMessage)
      @conn.request(OpenAPIClient::TicketMessage,
        method: :POST,
        path: "/api/v1/support/tickets/{ticket_id}/messages".sub("{ticket_id}", OpenAPIClient.enc(ticket_id)),
        body: send_message_dto,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_tickets_post(create_ticket_request : OpenAPIClient::CreateTicketRequest) : Response(OpenAPIClient::SupportTicket)
      @conn.request(OpenAPIClient::SupportTicket,
        method: :POST,
        path: "/api/v1/support/tickets",
        body: create_ticket_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_support_tickets_put(ticket_id : String, support_ticket_update : OpenAPIClient::SupportTicketUpdate) : Response(OpenAPIClient::SupportTicket)
      @conn.request(OpenAPIClient::SupportTicket,
        method: :PUT,
        path: "/api/v1/support/tickets/{ticket_id}".sub("{ticket_id}", OpenAPIClient.enc(ticket_id)),
        body: support_ticket_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # List the calling tenant&#39;s tax rates.
    def v1_tax_rates() : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/tax-rates",
        accept: %w[],
        auth: %w[bearer_token])
    end

    # Delete a tax rate by id (&#x60;admin:settings&#x60;).
    def v1_tax_rates_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/tax-rates/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # Create a tax rate (&#x60;admin:settings&#x60;).
    def v1_tax_rates_post(tax_rate_create : OpenAPIClient::TaxRateCreate) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/api/v1/tax-rates",
        body: tax_rate_create,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Update a tax rate by id (&#x60;admin:settings&#x60;). Replaces all body fields.
    def v1_tax_rates_put(id : String, tax_rate_create : OpenAPIClient::TaxRateCreate) : Response(Nil)
      @conn.request(Nil,
        method: :PUT,
        path: "/api/v1/tax-rates/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: tax_rate_create,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # List time entries with optional date-range / active / employee filters.
    def v1_time_entries(*, from : Time? = nil, to : Time? = nil, active : Bool? = nil, employee_id : String? = nil) : Response(Array(OpenAPIClient::TimeEntryDto))
      @conn.request(Array(OpenAPIClient::TimeEntryDto),
        method: :GET,
        path: "/api/v1/time-entries",
        query: { "from" => from, "to" => to, "active" => active, "employee_id" => employee_id },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Clock out an entry: the entry&#39;s owner, or anyone with &#x60;time_entries:write&#x60;.
    def v1_time_entries_patch(id : String, time_entry_clock_out : OpenAPIClient::TimeEntryClockOut) : Response(OpenAPIClient::TimeEntryDto)
      @conn.request(OpenAPIClient::TimeEntryDto,
        method: :PATCH,
        path: "/api/v1/time-entries/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: time_entry_clock_out,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Clock in for the authenticated user (resolved via their employee profile).
    def v1_time_entries_post(time_entry_clock_in : OpenAPIClient::TimeEntryClockIn) : Response(OpenAPIClient::TimeEntryDto)
      @conn.request(OpenAPIClient::TimeEntryDto,
        method: :POST,
        path: "/api/v1/time-entries",
        body: time_entry_clock_in,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_training_assignments(training_assignment_create : OpenAPIClient::TrainingAssignmentCreate) : Response(OpenAPIClient::TrainingAssignment)
      @conn.request(OpenAPIClient::TrainingAssignment,
        method: :POST,
        path: "/api/v1/training-assignments",
        body: training_assignment_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_training_assignments_delete(id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/training-assignments/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_training_assignments_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, include_deleted : Bool? = nil) : Response(Array(OpenAPIClient::TrainingAssignment))
      @conn.request(Array(OpenAPIClient::TrainingAssignment),
        method: :GET,
        path: "/api/v1/training-assignments/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "include_deleted" => include_deleted },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_training_assignments_get_1(id : String) : Response(OpenAPIClient::TrainingAssignment)
      @conn.request(OpenAPIClient::TrainingAssignment,
        method: :GET,
        path: "/api/v1/training-assignments/{id}".sub("{id}", OpenAPIClient.enc(id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_training_assignments_put(id : String, training_assignment_update : OpenAPIClient::TrainingAssignmentUpdate) : Response(OpenAPIClient::TrainingAssignment)
      @conn.request(OpenAPIClient::TrainingAssignment,
        method: :PUT,
        path: "/api/v1/training-assignments/{id}".sub("{id}", OpenAPIClient.enc(id)),
        body: training_assignment_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_trainings_content(code : String) : Response(OpenAPIClient::TrainingContent)
      @conn.request(OpenAPIClient::TrainingContent,
        method: :GET,
        path: "/api/v1/trainings/content/{code}".sub("{code}", OpenAPIClient.enc(code)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_trainings_me() : Response(Array(OpenAPIClient::MyTrainingItem))
      @conn.request(Array(OpenAPIClient::MyTrainingItem),
        method: :GET,
        path: "/api/v1/trainings/me",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_trainings_overview() : Response(Array(OpenAPIClient::HrTrainingOverview))
      @conn.request(Array(OpenAPIClient::HrTrainingOverview),
        method: :GET,
        path: "/api/v1/trainings/overview",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_trainings_submit_result(submit_result_dto : OpenAPIClient::SubmitResultDto) : Response(OpenAPIClient::SubmitResultResponse)
      @conn.request(OpenAPIClient::SubmitResultResponse,
        method: :POST,
        path: "/api/v1/trainings/submit-result",
        body: submit_result_dto,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_usage(*, meter : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/api/v1/usage",
        query: { "meter" => meter },
        accept: %w[],
        auth: %w[bearer_token])
    end

    # 
    def v1_users() : Response(Array(OpenAPIClient::TenantUser))
      @conn.request(Array(OpenAPIClient::TenantUser),
        method: :GET,
        path: "/api/v1/users",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_users_delete(user_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/users/{user_id}".sub("{user_id}", OpenAPIClient.enc(user_id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # 
    def v1_users_get(user_id : String) : Response(OpenAPIClient::TenantUser)
      @conn.request(OpenAPIClient::TenantUser,
        method: :GET,
        path: "/api/v1/users/{user_id}".sub("{user_id}", OpenAPIClient.enc(user_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_users_permissions(user_id : String, update_permissions_payload : OpenAPIClient::UpdatePermissionsPayload) : Response(Nil)
      @conn.request(Nil,
        method: :PUT,
        path: "/api/v1/users/{user_id}/permissions".sub("{user_id}", OpenAPIClient.enc(user_id)),
        body: update_permissions_payload,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_users_role(user_id : String, update_role_payload : OpenAPIClient::UpdateRolePayload) : Response(Nil)
      @conn.request(Nil,
        method: :PUT,
        path: "/api/v1/users/{user_id}/role".sub("{user_id}", OpenAPIClient.enc(user_id)),
        body: update_role_payload,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_vouchers(voucher_create : OpenAPIClient::VoucherCreate) : Response(OpenAPIClient::Voucher)
      @conn.request(OpenAPIClient::Voucher,
        method: :POST,
        path: "/api/v1/vouchers",
        body: voucher_create,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_vouchers_delete(voucher_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/vouchers/{voucher_id}".sub("{voucher_id}", OpenAPIClient.enc(voucher_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_vouchers_get(*, page : Int32? = nil, page_size : Int32? = nil, voucher_type : String? = nil, voucher_status : String? = nil, contact_name : String? = nil, date_from : Time? = nil, date_to : Time? = nil) : Response(Array(OpenAPIClient::Voucher))
      @conn.request(Array(OpenAPIClient::Voucher),
        method: :GET,
        path: "/api/v1/vouchers/",
        query: { "page" => page, "page_size" => page_size, "voucher_type" => voucher_type, "voucher_status" => voucher_status, "contact_name" => contact_name, "date_from" => date_from, "date_to" => date_to },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_vouchers_get_1(voucher_id : String) : Response(OpenAPIClient::Voucher)
      @conn.request(OpenAPIClient::Voucher,
        method: :GET,
        path: "/api/v1/vouchers/{voucher_id}".sub("{voucher_id}", OpenAPIClient.enc(voucher_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_vouchers_put(voucher_id : String, body : JSON::Any) : Response(OpenAPIClient::Voucher)
      @conn.request(OpenAPIClient::Voucher,
        method: :PUT,
        path: "/api/v1/vouchers/{voucher_id}".sub("{voucher_id}", OpenAPIClient.enc(voucher_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_vouchers_restore(voucher_id : String) : Response(OpenAPIClient::Voucher)
      @conn.request(OpenAPIClient::Voucher,
        method: :POST,
        path: "/api/v1/vouchers/{voucher_id}/restore".sub("{voucher_id}", OpenAPIClient.enc(voucher_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_warehouses(warehouse : OpenAPIClient::Warehouse) : Response(OpenAPIClient::Warehouse)
      @conn.request(OpenAPIClient::Warehouse,
        method: :POST,
        path: "/api/v1/warehouses",
        body: warehouse,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_warehouses_delete(warehouse_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/warehouses/{warehouse_id}".sub("{warehouse_id}", OpenAPIClient.enc(warehouse_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_warehouses_get(*, page : Int32? = nil, page_size : Int32? = nil, search : String? = nil, is_active : Bool? = nil) : Response(Array(OpenAPIClient::Warehouse))
      @conn.request(Array(OpenAPIClient::Warehouse),
        method: :GET,
        path: "/api/v1/warehouses/",
        query: { "page" => page, "page_size" => page_size, "search" => search, "is_active" => is_active },
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_warehouses_get_1(warehouse_id : String) : Response(OpenAPIClient::Warehouse)
      @conn.request(OpenAPIClient::Warehouse,
        method: :GET,
        path: "/api/v1/warehouses/{warehouse_id}".sub("{warehouse_id}", OpenAPIClient.enc(warehouse_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_warehouses_put(warehouse_id : String, body : JSON::Any) : Response(OpenAPIClient::Warehouse)
      @conn.request(OpenAPIClient::Warehouse,
        method: :PUT,
        path: "/api/v1/warehouses/{warehouse_id}".sub("{warehouse_id}", OpenAPIClient.enc(warehouse_id)),
        body: body,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_warehouses_stock(warehouse_id : String) : Response(Array(OpenAPIClient::WarehouseStock))
      @conn.request(Array(OpenAPIClient::WarehouseStock),
        method: :GET,
        path: "/api/v1/warehouses/{warehouse_id}/stock".sub("{warehouse_id}", OpenAPIClient.enc(warehouse_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_warehouses_stock_delete(warehouse_id : String, product_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/warehouses/{warehouse_id}/stock/{product_id}".sub("{warehouse_id}", OpenAPIClient.enc(warehouse_id)).sub("{product_id}", OpenAPIClient.enc(product_id)),
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_warehouses_stock_post(warehouse_id : String, stock_adjustment : OpenAPIClient::StockAdjustment) : Response(OpenAPIClient::WarehouseStock)
      @conn.request(OpenAPIClient::WarehouseStock,
        method: :POST,
        path: "/api/v1/warehouses/{warehouse_id}/stock".sub("{warehouse_id}", OpenAPIClient.enc(warehouse_id)),
        body: stock_adjustment,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_warehouses_stock_put(warehouse_id : String, product_id : String, stock_adjustment : OpenAPIClient::StockAdjustment) : Response(OpenAPIClient::WarehouseStock)
      @conn.request(OpenAPIClient::WarehouseStock,
        method: :PUT,
        path: "/api/v1/warehouses/{warehouse_id}/stock/{product_id}".sub("{warehouse_id}", OpenAPIClient.enc(warehouse_id)).sub("{product_id}", OpenAPIClient.enc(product_id)),
        body: stock_adjustment,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # List webhook events (inbound + outbound log).
    def v1_webhook_events() : Response(Array(OpenAPIClient::WebhookEvent))
      @conn.request(Array(OpenAPIClient::WebhookEvent),
        method: :GET,
        path: "/api/v1/webhook-events",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # List webhook subscriptions for the tenant.
    def v1_webhook_subscriptions() : Response(Array(OpenAPIClient::WebhookSubscription))
      @conn.request(Array(OpenAPIClient::WebhookSubscription),
        method: :GET,
        path: "/api/v1/webhook-subscriptions",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # Delete a webhook subscription.
    def v1_webhook_subscriptions_delete(subscription_id : String) : Response(Nil)
      @conn.request(Nil,
        method: :DELETE,
        path: "/api/v1/webhook-subscriptions/{subscription_id}".sub("{subscription_id}", OpenAPIClient.enc(subscription_id)),
        accept: %w[],
        auth: %w[bearer_token])
    end

    # Create a webhook subscription (outbound hook).
    def v1_webhook_subscriptions_post(create_subscription_request : OpenAPIClient::CreateSubscriptionRequest) : Response(OpenAPIClient::WebhookSubscription)
      @conn.request(OpenAPIClient::WebhookSubscription,
        method: :POST,
        path: "/api/v1/webhook-subscriptions",
        body: create_subscription_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Update a webhook subscription.
    def v1_webhook_subscriptions_put(subscription_id : String, update_subscription_request : OpenAPIClient::UpdateSubscriptionRequest) : Response(OpenAPIClient::WebhookSubscription)
      @conn.request(OpenAPIClient::WebhookSubscription,
        method: :PUT,
        path: "/api/v1/webhook-subscriptions/{subscription_id}".sub("{subscription_id}", OpenAPIClient.enc(subscription_id)),
        body: update_subscription_request,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Manually fire an event against matching hooks (for testing/flows).
    def v1_webhooks_emit(emit_event_request : OpenAPIClient::EmitEventRequest) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/api/v1/webhooks/emit",
        body: emit_event_request,
        accept: %w[],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_workflows() : Response(Array(OpenAPIClient::Workflow))
      @conn.request(Array(OpenAPIClient::Workflow),
        method: :GET,
        path: "/api/v1/workflows",
        accept: %w[application/json],
        auth: %w[bearer_token])
    end

    # 
    def v1_workflows_enabled(workflow_id : String, workflow_enabled_update : OpenAPIClient::WorkflowEnabledUpdate) : Response(OpenAPIClient::Workflow)
      @conn.request(OpenAPIClient::Workflow,
        method: :PUT,
        path: "/api/v1/workflows/{workflow_id}/enabled".sub("{workflow_id}", OpenAPIClient.enc(workflow_id)),
        body: workflow_enabled_update,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[bearer_token])
    end

    # Paddle Billing subscription webhook. Verifies the &#x60;Paddle-Signature&#x60; header (HMAC-SHA256 over &#x60;\&quot;{ts}:{raw_body}\&quot;&#x60; with the webhook secret), then updates &#x60;billing_info&#x60; and &#x60;tenants.plan&#x60; for the tenant identified by the subscription &#x60;custom_data&#x60; (JSON &#x60;{\&quot;tenant_id\&quot;: \&quot;...\&quot;}&#x60; or a bare tenant UUID).
    def webhooks_paddle_subscription() : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/api/webhooks/paddle/subscription",
        accept: %w[],
        auth: %w[bearer_token])
    end
  end
  end

end
