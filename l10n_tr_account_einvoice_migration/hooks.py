import os


def post_init_hook(cr, registry):
    sql_path = os.path.join(
        os.path.dirname(__file__),
        "sql",
        "migrate_legacy_account_move_fields.sql",
    )
    with open(sql_path, "r") as sql_file:
        cr.execute(sql_file.read())
