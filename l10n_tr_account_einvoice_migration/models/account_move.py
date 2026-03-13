from odoo import fields, models


class AccountMove(models.Model):
    _inherit = "account.move"

    l10n_tr_document_type = fields.Boolean(
        string="E-Document",
        copy=False,
    )
    l10n_tr_edocument_number = fields.Char(
        string="E-Document Number",
        copy=False,
    )
    invoice_rate_type = fields.Char(
        string="Invoice Rate Type",
        copy=False,
    )
    currency_rate = fields.Float(
        string="Currency Rate",
        digits=(16, 6),
        copy=False,
    )
    custom_currency = fields.Boolean(
        string="Custom Currency",
        copy=False,
    )
    l10n_tr_profile_id = fields.Many2one(
        "l10n_tr.profile",
        string="Invoice Profile",
        copy=False,
    )
    e_document_uuid = fields.Char(
        string="UUID",
        copy=False,
    )
    l10n_tr_broadmax_status = fields.Char(
        string="Broadmax Status",
        copy=False,
    )
