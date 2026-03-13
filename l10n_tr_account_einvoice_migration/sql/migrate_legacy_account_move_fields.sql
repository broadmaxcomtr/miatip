DO $$
BEGIN
    IF EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'account_move'
          AND column_name = 'invoice_delivery_type'
    ) AND EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'account_move'
          AND column_name = 'l10n_tr_document_type'
    ) THEN
        EXECUTE '
            UPDATE account_move
               SET l10n_tr_document_type = invoice_delivery_type
             WHERE invoice_delivery_type IS NOT NULL
        ';
    END IF;

    IF EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'account_move'
          AND column_name = 'document_number'
    ) AND EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'account_move'
          AND column_name = 'l10n_tr_edocument_number'
    ) THEN
        EXECUTE '
            UPDATE account_move
               SET l10n_tr_edocument_number = document_number
             WHERE document_number IS NOT NULL
        ';
    END IF;

    IF EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'account_move'
          AND column_name = 'account_invoice_currency_rate'
    ) AND EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'account_move'
          AND column_name = 'invoice_rate_type'
    ) THEN
        EXECUTE '
            UPDATE account_move
               SET invoice_rate_type = account_invoice_currency_rate
             WHERE account_invoice_currency_rate IS NOT NULL
        ';
    END IF;

    IF EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'account_move'
          AND column_name = 'use_custom_rate'
    ) AND EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'account_move'
          AND column_name = 'custom_currency'
    ) THEN
        EXECUTE '
            UPDATE account_move
               SET custom_currency = use_custom_rate
             WHERE use_custom_rate IS NOT NULL
        ';
    END IF;

    IF EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'account_move'
          AND column_name = 'einvoice_profile_id'
    ) AND EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'account_move'
          AND column_name = 'l10n_tr_profile_id'
    ) THEN
        EXECUTE '
            UPDATE account_move
               SET l10n_tr_profile_id = einvoice_profile_id
             WHERE einvoice_profile_id IS NOT NULL
        ';
    END IF;

    IF EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'account_move'
          AND column_name = 'einvoice_uuid'
    ) AND EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'account_move'
          AND column_name = 'e_document_uuid'
    ) THEN
        EXECUTE '
            UPDATE account_move
               SET e_document_uuid = einvoice_uuid
             WHERE einvoice_uuid IS NOT NULL
        ';
    END IF;

    IF EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'account_move'
          AND column_name = 'einvoice_state'
    ) AND EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'account_move'
          AND column_name = 'l10n_tr_broadmax_status'
    ) THEN
        EXECUTE '
            UPDATE account_move
               SET l10n_tr_broadmax_status = einvoice_state
             WHERE einvoice_state IS NOT NULL
        ';
    END IF;
END
$$;
