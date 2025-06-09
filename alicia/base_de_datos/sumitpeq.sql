-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2024 a las 23:31:47
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sumitgeneral`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_access`
--

CREATE TABLE `phppos_access` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `all_access` tinyint(1) NOT NULL DEFAULT 0,
  `controller` varchar(50) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_additional_item_numbers`
--

CREATE TABLE `phppos_additional_item_numbers` (
  `item_id` int(11) NOT NULL,
  `item_number` varchar(255) NOT NULL,
  `item_variation_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_appointments`
--

CREATE TABLE `phppos_appointments` (
  `id` int(11) NOT NULL,
  `location_id` int(10) NOT NULL,
  `person_id` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `appointments_type_id` int(10) NOT NULL,
  `notes` text NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_appointment_types`
--

CREATE TABLE `phppos_appointment_types` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_app_config`
--

CREATE TABLE `phppos_app_config` (
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_app_config`
--

INSERT INTO `phppos_app_config` (`key`, `value`) VALUES
('_', '1711145797821'),
('additional_payment_types', ''),
('allow_scan_of_customer_into_item_field', '0'),
('always_minimize_menu', '1'),
('always_print_duplicate_receipt_all', '0'),
('always_show_item_grid', '0'),
('always_use_average_cost_method', '0'),
('amount_of_cash_to_be_left_in_drawer_at_closing', ''),
('announcement_special', ''),
('auto_capture_signature', '0'),
('auto_focus_on_item_after_sale_and_receiving', '0'),
('auto_sync_offline_sales', '0'),
('automatically_email_receipt', '0'),
('automatically_print_duplicate_receipt_for_cc_transactions', '0'),
('automatically_show_comments_on_receipt', '0'),
('automatically_sms_receipt', '0'),
('averaging_method', 'moving_average'),
('barcode_height', '0.79'),
('barcode_price_include_tax', '0'),
('barcode_width', '1.9'),
('bluejay_seen', '1'),
('calculate_average_cost_price_from_receivings', '0'),
('calculate_profit_for_giftcard_when', ''),
('capture_internal_notes_during_sale', '0'),
('capture_sig_for_all_payments', '0'),
('cash_alert_high', ''),
('cash_alert_low', ''),
('change_sale_date_for_new_sale', '0'),
('change_sale_date_when_completing_suspended_sale', '0'),
('change_sale_date_when_suspending', '0'),
('charge_tax_on_recv', '0'),
('collapse_recv_ui_by_default', '0'),
('collapse_sales_ui_by_default', '0'),
('commission_default_rate', '0'),
('commission_percent_type', 'selling_price'),
('company', 'SUMIT'),
('company_logo', '0'),
('confirm_error_adding_item', '0'),
('crlf', '\r\n'),
('currency_code', ''),
('currency_symbol', 'Q'),
('currency_symbol_location', 'before'),
('customer_custom_field_prefs', 'a:31:{s:19:\"custom_field_1_name\";s:0:\"\";s:19:\"custom_field_1_type\";s:8:\"checkbox\";s:22:\"custom_field_1_choices\";s:0:\"\";s:19:\"custom_field_2_name\";s:0:\"\";s:19:\"custom_field_2_type\";s:4:\"text\";s:22:\"custom_field_2_choices\";s:0:\"\";s:19:\"custom_field_3_name\";s:0:\"\";s:19:\"custom_field_3_type\";s:4:\"date\";s:22:\"custom_field_3_choices\";s:0:\"\";s:19:\"custom_field_4_name\";s:0:\"\";s:19:\"custom_field_4_type\";s:4:\"text\";s:22:\"custom_field_4_choices\";s:0:\"\";s:19:\"custom_field_5_name\";s:0:\"\";s:19:\"custom_field_5_type\";s:4:\"text\";s:22:\"custom_field_5_choices\";s:0:\"\";s:19:\"custom_field_6_name\";s:0:\"\";s:19:\"custom_field_6_type\";s:4:\"text\";s:22:\"custom_field_6_choices\";s:0:\"\";s:19:\"custom_field_7_name\";s:0:\"\";s:19:\"custom_field_7_type\";s:4:\"text\";s:22:\"custom_field_7_choices\";s:0:\"\";s:19:\"custom_field_8_name\";s:0:\"\";s:19:\"custom_field_8_type\";s:4:\"text\";s:22:\"custom_field_8_choices\";s:0:\"\";s:19:\"custom_field_9_name\";s:0:\"\";s:19:\"custom_field_9_type\";s:4:\"text\";s:22:\"custom_field_9_choices\";s:0:\"\";s:20:\"custom_field_10_name\";s:0:\"\";s:20:\"custom_field_10_type\";s:4:\"text\";s:23:\"custom_field_10_choices\";s:0:\"\";s:7:\"submitf\";s:7:\"Guardar\";}'),
('customers_store_accounts', '1'),
('damaged_reasons', ''),
('dark_mode', '0'),
('date_format', 'middle_endian'),
('decimal_point', '.'),
('default_age_to_verify', ''),
('default_credit_limit', ''),
('default_days_to_expire_when_creating_items', ''),
('default_new_customer_to_current_location', '0'),
('default_new_items_to_service', '0'),
('default_payment_type', 'Efectivo'),
('default_payment_type_recv', 'Efectivo'),
('default_reorder_level_when_creating_items', ''),
('default_sales_person', 'logged_in_employee'),
('default_tax_1_name', 'Sales Tax'),
('default_tax_1_rate', ''),
('default_tax_2_cumulative', '0'),
('default_tax_2_name', 'Sales Tax 2'),
('default_tax_2_rate', ''),
('default_tax_3_name', ''),
('default_tax_3_rate', ''),
('default_tax_4_name', ''),
('default_tax_4_rate', ''),
('default_tax_5_name', ''),
('default_tax_5_rate', ''),
('default_tax_rate', '8'),
('default_tier_fixed_type_for_excel_import', 'fixed_amount'),
('default_tier_percent_type_for_excel_import', 'percent_off'),
('default_type_for_grid', 'categories'),
('deleted_payment_types', ''),
('disable_confirm_recv', '0'),
('disable_confirmation_sale', '0'),
('disable_gift_cards_sold_from_loyalty', '0'),
('disable_giftcard_detection', '1'),
('disable_loyalty_by_default', '0'),
('disable_price_rules_dialog', '0'),
('disable_quick_complete_sale', '1'),
('disable_recv_cloning', '0'),
('disable_recv_number_on_barcode', '0'),
('disable_sale_cloning', '0'),
('disable_sale_notifications', '0'),
('disable_store_account_when_over_credit_limit', '0'),
('disable_test_mode', '0'),
('disabled_fixed_discounts', '1'),
('discount_percent_earned', '0'),
('display_item_name_first_for_variation_name', '0'),
('do_not_allow_below_cost', '1'),
('do_not_allow_item_with_variations_to_be_sold_without_selecting_variation', '0'),
('do_not_allow_items_to_go_out_of_stock_when_transfering', '1'),
('do_not_allow_out_of_stock_items_to_be_sold', '1'),
('do_not_allow_sales_with_zero_value', '1'),
('do_not_delete_saved_card_after_failure', '0'),
('do_not_delete_serial_number_when_selling', '0'),
('do_not_force_http', '0'),
('do_not_group_same_items', '0'),
('do_not_show_closing', '0'),
('do_not_tax_service_items_for_deliveries', '0'),
('do_not_treat_service_items_as_virtual', '0'),
('do_not_upload_images_to_ecommerce', '0'),
('dont_recalculate_cost_price_when_unsuspending_estimates', '0'),
('ecom_store_location', '1'),
('ecommerce_cron_sync_operations', 'a:13:{i:0;s:22:\"sync_inventory_changes\";i:1;s:33:\"import_ecommerce_tags_into_phppos\";i:2;s:39:\"import_ecommerce_categories_into_phppos\";i:3;s:39:\"import_ecommerce_attributes_into_phppos\";i:4;s:30:\"import_tax_classes_into_phppos\";i:5;s:35:\"import_shipping_classes_into_phppos\";i:6;s:34:\"import_ecommerce_items_into_phppos\";i:7;s:35:\"import_ecommerce_orders_into_phppos\";i:8;s:31:\"export_phppos_tags_to_ecommerce\";i:9;s:37:\"export_phppos_categories_to_ecommerce\";i:10;s:37:\"export_phppos_attributes_to_ecommerce\";i:11;s:30:\"export_tax_classes_into_phppos\";i:12;s:32:\"export_phppos_items_to_ecommerce\";}'),
('ecommerce_only_sync_completed_orders', '0'),
('ecommerce_platform', ''),
('edit_customer_web_hook', ''),
('edit_item_price_if_zero_after_adding', '0'),
('edit_recv_web_hook', ''),
('edit_sale_web_hook', ''),
('email_charset', ''),
('email_provider', 'Other'),
('emailed_receipt_subject', ''),
('enable_customer_loyalty_system', '0'),
('enable_customer_quick_add', '1'),
('enable_ebt_payments', '0'),
('enable_margin_calculator', '0'),
('enable_markup_calculator', '0'),
('enable_pdf_receipts', '0'),
('enable_points_for_giftcard_payments', '0'),
('enable_quick_edit', '0'),
('enable_scale', '0'),
('enable_sounds', '0'),
('enable_supplier_quick_add', '1'),
('enable_tips', '0'),
('enable_wic', '0'),
('enhanced_search_method', '0'),
('fast_user_switching', '0'),
('flat_discounts_discount_tax', '0'),
('font_size', '13'),
('force_https', '1'),
('group_all_taxes_on_receipt', '0'),
('hide_all_prices_on_recv', '0'),
('hide_available_giftcards', '0'),
('hide_barcode_on_barcode_labels', '0'),
('hide_barcode_on_sales_and_recv_receipt', '0'),
('hide_customer_recent_sales', '0'),
('hide_desc_emailed_receipts', '0'),
('hide_desc_on_receipt', '0'),
('hide_description_on_sales_and_recv', '0'),
('hide_email_on_receipts', '0'),
('hide_expire_dashboard', '0'),
('hide_expire_date_on_barcodes', '0'),
('hide_images_in_grid', '0'),
('hide_item_descriptions_in_reports', '0'),
('hide_latest_updates_in_header', '0'),
('hide_layaways_sales_in_reports', '0'),
('hide_merchant_id_from_receipt', '0'),
('hide_name_on_barcodes', '0'),
('hide_out_of_stock_grid', '0'),
('hide_points_on_receipt', '0'),
('hide_price_on_barcodes', '0'),
('hide_prices_on_fill_sheet', '0'),
('hide_sales_to_discount_on_receipt', '0'),
('hide_signature', '0'),
('hide_size_field', '1'),
('hide_store_account_balance_on_receipt', '0'),
('hide_store_account_payments_from_report_totals', '0'),
('hide_store_account_payments_in_reports', '0'),
('hide_suspended_recv_in_reports', '0'),
('hide_test_mode_home', '1'),
('hide_tier_on_receipt', '0'),
('highlight_low_inventory_items_in_items_module', '0'),
('id_to_show_on_barcode', 'id'),
('id_to_show_on_sale_interface', 'number'),
('import_all_past_orders_for_woo_commerce', '0'),
('include_child_categories_when_searching_or_reporting', '0'),
('indicate_taxable_on_receipt', '0'),
('item_id_auto_increment', '1'),
('item_kit_id_auto_increment', '1'),
('item_lookup_order', 'a:6:{i:0;s:7:\"item_id\";i:1;s:11:\"item_number\";i:2;s:10:\"product_id\";i:3;s:23:\"additional_item_numbers\";i:4;s:14:\"serial_numbers\";i:5;s:26:\"item_variation_item_number\";}'),
('items_per_search_suggestions', '20'),
('language', 'spanish'),
('legacy_detailed_report_export', '0'),
('limit_manual_price_adj', '0'),
('lock_prices_suspended_sales', '0'),
('logout_on_clock_out', '0'),
('loyalty_option', 'simple'),
('loyalty_points_without_tax', '0'),
('mailing_labels_type', 'pdf'),
('markup_markdown', 'a:7:{s:8:\"Efectivo\";d:0;s:19:\"Pago contra entrega\";d:0;s:17:\"Tarjeta de regalo\";d:0;s:11:\"Tarjeta D/C\";d:0;s:24:\"Transferencia o deposito\";d:0;s:18:\"Línea de crédito\";d:0;s:6:\"Puntos\";d:0;}'),
('max_discount_percent', ''),
('mercury_activate_seen', '1'),
('minimum_points_to_redeem', ''),
('new_customer_web_hook', ''),
('new_items_are_ecommerce_by_default', '1'),
('new_receiving_web_hook', ''),
('new_sale_web_hook', ''),
('newline', '\r\n'),
('number_of_decimals', ''),
('number_of_decimals_for_quantity_on_receipt', ''),
('number_of_items_in_grid', '14'),
('number_of_items_per_page', '20'),
('number_of_recent_sales', '10'),
('number_of_sales_for_discount', ''),
('offline_mode', '0'),
('online_price_tier', '0'),
('overall_font_size', '10'),
('override_receipt_title', ''),
('override_signature_text', ''),
('override_tier_name', ''),
('overwrite_existing_items_on_excel_import', '0'),
('past_inventory_date', now()),
('paypal_me', ''),
('pdf_receipt_message', ''),
('phppos_session_expiration', '0'),
('point_value', ''),
('prices_include_tax', '1'),
('print_after_receiving', '0'),
('print_after_sale', '0'),
('prompt_amount_for_cash_sale', '0'),
('prompt_for_ccv_swipe', '0'),
('prompt_to_use_points', '0'),
('protocol', 'smtp'),
('qb_export_start_date', ''),
('qb_sync_operations', 'a:1:{i:0;s:33:\"export_journalentry_to_quickbooks\";}'),
('quick_variation_grid', '0'),
('receipt_text_size', 'small'),
('receiving_id_auto_increment', '1'),
('redirect_to_sale_or_recv_screen_after_printing_receipt', '0'),
('remind_customer_facing_display', '0'),
('remove_commission_from_profit_in_reports', '0'),
('remove_customer_company_from_receipt', '0'),
('remove_customer_contact_info_from_receipt', '0'),
('remove_customer_name_from_receipt', '0'),
('remove_employee_from_receipt', '0'),
('remove_points_from_profit', '0'),
('report_sort_order', 'desc'),
('require_customer_for_sale', '0'),
('require_customer_for_suspended_sale', '0'),
('require_employee_login_before_each_sale', '0'),
('require_supplier_for_recv', '0'),
('reseller_activate_seen', '1'),
('reset_location_when_switching_employee', '0'),
('return_policy', 'Gracias por su compra.'),
('round_cash_on_sales', '0'),
('round_tier_prices_to_2_decimals', '0'),
('sale_custom_field_prefs', 'a:33:{s:19:\"custom_field_1_name\";s:0:\"\";s:19:\"custom_field_1_type\";s:8:\"checkbox\";s:22:\"custom_field_1_choices\";s:0:\"\";s:19:\"custom_field_2_name\";s:0:\"\";s:19:\"custom_field_2_type\";s:4:\"date\";s:22:\"custom_field_2_choices\";s:0:\"\";s:30:\"custom_field_2_show_on_receipt\";s:1:\"1\";s:19:\"custom_field_3_name\";s:0:\"\";s:19:\"custom_field_3_type\";s:5:\"image\";s:22:\"custom_field_3_choices\";s:0:\"\";s:30:\"custom_field_3_show_on_receipt\";s:1:\"1\";s:19:\"custom_field_4_name\";s:0:\"\";s:19:\"custom_field_4_type\";s:4:\"text\";s:22:\"custom_field_4_choices\";s:0:\"\";s:19:\"custom_field_5_name\";s:0:\"\";s:19:\"custom_field_5_type\";s:4:\"text\";s:22:\"custom_field_5_choices\";s:0:\"\";s:19:\"custom_field_6_name\";s:0:\"\";s:19:\"custom_field_6_type\";s:4:\"text\";s:22:\"custom_field_6_choices\";s:0:\"\";s:19:\"custom_field_7_name\";s:0:\"\";s:19:\"custom_field_7_type\";s:4:\"text\";s:22:\"custom_field_7_choices\";s:0:\"\";s:19:\"custom_field_8_name\";s:0:\"\";s:19:\"custom_field_8_type\";s:4:\"text\";s:22:\"custom_field_8_choices\";s:0:\"\";s:19:\"custom_field_9_name\";s:0:\"\";s:19:\"custom_field_9_type\";s:4:\"text\";s:22:\"custom_field_9_choices\";s:0:\"\";s:20:\"custom_field_10_name\";s:0:\"\";s:20:\"custom_field_10_type\";s:4:\"text\";s:23:\"custom_field_10_choices\";s:0:\"\";s:7:\"submitf\";s:7:\"Guardar\";}'),
('sale_id_auto_increment', '1'),
('sale_prefix', 'Venta'),
('saved_name', ''),
('scale', '1'),
('scale_divide_by', '100'),
('scale_format', 'scale_1'),
('scan_and_set_recv', '0'),
('scan_and_set_sales', '0'),
('second_language', ''),
('select_sales_person_during_sale', '0'),
('shopify_shop', ''),
('show_barcode_company_name', '1'),
('show_clock_on_header', '1'),
('show_full_category_path', '0'),
('show_item_id_on_receipt', '0'),
('show_item_id_on_recv_receipt', '0'),
('show_item_kit_items_on_receipt', '0'),
('show_language_switcher', '0'),
('show_orig_price_if_marked_down_on_receipt', '0'),
('show_person_id_on_receipt', '0'),
('show_receipt_after_suspending_sale', '0'),
('show_selling_price_on_recv', '1'),
('show_signature_on_receiving_receipt', '0'),
('show_tags_on_fulfillment_sheet', '0'),
('show_tax_per_item_on_receipt', '0'),
('show_total_discount_on_receipt', '0'),
('show_total_on_fulfillment', '0'),
('shown_feedback_message', '1'),
('shown_setup_wizard', '1'),
('sku_sync_field', 'item_number'),
('smtp_crypto', 'ssl'),
('smtp_host', 'mail.sumit.gt'),
('smtp_pass', ''),
('smtp_port', ''),
('smtp_timeout', ''),
('smtp_user', 'usuario@sumit.gt'),
('sort_receipt_column', ''),
('speed_up_search_queries', '0'),
('spend_to_point_ratio', ''),
('spreadsheet_format', 'XLSX'),
('store_account_statement_message', ''),
('store_closing_time', ''),
('store_opening_time', ''),
('strict_age_format_check', '0'),
('suppliers_store_accounts', '1'),
('supports_full_text', '1'),
('tax_class_id', '0'),
('tax_id', ''),
('tax_jar_location', '0'),
('taxes_summary_details_on_receipt', '0'),
('taxes_summary_on_receipt', '0'),
('taxjar_api_key', ''),
('test_mode', '0'),
('thickness', '30'),
('thousands_separator', ','),
('time_format', '12_hour'),
('timeclock', '0'),
('timeclock_pto', '0'),
('tip_preset_zero', '0'),
('track_cash', '0'),
('track_payment_types', 'a:1:{i:0;s:11:\"common_cash\";}'),
('track_shipping_cost_recv', '0'),
('update_cost_price_on_transfer', '0'),
('uppercase_receipts', '0'),
('use_rtl_barcode_library', '0'),
('user_configured_layaway_name', ''),
('verify_age_for_products', '0'),
('version', '18.1'),
('virtual_keyboard', ''),
('website', ''),
('week_start_day', 'monday'),
('wide_printer_receipt_format', '0'),
('wizard_add_customer', '1'),
('wizard_add_inventory', '1'),
('wizard_configure_company', '1'),
('wizard_configure_locations', '1'),
('wizard_create_sale', '1'),
('wizard_edit_employees', '1'),
('woo_api_key', ''),
('woo_api_secret', ''),
('woo_api_url', ''),
('woo_enable_html_desc', '0'),
('woo_version', '3.0.0'),
('zerofill_barcode', '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_app_files`
--

CREATE TABLE `phppos_app_files` (
  `file_id` int(10) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_data` longblob NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expires` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_app_files`
--

INSERT INTO `phppos_app_files` (`file_id`, `file_name`, `file_data`, `timestamp`, `expires`) VALUES
(1, 'SUMIT.png', 0x89504e470d0a1a0a0000000d49484452000029b0000006d60806000000ef1b8c71000000097048597300002e2300002e230178a53f760000200049444154789cecdded711b49b626e01713fa4f7840ac05c458c0ba1608d702712d68ad05adb5401a0b5a63c152163468c180160c68c1852cc8fd51c921c496ba2989c4c1c7f3449cc82a0062bfd16204a9cacc9393d65a0000000000000000000000801735ebf557e649a6dff175871fc8b26d9ae4e227bfc6befb9c64f5137f7ef39d7f7ef984cfac7b010000000000000000000000000000000000000000000000000000000064d25aabce000000000000000000000000bb347ce3f559afaf992799fec9d7bcfcf138f0077749d6df786f9364f58df756fdfda7be0e00000000000000000000000000000000000000000000000000000000ec81496bad3a0300000000000000000000007ccd3cc9f409afcd7a7dedcf9f3d7b2a381e375f796d9564f384d7962f1108000000000000000000000000000000000000000000000000000000004ed1a4b5569d010000000000000000000080e3324f32ddba9ff5ba37ed9fc9a3cf9cbf6428e045dd25593f7a6df9e87e9564f327f700000000000000000000000000000000000000000000000000000000709226adb5ea0c0000000000000000000000ec9759af7bf324d3adfbe1d1e72f5f360e70226e1edd2fb7aed7bdbef61e000000000000000000000000000000000000000000000000000000001cb4496bad3a0300000000000000000000002f639e64daafa7fdfe5bef5dec3017c073ba4bb2deba5f6e5daf926cfaf5fad1e700000000000000000000000000000000000000000000000000000000602f4c5a6bd5190000000000000000000000f86bb35e8fafa749e65b9fbbdc55208003769764ddaf3749565fb95e6f7d06000000000000000000000000000000000000000000000000000000005ecca4b5569d0100000000000000000000e0144d93ccfbf5acd7d7aecf771709806fb84bb2eed7ab249b7ebdece3a6bf0e00000000000000000000000000000000000000000000000000000000df6dd25aabce0000000000000000000000702ca649e6fd7adeef9364d87aff62c79900d8adbb24eb7ebdece326c9aa5faffa3d00000000000000000000000000000000000000000000000000000000244926adb5ea0c0000000000000000000000fb6e9e64da6bde5f9bf54a92cbdd4702e0c07d4eb2ead7ab249b24eb5e49b2dc7922000000000000000000000000000000000000000000000000000000004a4c5a6bd5190000000000000000000000aacc7a25c9f0e8b569928b1de70180c76e936c92ac7b25c9b28fabfe1e00000000000000000000000000000000000000000000000000000000076cd25aabce0000000000000000000000f012e649a64966bda6fdb5fbf7ce4a5201c0f3bb4bb24eb249b2da1a936459130900000000000000000000000000000000000000000000000000000080a79ab4d6aa3300000000000000000000007caf59af6992f9d698249735910060afddf471d9c75592cdd6080000000000000000000000000000000000000000000000000000004091496bad3a0300000000000000000000c063431fe749a68fc6b3a24c0070cc6e936c92acbe3102000000000000000000000000000000000000000000000000000000f04226adb5ea0c00000000000000000000c0e919be315eee3a0800f024377d5c6e8d9b24ab8a3000000000000000000000000000000000000000000000000000000000c764d25aabce00000000000000000000001c9f79926992a1dfdf8f971561008017f539c92ac9bad72ac926c9b22c11000000000000000000000000000000000000000000000000000000c00199b4d6aa33000000000000000000000087679a649e64f6a8e649ce8a320100fbe926c926c92ac9bad7aabf0600000000000000000000000000000000000000000000000000000070f226adb5ea0c00000000000000000000c07e9af59a27992619fa785196080038363749d6bd5649364996757100000000000000000000000000000000000000000000000000000000766fd25aabce0000000000000000000000d499f59a27992619fa785196080020f99c64d56b93649964dd0b000000000000000000000000000000000000000000000000000000e0a84c5a6bd519000000000000000000008097354d32ef354d32f4f1a2301300c08fba4db24eb2eab549b22ccc03000000000000000000000000000000000000000000000000000000f05326adb5ea0c00000000000000000000c0f318924c93cc7b4d935c56060200d8a1bb24eb24cb3eae93ac926caa02010000000000000000000000000000000000000000000000000000003cc5a4b5569d010000000000000000000078ba699279af699221c92cc9795d240080bdf639c9aad77aeb7a539809000000000000000000000000000000000000000000000000000000e03f26adb5ea0c00000000000000000000c01fcd7a0d5bd797556100008ed05d927592651fefaf01000000000000000000000000000000000000000000000000000000766ad25aabce0000000000000000000000a76cd66bd8babeac0a030040ee92acb66add4700000000000000000000000000000000000000000000000000000080173169ad556700000000000000000000805330eb356c5d5f56850100e0bbdd245927596dd5a63210000000000000000000000000000000000000000000000000000000701c26adb5ea0c00000000000000000000704ca649e6bd667dbcac0c0400c08bb94bb24eb24cb2eab5ae8b030000000000000000000000000000000000000000000000000000001ca2496bad3a03000000000000000000001caa79af5992a18fe775710000d8133749568f0a000000000000000000000000000000000000000000000000000000e0ab26adb5ea0c00000000000000000000b0efa649e6498624b37e7d5198070080c3739b64b555cbd234000000000000000000000000000000000000000000000000000000c0de98b4d6aa3300000000000000000000c03e992799f571e8e359611e00008ed76d92d5562d4bd3000000000000000000000000000000000000000000000000000000002526adb5ea0c00000000000000000000506548324b32ef75591906000092dc26596dd5b2340d000000000000000000000000000000000000000000000000000000f0e226adb5ea0c00000000000000000000b00b4392f9565d94a6010080a7bb4db24cb2da2a000000000000000000000000000000000000000000000000000000e0484c5a6bd51900000000000000000000e0b90d49e65b75519a0600009edf4d92659255af756518000000000000000000000000000000000000000000000000000000e0c74d5a6bd51900000000000000000000e0670c49e65b75519a0600006adc2559f55af6020000000000000000000000000000000000000000000000000000000ec0a4b5569d01000000000000000000009e6a9e64e8e33cc945691a0000d86fb7499649567d5c176601000000000000000000000000000000000000000000000000000000be61d25aabce00000000000000000000005f334b322499f7baac0c03000047e073926592551f978559000000000000000000000000000000000000000000000000000000806ed25aabce0000000000000000000000d324f32443af7992b3c23c0000702a6e932c7bad92ac0bb3000000000000000000000000000000000000000000000000000000c0499ab4d6aa3300000000000000000000707ae64986adf1bc320c0000f01f774996bd56bd00000000000000000000000000000000000000000000000000000080173469ad556700000000000000000000e0b84d930c49e67dbcac0c0300007c97cf4996bd567d040000000000000000000000000000000000000000000000000000009ed1a4b5569d0100000000000000000080e332ef35f43aaf0c0300003cbb9b24cbad020000000000000000000000000000000000000000000000000000007ec2a4b5569d0100000000000000000080c3366cd53cc9596116000060f76e922cb70a000000000000000000000000000000000000000000000000000000f80e93d65a7506000000000000000000000ec734c9d06b9ee4b2320c0000b0976e922cb70a000000000000000000000000000000000000000000000000000000f81393d65a750600000000000000000000f6d72cc9d06b9ee4a2300b000070986e922cb70a000000000000000000000000000000000000000000000000000000d83269ad556700000000000000000000607fcc7b0dbdce2bc300000047e926c975926592556d14000000000000000000000000000000000000000000000000000000a83769ad556700000000000000000000a0ce3cc9b055678559000080d3f339c972ab568559000000000000000000000000000000000000000000000000000000a0c4a4b5569d0100000000000000000080dd992719b6eaac300b0000c063774996bdae936c2ac3000000000000000000000000000000000000000000000000000000c02e4c5a6bd519000000000000000000007839f324c3569d1566010000f85eb74996bdae4b93000000000000000000000000000000000000000000000000000000c00b99b4d6aa3300000000000000000000f07c6649865e8b246785590000009edba724cb5eabd224000000000000000000000000000000000000000000000000000000f04c26adb5ea0c00000000000000000000fcb8599261abceeba2000000ecd45d926592eb3e6e2ac3000000000000000000000000000000000000000000000000000000c08f9ab4d6aa3300000000000000000000f074d324c3565d1466010000d827b749ae7bad8ab3000000000000000000000000000000000000000000000000000000c0934d5a6bd51900000000000000000000f873c3565d560601000038109f935c2759f671539a06000000000000000000000000000000000000000000000000000000fec4a4b5569d01000000000000000000802fcd922c920cbdce0ab30000001c839b24d749964956b5510000000000000000000000d832fcc57d924c93cc5f3c09007cdd3ae3dea4ebe21c0000c0f3181eddcf333e7f7aec5baf0300c7671dcf00010000000000000000d81393d65a7506000000000000000000805337cdd8cc7848b248725e19060000e0c8dd656c14bf8c86f1000000003c9fe1899f5bbe600600009efe7b190070bcd6bd0000a833cfb87776daaf9364d6ebfeda5e5a000ed16d92ab24abe21c0000c083591e9e3b0d5baf6f5fcf939ced240d0070e83c0384a7d99e0b06004ed72ac9a63a04ec81a13a000000000000701496db3793d65a510e000000000000000000809336cfd84c6291e4b2360a0000c049fb94e43ae3e6bb7569120000000076699687838a933f1e08f1f87e9ae4e219febb9f331e6278fd0c5f0b008007f38cbf639d57070100f6c23f92bcad0e010070a4a6199fc53c1e13fb6501380d9f333e77f8589c0300004ec1fdf3a7d9a34a3c8b02005ed6ff8e6780f02d6f93bc4b72569c0300a867fe9c53675f2b0000000000f09cbee85d3e69ad95a6010000000000000000003811d3248b24431f3559030000d83fb7199b5f2e93ac4a9300000000f0a3863ede1f563cedd7c97858f1be1cfcf05f199f430100f0f3e6197fb7b2361300d8f68f8c87e10200f063868cf36bb33cccbd5dd6c50180bdf239e3cf4afb8f0000e0e7dcaff59e3daa79ac050200ead9ff057f7495e4b7ea1000c0def9ef24d7d52160c76619d78d78960d00000000003cb7bf27594d5a6bd541000000000000000000008ed53cc9a2d7457116000000becf5dc62698d7d1481e000000605fccbe51d31cdebcfc5dc6ec0000fcbc6592cbea1000c05efaaf58fb0300f067a619f7c2ce33ce5ddd5f3b501d00feda5dc69f9b9bea2000007000b69f3fcd7a59ef0300ecbbcf197f6ff10c1046d324eb984f0600fee873c6df15e0942ce339370000000000f0326e920c93d65a7510000000804331f4f1bec166be71ff149b24ab47af2dffe43d0000000000e0304c33ce292c7a69a8060000701c3e27b9de2a000000005ece2c0f8713dfcfc34f935c94257a397f8ffd8400003f6b96e4dfd5210080bdf5cf2457d5210000f6c42ce31cdc3ce31cdc2cc9795d1c00380aff48f2b63a040000ec91591e9e41cdfbfd31ae0307004e87f547f0e02ac96fd5210080bdf5dfd1ab93d3318b7dad0000000000c0cbfafba4b5561d02000000605f0c190fb1bb6f62705f950d356ffab84ab249b2eca303e90000000000607fcc922c7a5dd64601000060473e656c8e799d714d1700000000dfef7e2fdffde1c4d39cdebcfbff4df2ae3a0400c081bb8a437001806fbbcdf8ec0900e0d4ccf2300f37f4f1ac300f001cb3ff95645d1d0200000a0cf9724df8a9ad0507004e87678030fa98e44d750800606ffd23c9dbea10b0238b24ffaf3a04000000000070d4fecfabea04000000000566f9b291e62cc9795d9c3f75f968fc75ebbddb24ab8c1b1397fd7ab3ab60000000000070e2868c8d2116d9df79060000005eceeb5ebf25f994710dd775349a07000000f89a69bedccf374f725198070080e332ab0e0000ec35cfa1008053b03d1f37f4ebb3c23c00706aae92bc2bce0000002f6dc8c3392fd6830300a7e66d2f3875b3ea0000c05e9b5707801df2fd0e0000000000bcb4e9abea04000000003b30e4381b695ee4a129c3af7dbc4bb24cb2da1a0100000000809f374db2c838dfb0c8f1cc37000000f0f35ef77a9fe436c9c724d749d6759100000000caccf27028f190e3dad307000000000000fb609687b9b8210f7d2901801a5749de1567000080e734cbc3f3a77992cbca3000007be02ac9dbea100000000000000000009c8e57d501000000005ec0906491d36ca4799ee44daf24f99c64b955ab8a50000000000070a06619e71c16d13c19000080a7b948f2bed76d928f49ae93aceb2201000000bc98691e0e26be1fcf0af3000000000000c0319a659c8fbbaff3ba2800c0579c675c37a3f7330000876ac8c39af021d68403003c7616cf00010000000000000000d8a157d501000000009ec12cc922632383d7a549f6cf59c6ff27f7ff5f3e27b94eb2ece3a626160000000000ecad7992ab8cf30e17a54900000038741749def7ba4df231e3baad755d24000000809f727f28f1fd785e19060000000000008ed4340f3d368798970380433024595587000080271ab6eab2320800c00159c4334000000000000000000076e4557500000000801f344f729571539e669a4f7796e44dafdf92dc26f998e43ac9ba2c150000000000d4ba3fc4cbbc030000002fe522c9fb5ed66d0100000087628883890100000000006017863cec77bd284d0200fc88ab241faa430000c0370cb12e1c00e067cdab03000000000000000000703a5e550700000000f80ef38c8db81649ce6ba31c8d8b24ef7bdd26f998e43ac9ba2e120000000000ecc462abce8ab3000000705aacdb02000000f6d1345f1e4c7c5198050000000000008edd2ce31ed721c9ebd22400c073b8c8f8f37d5d1b030000928c67bbdc3f7bbaac8d02007034a6d501000000000000000000381dafaa0300000000fc855992ab5ee795414ec04592f7bd6e927c4c729d6453980900000000009ecb346333e5451ce4050000c0fed85eb7759b71ddd6c758b705000000ecc6d06b91f13905000000000000f072868c737343cccf01c0311a32ee0b0200805d9be5cb674f67855900008ed5b43a00000000000000000000a7e3557500000000806fb8ea75591be3645df6fa90e43a63e3b365611e0000000000f811d38ccd9417495e176701000080bf7291e47daf4f19d76e5d27d95486020000008eca3c0f0713dbbb070000000000002f6fb15567c559008097b5c8d8c719000076619187b5e1e7b55100004ec24575000000000000000000004ec7abea00000000005b6649de26b98ac69afbe22cc99b5e7749de25b94eb229cc0400000000007f669a8783bc5e1767010000801ff5bad76f493e653cbcf2ba32100000007090eee7d0873edab7070000000000002fcb3e5700385d7ef60300f092667958173ec4da700000000000000000000000385aafaa0300000000646c6ef0361a6cedbbf324bf25f990e43ac9bb24ebc23c000000000070cf615e0000001cb3d7bd3e675cbbf531c9b2300f000000b0dfe6799843bf28ce02000000000000a7c03e5700e0de22e3fe1f0000780ef38ce7b95cc5da7000000000000000000000003819afaa030000000027ed2ac9db68747068ce92bce9f5cf241f932c0bf30000000000709a1ce6050000c0a9d95ebb7597f130cb8f4956859900000080fd703f7f3e2439af8d0200000000000027c13e5700e06b1619f7fc0000c08f9a673ccb65116bc30100000000000000000000e024bdaa0e000000009ca4ab24efa2d9c13178d3eb26e3dfe9b2320c000000000047cf615e000000303a4ff24bafdb241f331e6eb9ae8b04000000ec90f973000000000000a8b1c8d853d33c1d00f03543750000000ed2fddaf021ce7101000000000000000000008093f7aa3a000000007052ae92bc8b8607c7e832c9ef496e32fe1d2f2bc300000000007054a67968acec302f000000f8a38b24ef7b7d4a729de4636520000000e045ccf2307f7e591b050000000000004eca90b19fe622c95969120060df9d279927595507010060ef2db6ca33270000000000000000000000e03f5e5507000000004ec2559277199b6771dc2e93fc9ee426e3dff9b2320c000000000007ed2a6353e5d7c539000000e090bceef521c9751f1d7809000000876b9671eefc2ac9456912000000000000382db38cf37457d14b1300f83e5749de56870000602f0d79e8af76569a040000000000000000000000d85bafaa0300000000476d91e44334db3c4597497e4f7293b101c6ba320c00000000000763b1551a2b030000c08f3b4bf2a6d75dc6b57cd7b1960b0000000ec12ce3bcf955928bd224000000000000705aa67998abbbac8d02001cb0a13a0000007b659ef179d322ce6e0100000000000000000000009ee0557500000000e0280d49de45c34dc6ef817f27f96792b74936b5710000000000d843f78d95af929c952601000080e3749ee47daf4f49ae937cac0c04000000fcc134e381c457b12f0f000000000000766d9eb15fe222f6ba02003fef22c92cc9ba360600008566199f35bdcdb8d71b0000000000000000000000e0c9fe561d00000000382ad38c87daff1e87e4f1a537191ba6bdab8d0100000000c09e98657c66bc4ef2af24bfc4815e000000b00baf93fc966493e443c6c3b6010000803a5749ae93fc4fc67fb3db9707000000000000bb31cd385fb7cab8d7f54dec7505009ecfa23a0000003b77ffbc6999e4df49de27392fcc0300000000000000000000001ca8bf5507000000008ec6db24eb8c4d37e16bce92fc9af1fb64284d0200000000408569c6f98455c6c6cabf466365000000a87296e4978c876daf321e8634ad0c04000000276448f231c926c96f495e5786010000000000801333cf385fb7ce385f7751190600385a43750000007666c897cf9b2e0bb300000000000000000000000047e0557500000000e0e00d493e44d34d9eee3cc9ef493e25b9ca78d0220000000000c7eb2ac922c9ebe21c000000c0d75d643c0ce94392eb8c07242d0bf3000000c0319a659c3fbfcab8bf0a000000000000d8adab5e97b531008013f13ac9347a2f03001cab59ac0f0700000000000000000000005ec8abea00000000c0c19a267997e497e21c1caed749d619bf8f3e94260100000000e0b9cd93bc4db24872569c05000000789ab3246f7add655cd7f5310eca040000801f35cd386f7e95e4b2360a0000000000009ca459c6f9bab7b1df1500d8bd45c6bd3900001c8fab8cbfe7bd2ece0100000000000000000000001cb1bf5507000000000ed2906495e497e21c1cbeb324ef932c3336770500000000e070cd92bc4bb24ef2af246fe2302f0000003854e719d776fd4fc6833287ca300000007060e619ff3dbd4ef25b92cbca300000000000007082eee7ecfe9de4d7d8ef0a00d418aa030000f02c66493e24d9645c1ffeba340d000000000000000000000070f4fe561d000000003828d38c8d117ecf78383d3c97cb24ab246fab830000000000f05da649ae922cf37088973904000000382e6f32ae1b5c675ce3352d4d03000000fbe97efe7c95e45f19ff3d7d5619080000000080ffcfdedd1dc595ad091a7e23a3ef33db02b22d000f480f941e405b20c602180ba4b1003c90c602180b445b0063c1a9f1602ed65157d529954a2a0956fe3c4f84e2e8e644bd172282bdf6dadf07c011ba6c7cf3faf99d1d00c04cdbd9010000fc906dbfce577b9bfbe10000000000000000000000c02b59cc0e00000000f6c6596379dedbd9211cac65f5aefad858d80800000000c0ee3aabeeaae7eab63a9f1903000000bc8a93c61dafe7c6b9c0d9cc18000000d811fffafefc74660c0000000000001ca15575996f5e0180ddb3ac36b3230000f82eebeaa671d6f421674d0000000000000000000000c0048bd901000000c05eb8a93e3596cfc34b7bd318c8b1999b0100000000c0bf5855578d33dc4fd545635906000000705c968d73814fd56363e1370000001c9bcbc673b1f7e700000000000030c7aa312bf3b9bacdbc4c0060376d67070000f04d36d55df5545de7ac0900000000000000000000009868313b00000000d869abeaa13120015ed3b2baafdecf0e0100000000a06df5b1fa47f52e4395010000805f9d36167effd2b8efb59e5a030000002f6bdd78fefda5f13c7c3ab5060000000000008ed3babaab9e1bb33297135b0000feca76760000005f75593d3676635ccc4d0100000000000000000000001816b303000000809db5690ce43c9f9bc1917bdb18d8b19a1d02000000007064d6d54de35dc187eacdc41600000060f72d1bf7bd9eaa8f59ae090000c061d9349e779f1acfbfcba935000000000000709cd6d55de3bddd45dedb0100fbe1a4f17b0c0000bb63d598b1f64b755b9d4ead010000000000000000000000f8178bd901000000c04ebaaaee339093dd705a3d37163d0200000000f0b22eab87c6f2aeebc6220c00000080eff1a6fad0b8f775d558e204000000fbe8b2f17c7bdf78de050000000000005edf5975d7f8f6f5626e0a00c0dfb29d1d00004055ebc639d33f1a33d6ec6301000000000000000000000076d2627600000000b05356d5c7eaddec10f817cbc6a2c7abd921000000000007685dbdaf7ea96eabf3a935000000c0a13869dc477c6e2c735a4f6c010000806fb5aa6efaf51dfac9d41a000000000000385e9beaa1fa545d4c2d0100f83197b30300008edca671cef49473260000000000000000000074824cb5000020004944415400600f2c6607000000003b63dd189af0666e067cd5bbea6e760400000000c081b8ecd781ca6fabe5cc18000000e0602d1bcb9c9e1a6711dba935000000f065ebc6774bffa8aef30e1d00000000000066d934ee9cde57e7534b00007e8ed36a353b0200e0085d568f3967020000000000000000000000f6cc627600000000b013ce1a83134e6787c037b868fc7b35740d00000000e0fbadabf7d52fd56d062a03000000afebbcfa503d37963eb907060000c06c9beaa17a6a7cb704000000000000ccb169bcbbbbcff7af00c0e1d9ce0e00003812abc637cccf8d396b76b00000000000000000000000007b67313b0000000098eeb2fa542d2777c0f738ad1eabb3d92100000000007b625b7dac9eaab7792f00000000cc75d258faf45cdd54eb892d0000001ca7cbeaa1baafcea796000000000000c0715b5777797707001cb6edec00008003b76a7cb3fcdcf886f964660c0000000000000000000000c08f58cc0e00000000a6ba6a0c4f807d74d258127936b903000000006057fd7698f287eacdcc18000000802f5856d7d55363f1b8fb60000000bcb4cb7e5d4a7c3eb5040000000000008edbba717ff4a9ba985a0200f0f236b30300000ed46f67ad5d37be5d060000000000000000000000d86b8bd901000000c03477d5bbd911f08396d5a7c6e2480000000000864de33dc03f1ac3944f66c6000000007ca38bc67db0876a3b370500008003b36a7c7ff45cdde63d3a000000000000ccb46e7c07fbd4b83f0a00700c96f95e0600e0675a37ce989e1bb3d696135b0000000000000000000000007eaac5ec00000000608abb0ceae4b0dc36964802000000001cab55e39cf4b1bacf7b00000000607f9d571f1a0ba32ea796000000b0ef56d54de319f3b63a99190300000000000047eef3fbbbc77c070b001ca7edec00008003b06eec5b796a9c312d67c6000000000000000000000000bc84c5ec00000000e055adaa870cebe430dd5657b32300000000005ed9ba7a5f3d37ce494f67c600000000fc44278df38e5f1acbca57536b000000d827abc6b3e473759da5c400000000000030db55dedf01006c66070000ecb17575573d65df0a000000000000000000000070e016b3030000008057b3aa1eaaf3c91df092de35068700000000001cba4df5b13148f96d967501000000876bd95856fe5cbd6f2c98020000802f5955378d67c8ebbc4b07000000000080d92e1befefdee5fd1d00c04975363b020060cfac1bfb279eaa8ba925000000000000000000000000af64313b000000007815abeaa13a9ddc01afe1a231440400000000e0d0acfa7551d77df566660c000000c02b5b566f1b0ba6ee1a0ba7000000a0c6fbf49bc6fbf4ebc6332400000000000030cfa63103f3b63a995a0200b05bb6b3030000f6c4aaf13df15363ff040000000000000000000000c0d158cc0e000000005edcaa31b8f3747207bca68bc64011000000008043b0ae6eaae72cea02000000a87147eca9fad858700e0000c0715af5ebfbf4eb6a39330600000000000068dd9803785f9d4f2d0100d84ddbd90100003beeb777c42fa6960000000000000000000000004cf26fb3030000008017b5aa1eaad3c91d30c3e7812297332300000000007ec0a671c6698032000000c097bdf9e79fffd35846f53033060000805775d578165c4eee00000000000000c6eccbabea7a760800c08e3badd6d5f3dc0c00809df3f97ce92a77c401000000000000000000008023b7981d00000000bc98556311fbe9e40e98e9a2b1881200000000609f5c36cef8ef1be79c000000007cdd79e32ce5a171b6020000c0e1baac9eab77594c0c000000000000bbe0b27aacae27770000ec8bedec0000801d73d5b8237e9d3be20000000000000000000000002d6607000000002fe6ae3a9d1d013be0ba31d416000000006097adfa7580f26d753eb506000000603f9d37ce569e736f0c0000e0d05cf6eb3bf593a92500000000000040d559f59077780000df6b333b000060475c36ee88bfab96534b00000000000000000000000076c8627600000000f022eeaa37b3236087dc3606900000000000ec9a7575d3af03942de802000000f871278d7b63cfb93b060000b0ef36d543e339cf3b75000000000000986fd59879f9a93a9f9b0200b097de347ea7020038569bea3177c4010000000000000000000000be68313b00000000f8e9eeaa8bd911b0836eabedec0800000000807f5a37cef49faaeb6a393306000000e0409d34ee8e3d5797534b000000f85eebeaa1baafcea796000000000000009f5d35ee659a790900f06336b30300002638ebd73be2a7735300000000000000000000000076d7627600000000f0535d6590277ccd5d63300900000000c02c9bc6f0e4a79ce903000000bc9693eab6b130fd726a090000007f65ddf806e8a93a9f5a020000000000007c76d6f83ef65db59c9b02007010b6b30300005ed1ba7147fc53ee88030000000000000000000000fca5c5ec00000000e0a7b96c0cf304fedcb231f8763d3703000000003842978df3c9fb0c4f0600000098e5a4baad9e1be735000000ec8e5575533d56177353000000000000807f5a55efab4ff93e1600e067dace0e00007805ee88030000000000000000000000fc0d8bd901000000c04f71d618ea09fcb565f5b131b00400000000e0a55d56cfd56d167301000000ec8a93c679cd73e3fc06000080b92e1bcf68d78d6f7f00000000000080f9b68df7786f277700001ca26563ae3800c0a1baac1e73471c0000000000000000000000e0bb2d6607000000003f6c5d3d64e8027c8fd3eae3ec0800000000e060adaa9bc652aedbea64660c000000007feaa4717ef3dc5884050000c0ebda349612dfe6fb38000000000000d815ebc68ccb0f798f0700f0922e67070000bc804de36cc9fc35000000000000000000000080bf69313b00000000f821abea63867ac2df715ebd9f1d01000000001c945575533d57d7199c0c000000b02f4e1a8bb09eb3fc130000e035ac1bdfc5dd57a7735300000000000080dfb8aa1e1bb3fa00007859dbd90100003fd1baba6bdc1177b6040000000000000000000000f00316b303000000801ff23e0bfae047bcad2e674700000000007b6fdd38b37faeaeabe5cc1800000000feb693eab671ce7339b5040000e030adaa9beaa97a333705000000000000f88db3eab17a97ef6401005ecb4963660900c0bebb699c2d5d4cee00000000000000000000000038088bd901000000c0df7695010cf033bc6f0ccc0500000000f85eebeaae7aaade662117000000c0a138a96eabe76a3b37050000e0606c1b4b89af678700000000000000bf73537daa4e277700001c23dfad0000fb6cd3f816f73a33d80000000000000000000000007e9ac5ec00000000e06f39abdecd8e8003b1ac3e56abd92100000000c0de585777d5537531b504000000809774527da81e1a4bb4000000f87e678de7aa0f8de72c00000000000060379c558fd5f5ec10008023b69d1d0000f037ac1bfb1dee73471c0000000000000000000000e0a75bcc0e00000000bedbaab1b00ff8794eaabbd91100000000c0ce5b37ce129faa8ba92500000000bca6f3c612ad876a33b5040000607facaaf7d5a7c67315000000000000b01b7efb2eef74720b00c0b13b6ffc7e0600b02f6eaac7eacde40e00000000000000000000008083b5981d000000007cb78fd57276041ca037d5d5ec08000000006027adabbbeaa9ba985a02000000c04ce7d57de32ee77a6e0a0000c04edb56cfd5dbc91d000000000000c0ef6daac7bccb0300d825dbd9010000df60d3b8237e9d7d290000000000000000000000002f6a313b00000000f82e578de5e7c0cb78579dcd8e000000000076c6babaab9eaa8ba92500000000ec92378d33a3bbc61912000000c3ba7aa83e642931000000000000ec9a9beabe3a99dc0100c0ef6d670700007cc5aafa98732500000000000000000000008057b3981d000000007cb3b3eaddec083802778d412800000000c0f15a37ce0a9faa8ba92500000000ecb28beab1b1d0ddbd330000e098ad1acf464fd5f9dc14000000000000e05f9c35ee3b5ecf0e0100e08b36b3030000fec455f55cbd99dc010000000000000000000000705416b303000000806fb2aaee6647c091386d2ccc04000000008ecfba711eff545d4c2d01000000605f2c1b0bdd9f1b8bb80000008ecda67a6c3c1b01000000000000bbe5a6fad498b10700c06e5a56dbd9110000bf71d6b823feaef1bb0a000000000000000000000000af68313b00000000f8263719f809afe96d63792600000000701cd6d55df5545d4c2d01000000605f2d1b8bb89eabcba925000000af63557daceeab93c92d000000000000c0efadabc7ea7a72070000df66333b0000a07147fca6fa94fd28000000000000000000000000d32c6607000000007f6953bd9d1d0147e86363480a0000000070b8d6d55df5545d4c2d01000000e0509c54b7d543968702000087ebb27aaedecccd00000000000000bee0aa7aac4e67870000f0cdb6b3030080a3b7699c295d4fee000000000000000000000000387a8bd901000000c057adaabbd91170a496f9f9030000008043b56e9cff3d5517534b000000003854e7d57df5b1711e0500007008d6d54375dbf8f606000000000000d81dabc6bdc577799f0700b06f4eaab3d91100c051fabc13e5bef13b09000000000000000000000000932d6607000000005f7593210d30d39b6a3b3b0200000000f86956d5fbeaa9ba98dc02000000c07178d3388fba699c4f010000ecababeab13a9f1d02000000000000fcc1a67a6edc5b0400603f6d660700004767db385332930d000000000000000000000060872c6607000000007f6a53bd9d1d017457ad664700000000003f6455dd3486243b7b070000006086ebc6f9d4d5e40e000080ef75563d56efaae5e416000000000000e08fde57f7799f0700b0ef2e670700004763557dac3ee44c09000000000000000000000060e72c6607000000005fb4aaee664700d5189a72373b0200000000f85b56d54df55c5d67483200000000732dab778df3aacdd4120000806f73537daa4e2777000000000000007f74563d566f67870000f0539c56ebd91100c0c1db36be737d33b9030000000000000000000000803fb1981d000000007cd14d75323b02f86f6f1ac3540000000080fd71d958ba755d2de7a600000000c0ef9c54f7d543168b020000bbe9ac5fdfb903000000000000bbe7b2710ff1746e0600003fd96676000070b056d5c7ea43e6b2010000000000000000000000ecb4c5ec00000000e00f36d5dbd911c01fdc3506ab0000000000bb6d5b3d57b7d5c9dc1400000000f8aaf3eaa9bac9fd3400006077dc549faad3c91d000000000000c01fad1a73f16eabe5dc1400005ec07676000070903ecf667b33b9030000000000000000000000806fb0981d00000000fcceaafa383b02f8a26563582f00000000b09b36d543f5a13a995a0200000000dfe7bab1f8eb726e06000070e4ceaac7c6330a000000000000b07b3ebfd3bb981d0200c08b79333b000038289ff79f7c68ec5a000000000000000000000000600f2c660700000000bf7397c10db0cbde54dbd91100000000c0efacab87eabe3a9f5a02000000007fdfb2ba6d9c756da696000000c7e8a6fa549d4eee00000000000000beecaaf14eef64760800002fcefc6300e067d856cf8dfd0a000000000000000000000000ec91c5ec00000000e0bf6d33bc01f6c15db59a1d0100000000b46a9cd73d55e7735300000000e0a739afee73570d0000781debeab1ba9edc010000000000007cd9e7ef69df4dee0000e0f56c670700007bedf379d2876a393705000000000000000000000080bf63313b00000000a87e1de200ecbe657e5e0100000060a65575533d5717534b00000000e0e55c34cec0ae267700000087ebaa7aac4e6787000000000000005f74563de47b5a008063b39d1d0000ecad4de38eb8f3240000000000000000000000803db6981d000000005475572d674700dfec4d06b901000000c00c978dc1c8d7395707000000e0f02dab778d33b1cddc140000e080acaa87c6f38677ef000000000000b09b2e1beff54ee766000030c1b23a9b1d0100ec9df7d57d75323b040000000000000000000000801fb3981d00000000b4addecc8e00bedb5d63612700000000f0f236d563759bc1c8000000001c9fd3c6d2b0bbdc5b0300007eccb67aaece2777000000000000007feeaef14ded7272070000f35cce0e0000f6c6596346dbdbd921000000000000000000000000fc1c8bd90100000070e4568de1a0c0fe59e6e717000000005edaba7aa8eeabd3a9250000000030df45f59c25a40000c0f7fbfc1ddb87c63731000000000000c0ee59578f8dfb8200001cb7cdec0000602f5c35e6b499d1060000000000000000000000704016b303000000e0c8dd65e11fecb337d5767604000000001ca055f5be7aaace27b700000000c02e5956b78d85626773530000803d71563d5617b343000000000000803fb569bcd73b9ddc0100c06e38add6b32300809db5aa3e56efb2ef040000000000000000000000e0e02c6607000000c011db566f6647003fecae31a40500000000f839aeaae7eaede40e00000000d865e7d5a7ea2677d80000803f77d378763899dc01000000000000fcb9abeabe5ace0e010060a76c670700003b69d398d366d7090000000000000000000000c0815acc0e0000008023b5aaee6647003fc5b2fa383b02000000000ec0a63110f95d166c01000000c0b7baae1e1be76b0000009fadaa87c63303000000000000b09b3ecfa57c37b9030080ddb4991d0000ec9cf7d57de6b40100000000000000000000001cb4c5ec0000000038527719ea0087e4bcba9a1d01000000007b6a5d7d6c0c443e999b02000000007be9a471bef6b1b1cc1e0000386edbeab9f1bd0b000000000000b09bd6d5437531370300801df626df890000c3ba7aacde4eee000000000000000000000000e0152c6607000000c011da36063f0187e5a631bc0500000000f836abc6b9da53cecd01000000e06778533d5757933b00008079de571faae5ec10000000000000e04f6daac7ea7472070000bb6f3b3b000098ee3267490000000000000000000000004765313b000000008eccaaba9b1d01bc88657ebe01000000e05b6d1bc390af678700000000c0815956efaa876a3db5040000784debc67bf8b7933b00000000000080afbbacee1bf7fd0000e0af6c66070000d37cde6d729bb324000000000000000000000080a3b2981d0000000047e62ec31de0909d5757b323000000006087adab87ea437532b504000000000edb79f554dd4cee0000005edeb67aac4e6787000000000000005f7557ddce8e000060af6c67070000539c35e6b55d4cee0000000000000000000000006082c5ec000000003822dbeacdec08e0c5dd54ebc90d00000000b06b568db3b3a7ea7c6e0a000000001c95ebeab1b1ac0c0000383c77d5876a39b903000000000000f873abc65dbe8bd9210000ec9d65b5991d0100bcaacbeaa13a9d9b010000000000000000000000c02c8bd9010000007024568d6580c0e15be6e71d000000007e6bdb58aa753d3b04000000008ed469f5a9ba69dc69050000f6dfbaf12efe627207000000000000f075678d777ba7b3430000d85bdbd90100c0abf8bcd3e4b6b1ef0000000000000000000000008023b5981d0000000047e263863cc03139afae664700000000c064ebeaa1fa509d4c2d0100000000aaaeabc76a33b9030000f831dbc6eff6a7b34300000000000080afda34beb5f59d2d00003f623b3b00007871ebc639d2c5dc0c00000000000000000000000076c16276000000001c81abea7c7604f0ea6e1ac35e00000000e0d8ac1ae7634f391f07000000805d7352dd57ef1b67790000c07e795f7da896b34300000000000080afba6cdcd7f36e0f00801f75529dcd8e00005eccb67aac4e6787000000000000000000000000b01b16b303000000e0c0adab9bc90dc01ccbea6e760400000000bcb24d6308f2f5e40e00000000e0ebde36cef236933b0000806fb36afc0eff767608000000000000f097eeaadbd91100001c94cdec0000e045bcaf3e34f61a00000000000000000000000040558bd90100000070e0ee32ec018ed97975353b02000000005ec1bafa58dd5727735300000000806f74d238d37b5fad26b70000007f6e533d57a7733300000000000080bfb06a7c6f7b313b0400808373393b0000f8a956d543f57672070000000000000000000000003b68313b000000000ed855753e3b0298eea65a4f6e00000000809774553d566f668700000000007fcbdbc619df6672070000f04757d57db59c1d020000000000007cd5aa7ac8f7b60000bc8cd3c6ef9c00c0fe3bab9eb3cb040000000000000000000000803fb1981d00000000076a5ddd4c6e0076c3b2ba9b1d01000000002fe0ac7aacde35cec10000000080fd7552dd57ef678700000055ad1adfa3bc9bdc01000000000000fcb5b3eab93a9ddc0100c061dbce0e00007ed865f52973db000000000000000000000000f88ac5ec0000000038507719fa00fceabcba9a1d01000000003fc9aaba690c40b6480b000000000ecbdbeab13a9b1d02000047ecac7aa82e2677000000000000007f6dd378bf67fe2400002f6d3b3b0000f82177d5edec0800000000000000000000000076df6276000000001ca0abea7c7604b0736eaaf5e40600000000f8519beab1ba9edc0100000000bc9cd3ea53e3de1b0000f0bab6d543e3f77200000000000060b75d56f7d57272070000c7e1cdec0000e06f593566b75dcc0e010000000000000000000000603f2c6607000000c08159675937f065cbea6e760400000000fc4dabc6f9d67d75323705000000007825d78da568ebc91d0000702c6eaa0f8d6f5000000000000080dd7655ddce8e0000e0e86c67070000dfe5ac7aae4e2777000000000000000000000000b04716b303000000e0c0dc654120f0e7ce1bc38601000000609f6c1bc38f2f26770000000000afefb47accdd3700007849abc67769d7933b000000000000806f7357bd9b1d0100c051dace0e0000bed965f529fb4b000000000000000000000000f84e8bd9010000007040aeaaf3d911c0cebba9ce664700000000c03758551fab0f197e0c00000000c76c59bd6b9c17ae26b70000c0a159570fd5c5dc0c000000000000e01bdde5fd1e0000f36c66070000dfe4aeba9d1d010000000000000000000000c07efab7d9010000007020d6d5cde4065ed7ffab1efff9e797dffc6ffff2f7cf365ff8fba6f16fe7e46512d951cbc6d098b3c91d00000000f035578d73efe5e40e000000006077bca99eabcbeae3d4120000380c9bc6efd6decd030000000000c0ee5b550fd5e9e40e00008edb4963aef1e3ec1000e08b9c21010000000000000000000000f0c3fe6d76000000001c88bb2c0a3c74ffd518f6f1d018cef5fc9dffff873ff97b8d4122678da5939beafc7be3d83ba7d5cd3fff00000000c02e5937cebc9d5302000000005fb2ac3e54ffab7107ee97a9350000b0bf2eabdbd911000000000000c037593566089e4eee000080aa6d63463600b05bceaa8fd5c9ec10000000000000000000000000f6db6276000000001c80abea7c76042fe2bfaaff51fd4763e0c75563e8c7f34ffeeffcd218487b536daa7faffeb3fadf3ff9bfc36eb96efcbb02000000805d71d5584ee0cc1b00000000f82b6f1b771fdd83030080ef7757ddce8e00000000000000bec959e3bedce9e40e0000f86c3b3b0000f8836de30ce96472070000000000000000000000000760313b00000000f6dcbaba99dcc0cff57fabff59fd476358ecfbeaf9951b7e692ca2dc56ff5efd67f55fafdcc0ebb89b1d00000000008db3ee87ea5db59c5a0200000000ec93d3ea5375353b040000f6c4aaf17efe627207000000000000f06dce1aeff84e27770000c06f9d36e6c50000bbe1aafa90196e00000000000000000000f0ffd9bbffe3b6ce6b51c3efa001a203e95640de0ac45381782a205281d481e80a2c5740b802cb1584ae20520772075207f78f9d4c72ce8d1d80bf16003e4f05ef0c3018ccb7bfbd1600f04856d30100000070e4b61904712a7eabfed23278eba6fa3ad8f2afbeb57ccf2eaaffaa7e1eade1b19db77cdf0000000060cafbea73f5663a0400000000385a3f569faaf5740800001cb08bea2ecfe7010000000000e058fce3199f799300001ca2abe90000a05af648fc381d010000000000000000000000c069594d07000000c0117b9f8581a7e0b7eabfaacb96011f87ecaeda54ffa7fa79b484c7f4a1654031000000003ca775cb99e38f599c05000000003cdcdbea6bcb7d4c0000e07fba6879467f3edc01000000000000ece6b2e5199f77700100385497d30100f0c2adabcfd5f57408000000000000000000000000a767351d0000000047eaa2fa713a8207f9bdfaeffe391cf6987cad36d5ffad7e1b2de1b16ca703000000007851ae5ace19df0c770000000000a7e5acfa6b7533dc010000876453fdade5ff3200000000000070f8362d77e13ce30300e090bdadd6d31100f0425db4ecb7381fee000000000000000000000000e044ada603000000e0486da70378901faad7d5a7e18e87fa5c5d56ff5d7d9f4de181ceab9be908000000004edebae55cf4972ccd02000000009ece8796e56b16a10200f0d2dd54b7d311000000000000c0ce3679c60700c0f1b89c0e008017e8b2e5fdc9f3d90c0000000000000000000000004ed96a3a000000008ed04d06421cab2fd5ff6df90c4fc9a7ea75f5eb70070ff3a1ba988e00000000e0645d555fabb7c31d00000000c0cbf0a6e54cf26ab8030000a66c5bde15010000000000008ec3a6ba9d8e0000803d786703009ed7a6fa6b7536dc010000000000000000000000c0895b4d07000000c091b9c8e2c063f543cbe7f7793ae4897c6b1918f6dfd5f7e116ee6f3b1d00000000c0c959571fab5f32f01800000000785e672d67931fa7430000e019ad5bde5fba9e0e0100000000000076b6a96ea7230000604f57d30100f082dce4fc0800000000000000000000008067b29a0e0000008023b39d0e606fdfabff6a19eaf1127caa2eaa2fd321dccb792fe7bb0a000000c0d3bba83e57efa643000000008017ed5d7557ad873b0000e0a95db4fcf73d1fee0000000000000076f7beba9d8e0000807b38ab2ea72300e005d8561fa623000000000000000000000000783956d30100000070446eb23cf0d87ce99f8b1f5f92af2d83c37e9ecde09e3eb47c6f01000000e0216eaabf55af863b0000000000aadef4cffb8d0000708afef10e93f7cf000000000000e0786cab1fa7230000e001aea60300e084adabcfd5f574080000000000964faef70000200049444154000000000000002fcb6a3a000000008ec445f5613a82bd7c695972fe753663ccb76a53fd3cdcc1fd6ca70300000000385aaf5b861d3bd306000000000ecd59f5d7ea66b80300001edba6ba6bf9cf0b0000000000001c876d753d1d0100000f74351d0000276add7247fc7cb8030000000000000000000000801768351d0000000047623b1dc05e7eae2eaa6fd321076053fd653a82bd9d5737d311000000001c9d4df539c38e0100000080c3f6a16571db7ab80300001ec3a6baadce863b00000000000080dd6dabebe90800007804afaad7d3110070622eaaaf99e7060000000000000000000000c090d574000000001c819b0c8738263fb72c7ee49fb6d55fa623d8db8796013500000000f09facab4fd56d7536dc0200000000b08b37d5e7dc930300e0b87d6c79560f0000000000001c8f6d753d1d0100008fe86a3a00004ec8457597796e0000000000000000000000000c5a4d07000000c081bba83e4c47b0b39fabcd74c481da567f998e606fdbe900000000000ede65f5b97a3bdc0100000000b0af57d5dfaaf7d3210000700fdbeadd7404000000000000b0976d753d1d0100008fec6a3a00004ec4a6e59dc7b3e10e0000000000000000000000005eb8d574000000001cb8ed74003bfb9205e6ffc9b6fa793a82bd9c5737d311000000001cac9beaafd5abe10e000000008087f8b1e58ee37ab803000076b1ae3e55d7d321000000000000c05eb679ce0700c0697a93773200e0a136d5ed740400000000000000000000000054ada603000000e080dd54e7d311ece44b75597d1bee38069beae7e908f6f2a1e5fb0d00000000ffb0aeee5ace8e00000000004ec175cbb9e7c570070000fc997f3caf7f3bdc01000000000000ec67db724f0d00004ed5d57400001cb18fd5ed7404000000000000000000000000fcc36a3a000000000ed445f5613a829d7caf36d5b7e18e63f2befa321dc15eb62d4b4e01000000e0aafa5abd19ee0000000000786ce7d55dcbbd5000003834af5bfeaf9ecf66000000000000007bda56d7d3110000f0c4aea60300e0486dab77d311000000000000000000000000f0af56d30100000070a0b6d301ec6c537d9e8e3832df5a068a7d9f0e6167afaa9be90800000000c67dac7ea9cea64300000000009ec85975db721e0a000087e2a2e5fda5f3e910000000000000602fdbea7a3a0200009ec1e57400001c9975ce8e0000000000000000000000003850abe9000000003840375926782c7eaa3e4d471ca9afd566b881fdbccb20380000008097ea75f5b9e58c0800000000e02578d7722efa7ab80300002eaabbea6cb803000000000000d8cfb6ba9e8e0000806772565d4d4700c09158b7dc117776040000000000000000000000c0415a4d07000000c081b9a83e4c47b0932fd5cd74c491fb54fd341dc15eb62d436d000000007839aeaacfd5f9740800000000c0333b6f391fbd1cee0000e0e5ba6c594c7c369b01000000000000ec695b5d4f470000c033bb9c0e008023b06eb9236eae1b000000000000000000000000076b351d0000000007663b1dc0ce36d5b7e988137053fd3e1dc1ce5eb57c6600000000bc0c1fab5faab3e91000000000802167d55f73770e0080e7b769f92fea993d0000000000001c979bea7a3a020000065c4d0700c0817b5ddd55e7b319000000000000000000000000f0e756d30100000070403e6658c4b1f8a1fa3c1d7122beb52cd4e478bcab2ea723000000007852af5bce40df0d7700000000001c8a0f2d8be1d6c31d0000bc0c9bea763a02000000000000d8dba6e5be190000bc44afaa8be908003850172db3ddec23010000000000000000000000e0e0ada603000000e0405c56efa623d8c997ea663ae2c4dc553f4d47b0976db59e8e00000000e0495c66c03100000000c0bff3a6e5fcd4325500009ed2a6ba9d8e00000000000000f6b6c9b33e0000b89a0e00800374d1b28fe16cb80300000000000000000000000076b29a0e0000008003b0aeb6d311ec6c331d70a26eaadfa723d8d9ab96cf0c00000080d37253fd35038e0100000000fec8abea6fb94f0a00c0d3b8a96ea72300000000000080bd6df2ac0f0000aaaea60300e0c05c547799ed060000000000000000000000c011594d07000000c001b8695966cde1fba1fa3c1d71a2be6599fbb179575d4e4700000000f028d62dc38d3f0c7700000000001c8bdb6adb72be0a00008f619be7f6000000000000708c362d77ca0000803aaf5e4f4700c081b86899ef7636dc010000000000000000000000007b594d07000000c0b0cbeadd74043bf952dd4c479cb8bbeaa7e908f6b2add6d311000000003cc845f5b97a331d02000000007064ae5bee3ebe9ecd0000e0046c5bfe5f02000000000000c7e5aaba9d8e0000800373391d0000076053fdad3a1bee00000000000000000000000080bdada60300000060d0ba65b920c761331df042dc54bf4f47b0b3572d9f1900000000c769d332dcf8d5700700000000c0b13aaf3e5757d32100001cad6d753d1d01000000000000eced22f3240100e0dff18e05002fdda6ba9d8e00000000000000000000000080fb5a4d07000000c0a09bead574043bf9a165b9384fef5bcb50158ec7bbea723a0200000080bd6d33dc1800000000e0319c55bfb4dc0d0600807d6cabebe908000000000000606f17d55dcbfd310000e07f7a3b1d0000833699ef060000000000000000000000c0915b4d07000000c090cbeadd74043bf99285e2cfedaefa693a82bd6cabf57404000000003b59579fabebe910000000008013f3a1e50ea4fb740000ec629b67f7000000000000708c2e5aee8a9d0d770000c021bb9a0e0080019bea763a020000000000000000000000001e6a351d0000000003d62d0b06390e9be98017eaa6fa7d3a829dbd6af9cc00000000386c17d5d7ea7cb80300000000e054bda93eb79cc70200c01fd956d7d311000000000000c0ded6d5a7ea6c3a0400000edcd57400003cb34d753b1d010000000000000000000000008f61351d00000000036eaa57d311ece4879625e23cbf6f2d8356381eefaacbe90800000000fed0a6fa5b166201000000003cb5572de7b19be10e00000ecfbafa545d4f87000000000000007b5b57779925090000bbb89a0e008067b4a96ea723000000000000000000000000e0b1aca603000000e0995d56efa623d8c997ea663ae285bbab7e9a8e602fdb96e1ca000000001c966d061b03000000003cb7db96f3590000a8e57d8bbbeaed7007000000000000b0bf7f3cef3b1fee0000806371565d4c4700c033d864c61b0000000000000000000000002766351d00000000cf689d25d4c7e27b75351d4155efab2fd311ecec557ee7000000000ec9bafa5c5d4f870000000000bc50d72de7b4af873b000098b5aeeeaaf3e10e000000000000e07eb679de070000fbda4c0700c013db54b7d311000000000000000000000000f0d856d301000000f08c6eaa57d311ece4a6fa3adcc03f6da603d8cbdbea6a3a02000000802e5ace392dc3020000000098755e7dae2e873b000098b1aeeef2fc1e0000000000008ed5b665be1a0000b09fcbe9000078429bea763a020000000000000000000000009ec26a3a000000009ec965f56e3a829dfc567d9c8ee07ff85cfd301dc15eb62d0b560100000098b1a9eeaab3d90c0000000000feeeacfa6bf57e3a04008067b56e797e7f3edc01000000000000dccfc7ea7a3a0200008ed479f57a3a02009ec0a6ba9d8e00000000000000000000000080a7b29a0e0000008067b0aeb6d311ece47bcbc00f0ecf4df5653a829d9de5770f00000060ca4dcb50e3b3e10e0000000000fe7f3f569f5aee17030070dad6d55d753edc01000000000000dccfa67a371d01000047ee6a3a00001ed9a665ce1b0000000000000000000000009cacd574000000003c839bead574043bb9a9be0e37f0c736d301ece56d06c4010000003ca775b5ad3e0c770000000000f0e7de5677d5c5700700004f67ddf29fef7cb803000000000000b89f4d753b1d01000027c07c62004ec9266746000000000000000000000000bc00abe900000000786297d5bbe90876f25bf5713a823ff5b9fa613a82bd6c5b96ae02000000f0b4d6d55d753ddc0100000000c06ece5bce752d620500384d772dfff900000000000080e37391b9840000f058de643e3100a76153dd4e47000000000000000000000000c073584d07000000c0135a57dbe90876f2bd65e80787efa6fa321dc1cecef23b08000000f0d42eaaafd5f970070000000000fb39ab7e69b91b0900c0e9d8e6193e0000000000001cab8beaaee57e170000f038aea60300e08136d5ed74040000000000000000000000003c97d574000000003ca18fd5abe9087672537d1d6e60779be900f6f23643e2000000009eca264bb000000000008edd87ea53b59e0e0100e0c1b6d5f57404000000000000702feb96bb5cdedb050080c775391d00000fb0a96ea723000000000000000000000000e039ada603000000e0895c65d9e0b1f8adfa381dc15e3e573f4c47b0976dcb5066000000001ecffb9681c6966001000000001cbfb7d55d7531dc0100c0fd6df33e190000000000001cab75cb1dae57c31d0000708aaea60300e09e362db3de000000000000000000000000e045594d07000000c01358b72c1ce4f07d6f19fcc1f1b9a9be4c47b0b3b3fc2e020000003ca66df5e3740400000000008feabcbacb6256008063b4adaea723000000000000807bfbd872870b0000787c6779570280e3b3a96ea72300000000000000000000000060c26a3a000000009ec0b665201287efa6fa3adcc0fd6da603d8cbdb0c8a0300000078a87575575d0f770000000000f034ceaa5f5aeeb80200701cb6798e0f000000000000c76c9b677e0000f0d42ea70300600f9bea763a02000000000000000000000000a6aca603000000e0915d556fa723d8c96fd5c7e9081ee473f5c374047bd956ebe9080000008023b5aeeeaa37c31d00000000003cbd0fd5a7dcb903003874dbea7a3a02000000000000b8b74d9ef90100c073b89a0e00801d5d55b7d3110000000000000000000000003069351d000000008f68ddb27490c3f7bd65582cc7efa6fa321dc1cecef23b09000000701f17d5d7ea7cb8030000000080e7f3b6ba6b39230600e0f07cacaea723000000000000807bbbaa6ea7230000e0857895f72300387c1799a30f000000000000000000000000ada603000000e0116dabb3e9087672537d1d6ee0f16ca603d8cbdb9681cd00000000ece6b2bacbf93300000000c04b74de7246ecde1d00c061d954efa623000000000000807bbb68991f0900003c9fcbe90000f8131799f70600000000000000000000000055ada603000000e0915c556fa723d8c96fd5c7e9081ed5e7ea87e908f6b2add6d31100000000476053fd35c38c01000000005eb2b3ea97ea66b8030080c5a6ba9d8e00000000000000ee6d5d7dcafbbb0000f0dc36d30100f0072eaabb9c170100000000000000000000004055abe9000000007804eb6a3b1dc14ebe5757d3113c899beacb74043b3bcbef26000000c07ff2beba9d8e0000000000e0607c68b97bb71eee000078c93679960f000000000000c7eeae7a351d0100002fd079de8900e0f05cb49c179d0d77000000000000000000000000c0c1584d07000000c023d866a0c4b1d854dfa62378329be900f6f2b6ba9a8e000000003850dbeac7e90800000000000ece75cb32bcd7b31900002fd2a6ba9d8e000000000000001e645b9d4f470000c00b661e310087645d7dcaae11000000000000000000000000f81f56d301000000f04057d5dbe90876f26bcb00104ed7e7ea87e908f6b2ad5e0f37000000001c9a6d753d1d0100000000c0c13a6fb93379311d0200f0825c541fa7230000000000008007799f7778010060dad5740000fcddbabaab5e0d77000000000000000000000000c0c1594d07000000c003acabed74043bf95e6da623781637d56fd311ecec2cbfa300000000ffb0ae3e67f1150000000000ffd959f5b7dc8f0500780e172d8b89cf863b00000000000080fbbbaa7e9c8e0000007a3b1d00002d33dfeeaaf3e10e0000000000000000000000003848abe90000000078806d160f1e8b4df56d3a8267b3a9be4f47b0b337d5fbe908000000806106190300000000701fb72d779a0100781a172dcff3bd4306000000000000c7eb22f7ac0000e0905c4d0700f0e2dd65e61b000000000000000000000000fca1d57400000000dcd355f5763a829dfc5a7d9a8ee0597dad6e861bd8cf4df57ab80100000060caeb0c320600000000e0feae5bce99d7c31d0000a766ddf24ed2d97408000000000000706f9efb0100c0e1b99a0e00e045db66e61b000000000000000000000000fca9d57400000000dcc3ba65b00487ef7bb5998e60c4c7eab7e908767696df55000000e065baa83e67903100000000000ff3a6e5bcf9623a0400e044acabbbead57007000000000000f0309ff2dc0f00000ecde57400002fd6b6ba9e8e0000000000000000000000008043b79a0e000000807bd85667d311ec64537d9b8e60cca6fa3e1dc1cede54efa723000000009ed1457597f36600000000001ec7ab9673e7abe10e008063b76ef95f753edc010000000000003cccb665be19000070585eb5ccde0180e7f4b1ba9e8e0000000000000000000000008063b09a0e000000803d5d556fa723d8c9afd5a7e908467dad6e861bd8cf4df57ab801000000e0395c5477d5d970070000000000a7e5acfaa57a3f1d020070c43e56e7d311000000000000c0836caaebe9080000e00f6da60300785136d5bbe9080000000000000000000000003816abe900000000d8c3bada4e47b093ef1940c5e263f5db74043b3bcbef2c00000070fa36d5df5ace420000000000e029fc98fb780000f7b1adaea7230000000000008007b9a86ea7230000803f75391d00c08bb1c95911000000000000000000000000ec65351d000000007bf8549d4d47b0934df56d3a8283b1a9be4f47b0b337d5fbe9080000008027b2c9106300000000009ec775f5b95a4f8700001c899b96ff50000000000000c0f15a5777d3110000c07f745ebd9e8e00e0e45d64ee1b000000000000000000000000ec6d351d000000003b7a5fbd998e6027bf569fa62338285f5b9688723c6e32400e000000383d9b0c310600000000e0799d579f5b16ed0100f0c736d587e908000000000000e0c1eeaab3e9080000602757d301009cb48b96b322000000000000000000000000604fabe900000000d8c1ebea66b881dd7c6f591809ffdbc7eab7e9087676566da723000000001ed1a6ba9d8e0000000000e0457ad5b268cf625700807fef2acff4010000000000e0146cabf3e9080000606797d301009cacd72defd49dcd66000000000000000000000000c0715a4d07000000c00eb6192e712c36d5b7e9080ed6a6fa3e1dc1cede54efa723000000001ec1a6ba9d8e0000000000e0453bab7e6939b30600e09f2e5ade1d030000000000008edba6ba9e8e000000f6f2b65a4f47007072d6d5a7ec17010000000000000000000000807b5b4d07000000c07ff0be7a331dc14e7e6d1906027fe46b7533dcc07e6eaad7c30d000000000ff1b1ba9d8e000000000080bfbbadb6d311000007e2a2bacb6262000000000000387617799f1700008ed5e574000027e7ae3a9f8e0000000000000000000000008063b69a0e000000803ff1baba196e6037bf579be9088ec2c7eab7e9087676566da72300000000ee695bbd9b8e000000000080ffe5ba6509df7ab8030060d2bae5b9fed97007000000000000f030ebead374040000706f57d301009c946d753e1d01000000000000000000000000c76e351d000000007f629b2584c762537d9b8ee0686caaefd311ecec4df57e3a02000000604fdbea7a3a020000000000fec09beaae7a3d9b01003062ddf25fc86262000000000000387e9faa57d3110000c0bd5d4d070070323e66f61b0000000000000000000000003c8ad57400000000fc81f72d8b99397c3fb52c8d845d7dad6e861bd8cf4df57ab8010000006057db0c300600000000e0f09d579fab8be910008067f6b1e5bf1000000000000070dc6e32331200008edd5975391d01c0d1db54efa623000000000000000000000000e054aca603000000e0df78dd328c94c3f77b3e2beee763f5db74043b3babb6d311000000003bd856d7d3110000000000b0a3b3eaae65411f00c04bf031cff5010000000000e0145c551fa6230000804771351d00c051bbaa6ea723000000000000000000000000e094aca603000000e0dfd8b62c63e6f06daa6fd3111cad4df57d3a829dbda9de4f4700000000fc896d753d1d0100000000007b3a6b59d0e78e1e0070ea36d5bbe908000000000000e0c15eb7bcd70b00009c86abe900008ed645ce89000000000000000000000000e0d1ada603000000e07f795fbd998e60273f5577d3111cb5af59b67e6c7e6c1906040000007068b6d5f5740400000000003cc08f59d607009caecbea763a0200000000000078149faab3e9080000e0d1bcaa5e4f47007074d62dbb2a9c13010000000000000000000000c0235b4d07000000c0bf785ddd0c37b09bdff359f138b6d5afd311ec653b1d00000000f0bf6cabebe90800000000007804d72d4bfbd6c31d00008fe9a2fa341d010000000000003c8a8fd5f974040000f0e8aea60300382aeb96f7e0ce863b000000000000000000000000e024ada603000000e05f6c3364e2586caa6fd3119c8c4df57d3a829d9d5737d311000000007fb7adaea7230000000000e011bd6959def77a360300e051acab4f79670c0000000000004ec155f56e3a02000078129be900008ecab6655e3d000000000000000000000000f00456d301000000f077ef5b962d73f87e6a598a0d8fe55b06941d9b0fd5c57404000000f0e26dabebe90800000000007802e7d5e7dcd503008edbbae51da457c31d000000000000c0c35db4bcdb0b00009ca6f3967b7f00f09f6cabb7d31100000000000000000000000070ca56d30100000050bdae6e861bd8cdeff9ac781a9faa5fa723d8cb763a0000000078d1b6d5f5740400000000003ca1b3eaaeba1aee0000b8af8f2d0bed01000000000080e3b66e79b7f76cb8030000785ade5f00e03fd964fe1b0000000000000000000000003cb9d574000000006418e931d954dfa62338599beafb74043b3baf6ea62300000080176993e1c50000000000bc0c67d52f2d67e30000c7e426cff6010000000000e054dcb4cc1d0300004edbd574000007edb2ba9d8e000000000000000000000000809760351d000000c08bf7be7a331dc14e7eaaeea6233869dfb260fdd87ca82ea62300000080176593e1c50000000000bc3cb7d5c7e90800801d6d5ade37000000000000008edf55f56e3a020000781697d301001cac8bead37404000000000000000000000000bc14abe9000000005eb4d7d5cd7003bbf93d9f15cfe353f5eb74047bd94e07000000002fc6a6ba9d8e00000000008021ef72670f00387c17d5c7e908000000000000e051bcce9d2500007849ceaaabe908000ecebae58ce86cb8030000000000000000000000005e8cd574000000002fdaa70c9a38169beadb74042fc6a6fa3e1dc1ceceab9be908000000e0e46daadbe908000000000018765dddb52cfd03003834eb96ff2ade1703000000000080d3605e240000bc3c97d301001c9c4f2db3e80100000000000000000000008067b29a0e000000e0c5bac9a08963f153cbf248782edfaacd74047bf9505d4c4700000000276b53dd4e470000000000c08178d372b7773ddc0100f0afd62dff51ce863b000000f87fecddd175db58b6aed17f30013203290332033103310322032b03c111988ec0c8e0d219c8115c3b033b032983f380ee73aabaabcaa0446a01e09c117c63f00112b0f75a000000701e879817090000d768571d00c0a874e9efb301000000000000000000000000ef68511d000000c055da2479ac8e60905f49daea08aed231c9d7ea084ed2550700000000b3b44df2a53a02000000000046669de47bfa73d90000637048ff370a000000000000307dbb241faa230000801237715701805e93645f1d01000000000000000000000000d768511d000000c055eaaa03186c97e4b93a82abd52479a98e60b07592b63a0200000098954d9263750400000000008cd44d92a7580c0b00d47b88c5c40000000000003017ab9817090000d76e571d0040b96d922fd51100000000000000000000000070ad16d5010000005c9d36c9ba3a82413e26f95e1dc1557b4ed254477092c7249bea08000000601636499e922c8b3b000000000060cc96e9dfa75b0e0b0054d925f9541d010000000000009ccd31eef70200c0b5734701e0badda67f470400000000000000000000000014595407000000705536491eab2318e44792b63a02d20fa8f95a1dc149baea0000000060f236499e62b91500000000000cb14cf2ff9234c51d00c0f5d9c41d020000000000009893872477d511000040b97592dbea08004aacd2ef0630030e0000000000000000000000000a2daa03000000b82a5d75008335d501f0074d9297ea08065b2769ab2300000080c95aa57f976c703100000000009ce64b9287ea0800e06af8be0f000000000000f3b249f2a93a020000188d6d750000250ee9e7cc030000000000000000000000008516d5010000005c8d36864d4cc5c724dfab23e00f9e9334d5119ce431fd206a0000008053ac923cc5bb64000000000078ad4f49baea0800e02a74f17d1f000000000000e66295e4581d0100008ccaae3a008077d726d9574700000000000000000000000000c9a23a00000080abb049f2581dc1203fd20f0781b13926f95a1dc149baea0000000060729e92acab23000000000060e2f671860f00b8ac36c97d750400000000000070366d929bea0800006054ee93acaa23007837bbd82702000000000000000000000000a3b1a80e000000e02a74d5010cd65407c03f6892bc544730d83ac9a13a02000000988c2efdfb040000000000e0edf6498eb12c1600383f8b89010000000000605e76493e5447000000a3b4ad0e00e05d6c629f080000000000000000000000008ccaa23a00000080d96b93acab2318e46392efd511f00f9e9334d5119ce4430c9a030000007eaf4bb2af8e00000000008099b94ff2946455dc0100cc87c5c4000000000000302fabf806080000fcbd5d75000017f7eff743cbe20e000000000000000000000000e00f16d501000000ccda26c963750483fc48d25647c000c7249fab233849977e0011000000c05f7948b2af8e000000000080995a27798a737c00c0db594c0c000000000000f3738c6f800000c0dfdb55070070715dfa3b68000000000000000000000000c0882c252b37400000200049444154aa0300000098b5ae3a80c19aea0038419be457750483dda4ffcd00000000fe5393e45375040000000000ccdc3ac953924d710700306d5d2c260600000000008039794872571d0100008cda32ee2200ccd94392fbea08000000000000000000000000e0bf2daa0300000098ad3696124ec5c724dfab23e004cf499aea084ef221c9b63a0200000018956d922fd51100000000007025d6499e62712c00f03a1613030000000000c0bc6cd2cf8b040000f89da63a00808bd826f9541d01000000000000000000000000fcb5457500000000b3b449f2581dc1203f62782cd3f494e473750427e992acaa230000008051d8243956470000000000c09559a63f7fb929ee0000a6651b8b89010000000000606ebaf4e7890000007e67571d00c0d9ddc61c3800000000000000000000000018b5457500000000b3d455073058531d006fd026f9551dc16037e97f33000000e0baad923cc5522b0000000000a8b04cff9e7e53dc01004cc36d2c2606000000000080b96993acab23000080c9b8497f9e1080f938c61c3800000000000000000000000018b5457500000000b3d3c640d2a9f898e47b7504bcc17392a63a82937c48b2ad8e00000000caac923cc5d0620000000000a8b44cf2ffe30c2600f07b1613030000000000c0bc6c923c564700000093b3ab0e00e06cbad82502000000000000000000000000a3b7a80e00000060560c249d8e1f49daea083883a7249fab2338499764551d0100000094e862683100000000008cc597244d750400305a87f8c60f00000000000073b24a72ac8e0000002669571d00c0593449f6d511000000000000000000000000c0ef2daa030000009895ae3a80415e62d934f3d226f9551dc16037e97f33000000e0ba7449eeab230000000000803ff912e78a0180ffd624f9501d010000000000009c559b7e06180000c0a9ee92acaa230078934d9243750400000000000000000000000030cca23a00000080d96893acab2318a44df2bd3a02cee83996a74fcd8724dbea08000000e0dd3449f6d5110000000000c05ffa12e7300180ff633131000000000000cccf36fdec2f000080d7da550700f06aab24c724cbea100000000000000000000000006098457500000000b3b04df2581dc120df628924f3f494e473750427e9d20f2d02000000e66d97e44b75040000000000f08fbe2469aa23008072abf467fd2d2606000000000080f9f8f77740000080b7d8560700f06a5d929bea0800000000000000000000000060b8457500000000936720e974bcc46269e6ad4df2ab3a82c16ed2ff66000000c07c6de2fd3100000000004cc59778af0f00d7ee90645d1d010000000000009c559b7ee6170000c05becaa030078958724f7d511000000000000000000000000c06916d5010000004c5e1b0349a7a24df2b3b8012ee93949531dc1493e24d956470000000017b14a724cb2ac0e01000000000006db27e9aa230080124dfabf0500000000000080f9d8a69ff5050000f056cb24bbea08004eb249f2a93a0200000000000000000000000038dda23a0000008049dbc640d2a9f896e4501d01efe029c9e7ea084ed2255955470000000067f794e4a63a02000000000038d93efdd93e00e07a6c927ca98e00000000000000ce6a15e780000080f3da56070030d82afd2c38000000000000000000000000608216d5010000004c9681a4d3f192a4a98e8077d426f9551dc16037e97f33000000603eba24ebea080000000000e0d5f671561c00aec52ac9b13a0200000000000038bb36fd8c2f00008073d955070030d831c9b23a02000000000000000000000000789d45750000000093d5c640d2a96893fc2c6e80f7f49ca4a98ee0241f926cab2300000080b37848b2af8e000000000000de6c9fa4ab8e00002eae8b3b620000000000003037dbf4b3bd000000cee926c9a63a0280df6a93dc554700000000000000000000000000afb7a80e0000006092b63190742abe253954474081a7249fab2338c931c9aa3a0200000078936d924fd5110000000000c0d9ec9374d51100c0c53c24b9af8e00000000000000ce6a15677e000080cbd9560700f08fb6491eab2300000000000000000000000080b7595407000000303906924ec74b92a63a020ab5497e554730d8329e2f00000030659b24c7ea080000000000e0ecf671be0f00e66893e453750400000000000070766d929bea08000060b69aea0000fed62a66c1010000000000000000000000c02c2caa03000000989c3606924e459be4677103547a4eb2ab8ee024f7f19b010000c014ad92744996c51d0000000000c065ecd37f0b0000e6e1dfdff90100000000008079d926f9501d010000ccda3ac96d7504007fe918b3e0000000000000000000000000601616d5010000004cca3606924ec5b72487ea081881ef493e564770922efd325c000000603abaf483e5010000000080f9daa7ff2600004cdf21bef3030000000000c0dcace27c0f0000f03eb6d50100fc97872477d511000000000000000000000000c0792caa03000000980c0349a7e32549531d0123d226f9511dc160cb78de000000c094b449eeab2300000000008077b18f337e0030754dfa673a000000000000302f0f496eaa23000080abb0ab0e00e04f36493e554700000000000000000000000000e7b3a80e0000006032da18483a156d929fc50d30364d750027b98f41740000003005bb248fd5110000000000c0bbda27e9aa23008057d9243954470000000000000067b7893bbf0000c0fbb9af0e00e07fad921cab2300000000000000000000000080f35a54070000003009db241faa2318e45b2c9284bff23dc9c7ea084ed2a51f7c040000008cd36dfaffdf010000000080ebb38fef040030455d9265750400000000000070765d75000000707576d5010024e9df0bdd544700000000000000000000000000e7b5a80e00000060f4563190742a5e9234d51130626d921fd5110cb68ce70f0000008cd52ac931fdffef0000000000c075dac7393f009892439275750400000000000070766d7c0b040000dedfae3a00803449eeab2300000000000000000000000080f35b5407000000307a6d929bea08066992fc2c6e80b16baa0338c97d0ca303000080313ac4222b000000000020d927e9aa230080dfda26f9501d010000000000009cdd6d9287ea080000e02a6dab0300aedc26fd3c38000000000000000000000000608616d5010000008cda3696134ec5d724c7ea089880ef493e564770922ec9aa3a02000000f85f4d927d75040000000000301afbf467fd0080715ac59d2300000000000098ab2ec9b23a020000b84a374936d5110057ac8bf742000000000000000000000000305b8bea00000000466b158b84a7e22549531d0113d226f9511dc160cb781e010000c0586c927ca98e00000000000046671f67fd0060ac8eb19818000000000000e6a84972571d0100005cb5a63a00e04a1d92acab2300000000000000000000000080cb595407000000305a6d929bea080669923c5747c0c434d5019ce43ec9ae3a02000000aedc2ac9b13a02000000000018ad7d92ae3a0200f893872477d511000000000000c0d9ad921caa23000080abb7ad0e00b842db241faa2300000000000000000000000080cb5a5407000000304adb183c31155f931cab236082be27f9581dc149baf403b3010000801a5d929bea08000000000060d4f6499aea08002049b249f2a93a02000000000000b8884392657504000070f5d6496eab2300aec82af652000000000000000000000000c055585407000000303a064f4cc74b2c7886b76893fca88e60b06592ae3a02000000ae549be4be3a02000000000098842f71c61900aaade2fc3d000000000000ccd536c9be3a020000e05f76d5010057a44b3fab1d00000000000000000000000098b9457500000000a3d3c5e089a968923c5747c0c435d5019ce43e86d2010000c07bdb2679ac8e00000000000026e54b9cd104804a6d9275750400000000000070115d75000000c01f6cab0300aec443fa19ed000000000000000000000000c015585407000000302abb183c31155f931cab236006be27f9581dc149ba24abea08000000b812ab780f090000000000bcce97244d7504005ca16d920fd511000000000000c045b4496eaa23000000fee03e6605035cda26fd7b21000000000000000000000000e04a2caa03000000188d5592ae3a82415e6299339c539be4477504832de37905000000efe598fe7f71000000000080d7f812e79e01e03dadd27feb07000000000000e6e736c96375040000c05fd8550700cc5c17f3e0000000000000000000000000e0aa2caa03000000188d2e064f4c4593e4b93a0266a6a90ee024f7f19b010000c0a53d24b9ab8e00000000000026ef9064531d010057a28bfb6100000000000030575d75000000c0dfd8560700ccd821c9ba3a02000000000000000000000000785f8bea00000000466197e4be3a8241be26395647c00c7d4ff2b13a82931c92dc5647000000c04c6d927caa8e000000000000666199e429fdf70700e0729ab81f0600000000000073b54b72571d010000f03776d5010033b54df2a13a02000000000000000000000000787f8bea00000000caad9274d5110cf2927e992470196d921fd5110cb68ce7170000005cc22ac9b13a02000000000098956592a7249be20e0098abdb2487ea08000000000000e02256f13d10000018b765926d7504c0ccd82102000000000000000000000000576c511d00000040b92efd701fc6af49f25c1d0133b74bf2521dc16077491eaa230000006066ba2437d5110000000000c0ec2c933c25b9adcd008059eae27e18000000000000cc551b777f010080f1db550700cccc21de09010000000000000000000000c0d55a5407000000506a97e4be3a8241be26395647c015f8997e5033d3d1c6327b000000389726de1903000000000097b34c7f267a551d020033f290e4ae3a02000000000000b8884d920fd51100000003ecaa0300666497645f1d01000000000000000000000000d4595407000000506695a4ab8e609097244d75045c9143926fd5110cb68ce7190000009cc326fd7b110000000000804b5a27794a7f9e1d00789b4d924fd511000000000000c0c5b8fb0b00004cc54d92dbea088019b04304000000000000000000000000c8a23a00000080325d9265750483ec923c5747c0956992bc544730d85d9287ea0800000098b82ede19030000000000ef639de4a93a020066a0ab0e000000000000002ea6493f5f0b0000602a76d5010033d0c53c38000000000000000000000000b87a8bea000000004aec92dc574730c8e758ce0c157e26698b1b384d9be4b6b801000000a6aa4db2ae8e000000000000aeca3afd424500e075daf8d60f00000000000073b54a72a88e0000003851531d0030714dec1001000000000000000000000000922caa030000007877ab58f43b15bfd22f93046a1c927cab8e60b0653cdf000000e035b6491eab23000000000080abb48fb37f00f01a9bf8d60f00000000000073d6a69fab0500003025ebf433f00138dd6dfab9f800000000000000000000000000595407000000f0eeba18463a154d92e7ea08b8724d9297ea0806bb4bf2501d0100000013b24affce180000000000a0ca3ecefe01c0a9baea00000000000000e0626e937ca88e00000078a55d7500c04475b14304000000000000000000000000f897457500000000ef6a97e4be3a82413e2779aa8e00f233495bdcc069daf4c3b701000080dfeb92dc544700000000000057ef5392a63a020026a24db2ae8e000000000000002ea6ab0e00000078835d7500c0043d24b9ab8e00000000000000000000000000c663511d000000c0bb59c530d2a9f8957e9924300e8724dfaa23186c19cf3b000000186297e4be3a020000000000e05fbe24d9564700c0c86d923c56470000000000000017b34b72571d010000f006dbea008089b98dbd14000000000000000000000000c07f585407000000f06eba24cbea080669923c5747007fd22479a98e60b0bb240fd5110000003062abf4ef8c010000000000c6e49864531d010023d65507000000000000001775a80e00000078a365925d7504c08474b14304000000000000000000000000f80f8bea00000000dec52ec97d7504837c4ef2541d01fc979f49dae2064ed326b92d6e00000080b13ac6b0620000000000607c96e9cf52dfd66600c028b549d6d511000000000000c0c5b4496eaa23000000ce60571d0030110f49eeaa2300000000000000000000000080f15954070000007071ab245d750483fc4a3f381618a743926fd5110cb68ce71f000000fc15c38a010000000080315b2639a63f070f00f436491eab23000000000000808bb94d7f07180000600eb6d5010013701b7b2900000000000000000000000080bfb1a80e000000e0e2baf44b7c19bf26c9737504f08f9a242fd5110c761703b9010000e08f6e6358310000000000307eeb244fd5110030225d750000000000000070516dcc8c040000e6e326c9a63a0260e4ba781f04000000000000000000000000fc8d45750000000017f590e4be3a82413ec7926598829fe9873c331d6d92dbe206000000188b2e8615030000000000d3b04eff6d0300ae5d9bfeb908000000000000ccd336c9be3a020000e0cc76d5010023f690e4ae3a0200000000000000000000000018af45750000000017739b7e4121e3f72b7e2b989243926fd5110cb64c72ac8e000000801130ac180000000000989a7d9cb306e0ba6d923c56470000000000000017d556070000005cc0ae3a0060a46ee37d10000000000000000000000000f01b8bea000000002ea64bb2ac8e609026c9737504709226c94b750483ad632013000000d7ed36fe37060000000000a6e931fdb94d00b8465d750000000000000070514d92bbea080000800b58a79f7b04c09f75b14304000000000000000000000000f88d45750000000017f1108348a7e27392a7ea08e0643f93b4c50d9ce631c9a63a020000008a7431ac18000000000098ae2f71061080ebd3a65fde0e000000000000ccd32a6699010000f3b6ab0e0018193b44000000000000000000000000804116d5010000009cdd6d0c229d8a5ff15bc1941d927cab8ee0245d75000000001430ac1800000000009883a7249bea080078279b248fd511000000000000c0453d24b9a98e000000b8a06d7500c088dcc65e0a00000000000000000000000060a045750000000067d725595647304893e4b93a0278935d9297ea08065bc78026000000aecb6dfc2f0c0000000000ccc332fd59f955710700bc874375000000000000007051b7491eaa230000002eec3eee0000fcdb21768800000000000000000000000000032daa0300000038ab872477d5110cf231c9537504f066cf499aea084ef29864531d01000000efa48b61c50000000000c07cac931cab2300e0c2dc0f03000000000080f96be30e300000701db6d5010023b04b725f1d010000000000000000000000004cc7a23a00000080b3b94d3f8894f1fb11bf15ccc931c9d7ea084ed25507000000c03bd825b9ab8e00000000000038b3bb380708c07cddc69d2300000000000098bb4d927d75040000c03bd9550700145bc55d28000000000000000000000000e0448bea00000000cea64bb2ac8e6090a63a0038bb26c94b750483ad63a92f000000f366583100000000003067fb240fd5110070015ddc0f03000000000080b93b5407000000bca35d750040b1439c11070000000000000000000000004eb4a80e000000e02c1e92dc554730c8c724dfab2380b37b4ed254477092c7249bea08000000b8902e8615030000000000f3f62916d902302fbbb81f0600000000000073b78def820000c07559c60c60e07a6d93ecab2300000000000000000000000080e9595407000000f066b749dae20686f911bf15ccd931c9d7ea084ed25507000000c0056c93dc5747000000000000bc832e16d902300fab38df0e000000000000d7a0ab0e00000028d05407001470461c00000000000000000000000078b54575000000006fd6255956473048531d005c5c93e4a53a82c1d649daea080000003823c38a0100000000806bb24cff6d6455dc01006f7588fb6100000000000030774d929bea0800008002bbea0080020ff12e0800000000000000000000000078a54575000000006ff290e4ae3a82413e26f95e1d015cdc73fa01d14cc763924d75040000009c8961c50000000000c0b5592739564700c01b6c93ecab23000000000000808b5a2539544700000014b949725b1d01f08e36e9679f03000000000000000000000000bccaa23a0000008057bb4dd2163730cc8ff8ade09a1c937cad8ee0245d75000000009c8161c50000000000c0b5ba4b72a88e008057eaaa03000000000000808b7b48b2ac8e00000028b4ab0e0078475d7500000000000000000000000000306d8bea000000005ead8b21a453d1540700efae49f2521dc160eb246d7504000000bcd1a13a000000000000a0d08738b70dc0f4b4496eaa23000000000000808b5a2579a88e00000028b6ab0e0078270fe9679e03000000000000000000000000bcdaa23a0000008057794872571dc1201f937caf8e00dedd732c419f9ac7249bea080000007825ef8c01000000000092439c0504603a6ed39f6307000000000000e6ed9064591d01000050ec2ec9aa3a02e0c26e93b4c50d000000000000000000000000c00c2caa0300000038d96d0c9e988a1ff15bc1353b26f95a1dc149baea00000000788555bc87040000000000489265faf39b96da0230055d75000000000000007071b749f6d51100000023b1ab0e00b8b043fafb4d000000000000000000000000006fb2a80e000000e0645d0c9e988aa63a0028d72479a98e60b07592b63a020000004e6458310000000000c0ffb94972ac8e0080df6892dc55470000000000000017d756070000008cc8ae3a00e0827649eeab230000000000000000000000008079585407000000709287584e38151f937caf8e00ca3da75f2ccb743c26d95447000000c040db24fbea0800000000008091b94b72a88e0080bfb18ae7140000000000005c836ddc03060000f8a36d7500c08538230e0000000000000000000000009cd5a23a00000080c136493e554730c88f246d7504301ac7245fab2338c931fdc027000000183bc38a010000000000feda87244d750400fc85439265750400000000000070716d75000000c0c82c93ecaa23002ea04d72531d01000000000000000000000000ccc7a23a00000080c1baea00066baa0380d16992bc544730d84d0cfe06000060fc1e92acab2300000000000046ecf03fecddeb71db0c9286d1b79000990199819401998198819081b811188e60e90cb819d819d819d819d8194819ec0fceceeccc77316893685cce89e0a9729524038dee248fd51100f0ffec933c57470000000000000077b74fb2ab8e00000018a17d7500c08d3d2679a98e00000000000000000000000000e6a5a90e000000a0972ec9437504bdbc4ff2b53a02189dd7246d750457798985760000008cd73a97e7c6000000000000fcb55592732eef5600600c4ed501000000000000c020baea00000080913a540700dc981971000000000000000000000000e0e69aea000000007eea31c9bbea087af912cb6281bff631c9ff54477095731cad070000609c4e4956d51100000000000013f090cb3c2000543be6f27b0900000000000098b743925d75040000c0486d72d9bb0f30076d3c0702000000000000000000000000eea0a90e000000e0a7ced501f4f296cb921080bf734cf2a33a82de3649baea08000000f80ffb24cfd51100000000000013f294cb0c270054d9c66c3a0000000000002cc5a93a00000060e4f6d5010037b08ee740000000000000000000000000c09d34d501000000fcad2ec9437504bd7449be173700e3f79aa4ad8ee02a2fb1d40e00008071e9aa0300000000000026e8bf933c564700b058a724abea08000000000000e0eeda249bea08000080916bab03006ec08c3800000000000000000000000070374d75000000007fe931c9bbea087af992cb9210803e3e27f9501dc155ce49d6d51100000090cbe2f55d75040000000000c0447d8e79400086b74ff2541d010000000000000ca2ab0e00000098808724dbea0880dfb04ff25c1d01000000000000000000000000cc57531d000000c05f3a5707d0cb5b92b63a02989c2ec98fea087adbc45270000000eaad939caa23000000000000266c95e4637504008b73ae0e0000000000000006d1e6b2af0a0000809fdb570700fc06fbe000000000000000000000000080bb6aaa03000000f8535d9287ea087ae9927c2f6e00a6e7359745d34cc74b2cb6030000a0d631c9aa3a02000000000060e276b9cc8003c010ba249bea0800000000000060105d75000000c0841caa03007ed131ee880000000000000000000000000077d65407000000f0078f49de5547d0cb9724a7ea0860b23e27f9501dc155ce49d6d5110000002cd2369e1b030000000000dccabb24fbea0800666f9bcb716200000000000060fe8e4936d51100000013f2541d00f00bd649baea0800000000000000000000000060fe9aea00000000fee05c1d402f6f49daea0860f2ba243faa23e86d13cba1000000a871aa0e00000000000098998fb91c8d04807b39255955470000000000000077b78edd54000000bfe2501d00702533e2000000000000000000000000c0209aea00000000fe4d97e4a13a825eba24df8b1b80e97b4dd2564770959724fbea0800000016659fe4a93a020000000000606656493e564700305bfb78d70f0000000000004b71cc651605000080eb1caa0300aeb04ff25c1d010000000000000000000000002c43531d000000c03f3d2679571d412f5f929caa2380d9f89ce4437504573927595747000000b0185d75000000000000c04cede25d0c00f7e1bb23000000000000588675926375040000c0441daa0300aed0550700000000000000000000000000cbd15407000000f04fe7ea007a794bd2564700b3d325f9511d416f9b5816050000c030da24bbea08000000000080197b97e4b13a028059392679a88e0000000000000006714cb2aa8e00000098a855ccf303d3d0c63e3800000000000000000000000060404d750000000049922e0e134e4597e47b7103303fafb92c20623a5e92ecab2300000098bdae3a00000000000060013e2659574700300beb78d70f0000000000004bb14e72ac8e00000098b8b63a00e027d6494ed511000000000000000000000000c0b234d501000000e431c9bbea087af9120b4280fbf99ce44375045739c7c17a000000eea74bb2a98e00000000000058804d2e338100f0bb4e4956d511000000000000c0208ef17e1000dbf6ab8c000020004944415400e077edab03007ea28b6740000000000000000000000000c0c09aea000000001cba9d88b7246d7504307b5d921fd511f4b6c9e5c030000000dcda3a97a3550000000000000ce329e6c501f83d8f499eab230000000000008041f816180000e0361e926cab2300fec236c94b7504000000000000000000000000b03c4d75000000c0c275b92cc761fcba24df8b1b80f97b8de3e753f39ce4501d010000c0ec1c93acaa2300000000000016e694e4b13a0280c93a55070000000000000083f12d300000c0edd8ed0b8cd5b93a0000000000000000000000000058a6a63a00000060c11e93bcab8ea0972f71441218cee7241faa23b8ca39c9ba3a02000080d9d8c6b3630000000000800aab382c09c0af3924d9554700000000000000835827395647000000ccc8be3a00e04f981107000000000000000000000000ca34d5010000000bb58ec3b653f196cb8210802175497e5447d09b83f5000000dc52571d000000000000b0600f494ed511004cca3a7e77000000000000c0921c73d93b050000c06d3ce5328f09302666c401000000000000000000000080324d75000000c04275b91cb665fcda24afd511c0e2bce6f2f387e9784a72a88e00000060f2b6499eab2300000000000016ee25c9be3a0280c93826d95447000000000000008358e7f28e10000080dbb2d71718932e66c401000000000000000000000080424d75000000c002ed733968cbf87d4af2b13a0258accf49de57477095732ecbc5010000e0579daa0300000000000048622610807eb6498ed511000000000000c0608e4956d51100000033b4af0e00f88775cc8803000000000000000000000000c59aea000000808559e772c896f17b4bd25647008bd725f9561d416fabf83d0f0000c0afdb2779aa8e0000000000002049b2899940007eaecb658e1c00000000000098bf75926375040000c04c1daa0300fee11433e200000000000000000000000040b1a63a0000006061ba5c0ed9327e6d92d7ea08805c7e1e311d4fb1f00e0000805fd35507000000000000f06fcc0402f077f6499eab2300000000000080c11c92acaa23000000666a95cb6c2640a5c798110700000000000000000000000046a0a90e00000058907d9297ea087af994e4637504c03f7c4df2be3a82ab9c93acab2300000098947d925d75040000000000007f704eb22d6e00609cbaea0000000000000060505d75000000c0cc1daa0380c53b5507000000000000000000000000002449531d000000b010eb5c0ed7327e6f49daea0880ffd025f9561d416fabf8bd0f0000c075baea00000000000000fe94994000fecc21c9ae3a02000000000000184c9b64531d010000307387ea0060d1cc8803000000000000000000000000a3d154070000002c44170b47a7a24df25a1d01f027daea00aef2144bef000000e8671f0b8b010000000000c66c97e4581d01c0a89caa03000000000000804175d5010000000bb049f2581d012c96197100000000000000000000000060349aea0000008005d82779a98ea0974f493e564700fc85af49de574770957392757504000000a3d75507000000000000f0535d926d710300e3d0e572201d000000000000588636de110200000c655f1d002c5217cf7f000000000000000000000000801169aa03000000666e9de45c1d412f6fb92c870518b32ec9b7ea087a5bc5df01000000fcbd7d925d75040000000000003f65261080e4f2add8b13a020000000000001854571d000000b0206d7500b03866c401000000000000000000000080d169aa0300000066ae4bb2a98ea09736c96b7504400f6d750057794a72a88e00000060b4baea000000000000007adbc5414a80a5eb92acaa2300000000000080c11c629f240000c0901e92acab238045e962461c0000000000000000000000001899a63a00000060c6f6495eaa23e8e553928fd511003d7d4df2be3a82ab9c63f11d0000007f7448b2ab8e000000000000e02a5d926d71030035b6f1ad180000000000002ccdb13a00000060810ed501c0626c63461c00000000000000000000000018a1a63a00000060a6d649ced511f4f296a4ad8e00b85297e45b7504bdade2ef02000000fec8c12a000000000080e95925f9581d01408953750000000000000030a87d925d75040000c0021daa0380c530230e0000000000000000000000008c52531d00000030535d924d7504bdb4495eab23007e415b1dc0559e62f91d000000ffb28f835500000000000053f590cb3703002cc73e9799700000000000006039baea000000808532b3090c611f3f6f00000000000000000000000080916aaa0300000066689fe4a53a825e3e25f9581d01f08bbe26795f1dc155ce49d6d5110000008c42571d000000000000c06f3926d95647003098ae3a0000000000000018d463925d75040000c0821daa0380d9ebaa0300000000000000000000000000fe4a531d0000003033eb24e7ea087a794bd2564700fca62ec9b7ea087a5b25f9581d01000040b97d1cac02000000000098ba557c3b00b0148778cf0f0000000000004b73ac0e00000058b8437500306b66c401000000000000000000000080516baa0300000066a64bb2a98ea0974392d7ea08801b68ab03b8ca2e16930300002c5d571d000000000000c04d980904588653750000000000000030a86d92e7ea0800008085db570700b366461c00000000000000000000000018b5a63a0000006046f6495eaa23e8e54392cfd5110037f235c9fbea08aed2e5b2a01c000080e5d927d9554700000000000070335dcc0402cc599b64531d010000000000000caaab0e000000209b248fd511c02cb531230e0000000000000000000000008c5c531d0000003013eb24e7ea087af9114b6181f9e9927cab8ea0b755fcdd000000b0545d75000000000000003765261060bed6494ed511000000000000c0a0d6499eab2300000048921caa0380d931230e0000000000000000000000004c42531d00000030135d924d7504bdb4495eab2300eea04df2561d416fbb24c7ea0800000006b5cfe5ff83000000000000cccb2e97394e00e6e59864551d010000000000000cca5e28000080f138540700b363461c0000000000000000000000009884a63a0000006006f6495eaa23e8e54392cfd5110077f23549571dc155ba24dbe20600000086d356070000000000007037a724ebea08006e669dcb71620000000000006039bc27040000189787d8dd0bdc8e673f000000000000000000000000c06434d50100000013b74ef2b13a825e7e24e9aa2300eeec94e44b7504bdad929cab2300000018c436c973750400000000000077632610605eba5c7eb603000000000000cb7188f7840000006373a80e0066e314cf7e000000000000000000000000808968aa0300000026ee1c8b26a6a24df25a1d01308036c95b7504bded921cab23000000b8bbae3a00000000000080bb7b4ab2af8e00e0b76d93bc54470000000000000083ebaa03000000f8837d7500300bdb24cfd511000000000000000000000000007d35d5010000001376c8e5c02ce3f721c9e7ea0880817c8f25d853d3e5b2c00a00008079dac6d262000000000080a5382759574700f05bbaea0000000000000060706d924d75040000007ff01433fac0efebaa0300000000000000000000000000aed154070000004cd43a97c3b28cdf8f580a022ccf29c997ea087a5bc5df1500000073d6560700000000000030984d9263750400bf6c9be4b93a02000000000000185c5b1d000000c05fda57070093f61833e2000000000000000000000000c0c434d50100000013754eb2aa8ea09736c96b7504408136c95b7504bdede2603d0000c01cade3ff7b0000000000004bf32e97e396004ccfa93a0000000000000018dc3e971d500000008cd3a13a00983433e2000000000000000000000000c0e434d501000000137448f2541d412f1f927cae8e0028f23d4957dcc075ba24dbe2060000006eeb9864551d010000000000c0e01cb704989e7d7c33060000000000004bd45607000000f0b70ed501c064ed93ecaa2300000000000000000000000000aed554070000004ccc3ac9b93a825e7e24e9aa23008a9d927ca98ea0b755fc9d01000030376d75000000000000002576f1ae08606abaea000000000000006070db24cfd511000000fcad55927d750430495d7500000000000000000000000000c0af68aa0300000026e69ccba21ac6af4df25a1d0130026d92b7ea087adb2539564700000070136d924d7504000000000000654e49d6d51100f4b2cf65961b0000000000005816fb9e000000a6e1501d004cce3e66c401000000000000000000000080896aaa0300000026e490e4a93a825e3e24f95c1d013012df9374c50d5ca74bb22d6e000000e0f73958050000000000b06cab98e104988aae3a0000000000000018dc3a495b1d010000402f87ea0060724ed50100000000000000000000000000bfaaa90e00000098887592737504bd7c8ba39100ffe994e44b7504bdade2ef0e000080a9db2779a88e000000000000a0dc4b2eef8e0018af7d925d750400000000000030b836977d4f0000008cdf26c9b63a02988c36f6c00100000000000000000000000013d654070000004cc439968b4e459be4b53a026084da246fd511f4b64b72ac8e000000e097f93f1d000000000000ffe7541d00c0df3a570700000000000000257c0f0c0000302d87ea006032baea0000000000000000000000000080dfd154070000004cc021c9537504bdbc4ff2b53a0260a4bec7d2a4a9f9ef248fd5110000005c6d1bcf94010000000000f8978724c7ea0800fe549b64531d010000000000000cee10ef0a010000a6e6501d004c421bcf7d00000000000000000000000080896baa03000000466e9de45c1d412fdf9274d5110023774af2a53a82ab9cab03000000b8dab13a00000000000080d1e972f93e018071e9aa030000000000008012be07060000989e5dcce5033fd7550700000000000000000000000000fcaea63a00000060e4ce4956d511f4d25607004c449be4ad3a82de1e62e1150000c094ace359250000000000007fb48a794080b169936caa2300000000000080c13d26d95547000000f04b0ed501c0a8b531230e000000000000000000000000cc40531d000000306287244fd511f4f23ec9d7ea088089f81e07d0a7e65d2e0bcf01000018bf4392557504000000000000a3f412f3800063d2550700000000000000258ed501000000fcb2437500306a5d7500000000000000000000000000c02d34d50100000023b54e72ae8ea0976fb10c04e05aa7245faa23b8cab93a000000805ebaea0000000000000046ed541d004092a44db2a98e0000000000000006b74ef25c1d010000c02fdb570700a3d5c68c3800000000000000000000000030134d75000000c0489d93acaa23e8a5ad0e0098a84392b7ea087a7b48d25547000000f0b7f6b1b818000000000080bfb78b19788031e8aa0300000000000080126d7500000000bf6595cb5e6580ff6f1d33e2000000000000000000000000c08c34d501000000237448f2541d412fef937cad8e0098a8d758a43d35ef923c5647000000f0978ed5010000000000004c4297cb614c006ab44936d5110000000000004009df030300004cdfbe3a00189d63cc880300000000000000000000000033d254070000008ccc3ac9b93a825ebee572b817805ff731c9a7ea08ae72ae0e000000e04f6d933c554700000000000030099b5c0e630250a3ab0e000000000000004a1c7299db00000060da0ed501c0a8ace33b1d00000000000000000000000060669aea00000080913927595547d04b5b1d0030136d92b7ea087a7b8883c900000063d456070000000000003029c724dbea0880056a936caa230000000000008012c7ea000000006e6293e4b13a02188d63dc170100000000000000000000000066a6a90e000000189136c9537504bdbc4ff2b53a0260265e73f91dc874bc8b257900000063e36015000000000000d75825e9aa230016a8ab0e000000000000004a6c93ecaa23000000b899437500300aebd80107000000000000000000000000cc50531d0000003012db24a7ea087af916c722016eed63924fd5115ce55c1d000000c03fb54956d5110000000000004cce73927d7504c082b44936d5110000000000004089ae3a000000809b3a540700a3708c1d70000000000000000000000000c00c35d50100000023718ee51253d1560700cc549be4ad3a82de1e62213a0000c058b4d5010000000000004c56571d00b0205d750000000000000050629de4501d010000c04d3d24d9564700a5d6498ed51100000000000000000000000000f7d054070000008cc031c9ae3a825ede27f95a1d013053af49daea08aef22ec96375040000c0c26de3f932000000000000bf6e97e4501d01b0006d924d750400000000000050e29064551d010000c0cdedab038052c778e603000000000000000000000000cc54531d000000506c9ba42b6ea09f6ff16f05706f1f937caa8ee02ae7ea00000080853b56070000000000003079a7ea008005e8aa030000000000008032be0706000098a743750050661dcf7c00000000000000000000000080196baa030000008a9d93acaa23e8a5ad0e00588836c95b7504bd3dc431650000804a6d750000000000000093b789a39900f7d4e6f2b316000000000000589e7d2e7b9a000000989fa7ea00a0cc316e8c0000000000000000000000000033d65407000000143a26d95547d0cb7f25f95a1d01b010afb91ce8653ade2579ac8e00000058a0369617030000000000701b5d92757504c04c75d5010000000000004099b63a00000080bb3a54070025daea00000000000000000000000000807b6aaa030000008a6ce3f8e0547c4972aa8e0058988f493e55477095731cae070000185a5b1d000000000000c06cac921cab230066a84db2a98e000000000000004aac933c5747000000705787ea0060706dcc880300000000000000000000000033d754070000001439e772e095717bcb65090800c36b73f939cc343c24e9aa2300000016649b64571d010000000000c0acbccbe53d1400b7d355070000000000000065daea00000000eeee501d000caeab0e00000000000000000000000000b8b7a63a000000a0c031c9ae3a825eba24df8b1b0096ea35966f4fcd4b927d75040000c042b4d501000000000000cc52571d0030236d924d750400000000000050e6581d000000c0ddad923c564700836963461c0000000000000000000000005880a63a0000006060db38e83a155f929caa230016ee63924fd5115ce59c645d1d010000b0006d7500000000000000b3f49ccb770f00fcbe63750000000000000050669f64531d010000c020daea0060305d7500000000000000000000000000c0109aea00000080819d93acaa23f8a9b758f80330166d2e3f9799864d2cd1020000b8b7431cac020000000000e07eced5010033b04ff2501d010000000000009469ab0300000018ccbe3a0018441bfbdf000000000000000000000000808568aa0300000006744cb2ab8ea0972ec9f7e206002e5e6311f7d4bcc4e23c0000807b3a5407000000000000306bbb980304f85d5d750000000000000050669de4b93a02000080c13c24d956470077d75507000000000000000000000000000ca5a90e00000018c836964a4cc59724a7ea0800fecdc724ff531dc155ceb92c51070000e0b61cac02000000000060085d7500c084ed93ecaa2300000000000080326d7500000000833b54070077d526d95447000000000000000000000000000ca5a90e00000018c839c9aa3a829f7a8b85af0063754cf2a33a82de3671bc1e0000e01e2c290700000000006008bb24fbea088089eaaa030000000000008052c7ea0000000006673714cc9be73d000000000000000000000000c0a234d5010000000338e672bc95f1eb927c2f6e00e0cfbd2669ab23b8ca4b1caf070000b8350b8c01000000000018caa93a006082f6f11d190000000000002cd93ec9a63a02000080c1ed92acab2380bbd82779a88e000000000000000000000000001852531d0000007067db245d7103fd7c8903bb0063f739c987ea08ae728ee579000000b7b28d05c60000000000000ce721495b1d0130316d750000000000000050aaad0e000000a0cca13a00b88bae3a0000000000000000000000000060684d75000000c09d9d93acaa23f8a9b758f60a30155d921fd511f4b689055b000000b7d25607000000000000b0385d7500c0846c933c57470000000000000065d6f1ce10000060c9f6d501c0cded93ecaa230000000000000000000000000086d65407000000dcd131164a4c4597e47b710300fdbc2669ab23b8ca4b2cd0030000b885b63a00000000000080c5d9c47b2a80bebaea00000000000000a0545b1d00000040a943750070735d75000000000000000000000000004085a63a000000e04eb6b150622abe24395547007095cf493e5447709573927575040000c0843d26d95447000000000000b0485d7500c0046c933c574700000000000000a5daea000000004aad921caa23809bd926d95547000000000000000000000000005468aa03000000eee49ccba218c6ed2d16bd024c5597e4477504bd6de2803d0000c0ef385607000000000000b0589b98bb07f819eff501000000000060d91e933c5447000000506e5f1d00dc4c571d000000000000fc2f7bf776dcc6b5ad61f42f94de0947403802e244402802c211a81981e808044570a80ca00cc8083695019501990190c17968f998dbd6a5c1dbeccb185528cab25dfeca14c06eac853501000000000000a832ab0e00000078019b24a7d51174b2497257dc00c0e3ec6218fad0bc8f43f40000001e6b5d1d000000000000c0a46daa03007a6c1e7bdb01000000000060ea2eaa03000000e8056745c1382c92bcab8e00000000000000000000000000a8f2a63a000000e0992d937ca88ea093eb2497d511003cc94d924f49de1777d0dd36edf5d2aeb80300006048d6498eaa2300008027b94f72f7e0af77496ebff3cfdde6e7eb283ffaf7ba5a7c7bfcca3ced9acef7acbef3cf9e3cba08000080a1384ed2a4dd0708c07fbb88757d00000000000098b279dacf03030000c071dacf693fe533e140bd4d750000000000000000000000000040a537d501000000cf6c5b1d4027fbb4c3730118be4dda83bb8f8b3be8e638edf7eca2b803000060480cac020080feb94f72f7edd7370f7eff47bfee8bbbfcddfd2b578ffc6fccd30e55facbe2dbe39f7f6f9ee4e491ff0d0000006a6ce2331300df636f340000000000004cdb3ac9517504000000bdb14a725b1d013cda3cc9bbea08000000000000000000000000804a6faa030000009ed126c94975049d344976d511003c8b5ddad7f5ff1477d0ddfb243749ae8a3b00000086609e7668150000f07af6690702edfef13569d738f8b95d0effffb4f8f648da814c0f7f6f1efb71000000fae238ed9ecd6d6d0640af34498eaa2300000000000080524d7500000000bdd224b9ac8e001eeda23a00000000000000000000000000a0da9bea0000008067b24cf2a13a824eae935c554700f0ac6e927c4af2beb883eeb649164976b519000000bdb74e72541d01000023749fe42ec96ddaf58a9b6f5f6feb9226edeedb2369bf173fb2faced7799293672f020000e0473669f70002d0da540700000000000000a516494eab23000000e89593b49f8176ee2e0ccf3cc945750400000000000000000000000040b537d501000000cf645b1d4027fb244d7504002f6293649de4b8b8836e8ed25e3fad8b3b000000face7d1300003ccd7d92bb2437dfbefef56b86e9e61f5f1f9a2759a61dfebb78f0eb9317af0200009896e3b47bf2b7b51900bdd0c4fe7500000000000098baa63a000000805e5ac7be7b18a275dab3b30100000000000000000000000026ed4d75000000c033d82439a98ea09326c9ae3a028017b14bfb3aff9fe20eba3b4b7b20d75575080000404fcdd3de3b010000dd7c497297e4f6dbe3a6328657b7cb8fbfe78b6f8fd5835f9fbe78110000c0786d62902e40d2ee5f07000000000000a6ada90e000000a097d6b1ef1e8668531d00000000000000000000000000d0076faa030000009e6899e44375049d5c27b9aa8e00e045dd24f994e47d7107dd6d932c92ec6a330000007a695d1d0000003df635eddad0ed8307fcc8ddb7c7cd3f7e7f9176efcfc3c7f1eb650100000cd671922686e902d3b64a725a1d01000000000000945ac51e74000000beefac3a00385813eff5000000000000000000000000002449de54070000003cd1b63a804ef6690ffd0060fc3649d671d0d3501ca5bd9e5a1777000000f4917b25000068ed93dc24b9fdf6f5a6b08571b9fbf6b87af07bf324cb7f3c4e5e3b0c0000600036f1790a60da9aea00000000000000a05c531d00000040afadf3df9f6306faeda23a00000000000000000000000000a02fde54070000003cc126c94975049d344976d51100bc8a5ddad7fdff1477d0dd591ca8070000f04ff3b4f74b00003045fb24370f1eb7852d4ccf2e7fffd9fbcb3cc932c9eac1d7a3d7cd020000e89de3b4fb35b7b51900251649de554700000000000000a5e669cf4d020000801f71de2e0cc72ae68e00000000000000000000000000fcbf37d5010000008fb44cf2a13a824eaee3801e80a9b949f2317e560fc936ed20e75d6d060000406f18580500c094ecd3aeeffcf5b82d6c81efd9e5ef3f9f7f59a41d42b34abb8fc8301a0000608a9ab4fbff00a666531d00000000000000945b2739aa8e000000a0d756d501406717d501000000000000000000000000007df2a63a000000e091b6d50174b24f3b141780e9d9a43de0fba4b8836e8ed25e5fad8b3b000000fac2fd11000063f735c955929b6f0f189abbb4eb5bdb6f7f3d4f3b44eaaf87754a0000600a4ed3de03ddd46600bcaa79ace903000000000000ce38040000e0d78e932c93dc5687003fb54872561d01000000000000000000000000d027b3ea0000008047d82439a98ea09326c9ae3a0280324d750007398b61ce00000049328f838c0100189f7d92eb24e7497e4b3b686793e4a62e099ed52ec955928bb47fbe7f4bf247924f49ee0bbb0000005edaa63a00e0955d2439aa8e000000000000004a2d929c564700000030084d7500f04b9bea0000000000000000000000000080be9955070000001c6899e44375049d5c27b9aa8e00a0d46d928fd5111c649b645e1d010000506c551d000000cf649fe473923fd2beffbf4ebb16b02b6c82d7b24bbb6fe522ed70e2df939ca7ddcfb2afcb0200007876a7b1be054c4b531d00000000000000945b57070000003018abea00e0a7e649de554700000000000000000000000000f4cdac3a000000e0c7e0f374000020004944415440dbea003ad9c74048005a9b245fab23e8ec28aeb70000000cad020060c8f6493e27f923eda08e26c9556510f4c45dda75b075dae7c6db249f622d13000018878bea008057d22439ae8e00000000000000cad92b0100004057274916d511c00f799f07000000000000000000000000e03b66d50100000007d8a43de885fe6b92ecaa2300e88da63a80839c2559574700000014724f0400c0d0ec937c4ef2479279dab599abca2018809bb4c36c96497e4ff26792ebca2000008027388b81bac034184e0c0000000000002c931c57470000003028ce9482feb2471c000000000000000000000000e03b66d5010000001d2d937ca88ea0934f49aeaa2300e895db241fab2338c836c9bc3a020000a0c03ac9517504000074749de43ced7bfa4dacd5c363dd25b94c7b4ff85bdae7d57565100000c0236caa03005ed82ac949750400000000000050aea90e000000607056d501c0773571e61b000000000000000000000000c077cdaa030000003ada5607d0c97d0cbe05e0fb3649be5647d0d9515c7f010000d3b4ae0e0000805fb84ff26792dfd35ebf6e4b6b607c76699f57eb24bf25394f725d19040000d0d1bb248bea08801774511d00000000000000f482cf0203000070a8b324f3ea08e05f36d501000000000000000000000000007d35ab0e000000e86093e4a43a824e9a24bbea08007aaba90ee0206771583b0000303dabea000000f881cf49de265924b94c7257190313b14bb24dbb66f65b92f324d79541000000bfd0540700bc9045dabdcd000000000000c0b4ad931c57470000003048abea00e0bface27d1e000000000000000000000000801f9a5507000000fcc232c987ea083af994e4a63a02805ebb4df2b13a82836c93ccab230000005ec9320e330600a05feed3aeadfc96a4893579a8b44bbb76b64efb9c3c4ff2b532080000e03b2e62cf1f304e17d501000000000000402facab03000000182cf794d02ff68803000000000000000000000000fcc4ac3a000000e027e649b6d51174729f64531d01c0206c927cad8ea0b3a32457d511000000afa4a90e0000806fbe24394fb248bbb6b2ab8c01fe6597764fd332c9ef493ea5dd3b03000050ed28d6bc80f199c76b1b000000000000d05a57070000003058ee29a13f1649ceaa2300000000000000000000000000fa6c561d000000f0139b2427d51174d224d955470030184d750007394d72511d010000f00a56d50100004cdee724ff93f6da745b5a02747597762d6d91e48f24d79531000000b1df0f189f7592a3ea08000000000000a05c136b870000003cde519c31057db1a90e00000000000000000000000000e8bb5975000000c00fac92bcaf8ea0934f496eaa23001894db241fab2338c826c9a2b8010000e0252d929c5447000030599f93fc9e7698ea6d6d0af0045749d6699fcf1f93dcd7e600000013759cf63d0680b1d8540700000000000000bdb0ae0e00000060f0dc5b42bd793c17010000000000000000000000007e69561d000000f01df324dbea083ab98f4190003cce26c9d7ea083a3b8aeb33000060dc1c660c00c06bdb27f998e4f7244d92bbca18e059dda55d0f5d24f923c975610b0000304d4d7500c033592739ae8e00000000000000cacd939c55470000003078ce99827a4ddab3ae01000000000000000000000000f8895975000000c0776c62b8e050344976d511000c56531dc0414e935c5447000000bc90557500000093b14ff231c922edfe88bbc216e0e55da51d66f57b924f695f030000005eda69ac7f01e360ef3200000000000090b47bb2010000e0a98ed37ece1fa8638f380000000000000000000000004007b3ea000000807f5825795f1d41279f92dc5447003068b7493e564770904d1cb40700008cd3597500000093f039c932edfbedbbda14e095dda51da6b348f26792fbca18000060129aea0080275a2439ad8e000000000000007a615d1d000000c068b8c7843aeb24c7d511000000000000000000000000004330ab0e00000078609e645b1d4127f74936d511008cc226c9d7ea083a3b8aeb350000607c1c280e00c04bfb9ce4f7244d92bbd212a0da2ec965924592f3582b0500005ecebbb4f71e004375511d00000000000000f4c222c9597504000000a3d15407c084d9230e000000000000000000000000d0d1ac3a000000e0814d92e3ea083a6992ecaa2300188d26c9be3a82ce4ee3b02f0000605cd6d50100008cd697246fd3ae85dc9596007db44db24cfb3af1a53605000018a9a63a00e091e6f11a06000000000000b47c0e18000080e7749276af2af0ba1669cfb506000000000000000000000000a0835975000000c037ab24efab23e8e453929bea080046e536c9a63a82836cd21efa0500003006abea00000046e73ec979da6bcd9bd21260086ed2be5ebc4df2a5b4040000189b8bea0080475a2739aa8e000000000000007aa1a90e0000006074d6d50130419bea000000000000000000000000008021995507000000249927d95647d0c97d1cf001c0cbb84cf2a53a82ce8ee2fa0d000018876592e3ea08000046e563daebcc6d7107303c37495649dec6da290000f03c8e9234d511008fb0a90e000000000000007a6191e4a43a02000080d1595707c0c4cce379070000000000000000000000007090597500000040daa182c7d51174d224d9554700305a4d927d75049d9d26b9a88e00000078a25575000000a3f125c9ef69f7405857079ee226edfdeadbb4af2d0000004f619f1f3034abf89c19000000000000d05a5707000000304aabea0098987592a3ea08000000000000000000000000802199550700000093b74af2be3a824e3e25b9a98e0060d4ee926c8a1b38cc26c9a2b8010000e02956d50100000cde3ec979da6bcbbbd212606c6ed2beb6bc4df2a5b404000018b29358130386a5a90e000000000000007aa3a90e00000060948e92acab23604236d501000000000000000000000000004333ab0e000000266d9e645b1d41275fe3700f005ec765922fd511747614d7730000c0b09d550700003068d74916f15e39f0b26e92ac92bc4d725f5a0200000c55531d00d0d122c9bbea08000000000000a01716494eaa2300000018ad5575004cc42ac9717504000000000000000000000000c0d0ccaa0300008049dbc4811143d124d955470030194d927d75049d9d26b9a88e0000007884757500000083b54ff247da6b4a6be9c06bb9493b84f93cd653010080c3bc4b7b3f01d0774d7500000000000000d01b3e070c0000c04b72df09afa3a90e0000000000000000000000000018a259750000003059ab24efab23e8e46392dbea080026e52ec9a6b881c36c62b83d0000303cabea00000006e94bdaf7c4af8a3b80e9daa67d1dfa98645f5a0200000c49531d00d041531d00000000000000f446531d000000c0a81d27595647c0c82d92bcab8e0000000000000000000000000018a259750000003049f324dbea083af99a64531d01c0245d26f9521d416747717d0700000ccfaa3a000080c1f933ed75e4aeb8036097764fcf32c9756d0a000030104d7500c02f34690781030000000000002c929c5447000000307aebea0018b9a63a0000000000000000000000000060a866d5010000c0246d62a0e05034d501004c5a93645f1d4167a7492eaa230000003a9ac7e02a0000bafb9ae47f925c568700fcc35ddae1586fd3be56010000fcc8717c3e00e8b7a63a00000000000000e88d75750000000093e0fe135e56531d000000000000000000000000003054b3ea00000060725649de5747d0c9c724b7d511004cda5d924d710387f9df24cbea080000800e1c1c0e0040579fd3ee75b07e0ef4d94dda75ba8f49f6b5290000408f35d501003fb048725a1d01000000000000f446531d000000c0249ca4ddc70a3cbf26c9717504000000000000000000000000c050cdaa03000080499927d95647d0c9d7249bea0800487299e44b750407d9560700000074b0aa0e00006010fe4c3b146357dc01d0d526c932c97571070000d04fa7315c17e8a78bea00000000000000a03716494eaa23000000988c5575008c54531d000000000000000000000000003064b3ea000000605236498eab23e8a4a90e0080079a24fbea083a3b497bdd070000d067abea0000007a6d9fe46d92cbea108047b84bb24ef247acb3020000ff76511d00f01d4d7500000000000000d01bebea0000000026c57d283cbf4592d3ea0800000000000000000000000080219b550700000093b14ef2be3a824e3e26b9ad8e008007ee926c8a1b38cc8724cbea080000801f582439ae8e0000a0b7bea67d8ffba6b803e0a9aed2de037f2aee000000faa5a90e00f88726c9517504000000000000d01b4d7500000000937296645e1d012373511d000000000000000000000000003074b3ea0000006012e6492eab23e8e46b924d7504007cc765922fd5111c645b1d000000f003abea0000007aeb3aedf5e25d6d06c0b3d9a51df0f336c97d710b0000d00f47499aea0880070c2706000000000000feb24872521d010000c0e4acaa0360649aea0000000000000000000000000080a19b550700000093b04d725c1d41274d750000fc4493645f1d4167274936d511000000dfb1aa0e0000a0973e275927d9558700bc809b24cb249f8a3b0000807e68aa0300be59a6dd730c00000000000090b49feb00000080d7e67e149e4f93e4a83a0200000000000000000000000060e866d5010000c0e8ad939c5547d0c9c724b7d51100f013774936c50d1ce643dac1d20000007db2aa0e0000a0773ea61d82013066bb241749fe48b22f6e0100006a9d2659544700a47daf02000000000000e02fabea0000000026695d1d0023d25407000000000000000000000000008cc1ac3a00000018b579926d75049d7c4db2a98e00800e2e937ca98ee020dbea000000800716498eab230000e895f3582f07a6e52aedfdf1757107000050eba23a0098bc790cfb06000000000000fe364f72561d010000c0241d25595647c0082c929c5647000000000000000000000000008cc1ac3a00000018b56dda4357e8bfa63a00000eb04eb2af8ea0b393249bea080000806f56d5010000f4ca79dabd0d0053b34bbbeefa67acbd0200c05435d501c0e4ade37367000000000000c0dfd6d5010000004c5a531d002370511d000000000000000000000000003016b3ea00000060b4d649ceaa23e8e46392dbea080038c02e0e751b9a0f4996d5110000004956d5010000f4c679926d750440b1cbb4f7ca5f8b3b000080d777147b31815a8613030000000000000fadab030000009834f7a5f0744d7500000000000000000000000000c058ccaa03000080519a27d95647d0c9d7249bea08007884ab24d7d5111c645b1d0000009064551d0000402f9cc7fbd6007fb94d7bbffcb9b8030000787d06ec025516494eaa2300000000000080de982739ab8e00000060d28ed3ee71051ea74972541d010000000000000000000000003016b3ea0000006094b67140c410ec63e02c00c3d6a4fd79c6309c24d9544700000093b6487b48380000d3769e765f03007fdba55d7f3d8f355800009892b318b00bd4b8a80e000000000000007a65551d0000000071663f3c45531d000000000000000000000000003026b3ea0000006074d6698798d27f9b2477c50d00f014bb38986a683e2459564700000093b5aa0e0000a0dc79926d7504408f6dd3de3fdfd766000000afa8a90e0026a9a90e000000000000007a655d1d00000000717f0a8fb548725a1d010000000000000000000000003026b3ea0000006054e649b6d51174f225c9657504003c83ab24d7d5111c645b1d0000004cd6aa3a000080527fc67bd4005ddc2659c63a2c00004c45531d004c4e93e4a83a02000000000000e89575750000000024394d3b6b0138cc457500000000000000000000000000c0d8ccaa0300008051d9c600c121d8c7905900c6a549fbf38d613849b2a98e0000002669591d00004099cf492eab23000664977608f4c7ea100000e0c51d275955470093d2540700000000000000bdb28e332c010000e88f7575000c50531d000000000000000000000000003036b3ea0000006034d649ceaa23e86493e4aeb801009ed32e0ea91a9a0f4996d5110000c0a4cc939c5447000050e23ad611001e6b93e43cc9beb803000078594d750030198b24a7d51100000000000040afacaa03000000e0815575000c4c93e4a83a02000000000000000000000000606c66d5010000c028cc936cab23e8e44b92cbea080078015749aeab2338c836ed75240000c06b585507000050e26bda6117003cde36ed7df5be360300007841ebd8cf07bc8ea63a00000000000000e89d7575000000003ce03e150ee33903000000000000000000000000f00266d5010000c0286c931c5547f04bfb18f408c0b835697fde310c274936d5110000c0642cab0300007875fbb4832e76d5210023709b6491e46b71070000f0328e626028f03a9aea00000000000000a05796498eab23000000e001fbeba1bb4592b3ea0800000000000000000000000080319a550700000083b78e8321866293e4aeb801005ed22e861a0fcdfb24abea080000601256d5010000bcba75ac91033ca75ddafbebebe20e0000e06518b00bbcb47592e3ea08000000000000a057ec57000000a08f56d50130104d7500000000000000000000000000c058cdaa03000080419b27d95647d0c9972497d51100f00aae925c574770906ddaeb4a00008097745a1d0000c0abfa33c94d7504c008edd20e89fe5c1d0200003cbbb3248bea0860d4d6d50100000000000040ef5847040000a08fdcaf42374d7500000000000000000000000000c058cdaa0300008041db2639aa8ee097f671800700d3d2a4fdf9c7301c27d95447000000a3b6ac0e0000e0555d27b9ac8e0018b926c99fd5110000c0b33364177829f324efaa23000000000000805e592439a98e00000080ef388e73abe057d6699f2b00000000000000000000000000bc8059750000003058eb2467d51174b2497257dc0000af6997a4a98ee020ef93acaa23000080d15a55070000f06aee638d00e0b55c2639af8e0000009e55531d008c56531d00000000000000f4ceaa3a000000007e62551d003db7ae0e0000000000000000000000000018b359750000003048f324dbea083af992e4b23a02000a5c25b9ae8ee020dbb4d799000000cf6d591d0000c0ab6992ecaa230026649be4bc3a020000783627b1b606bc8ca63a00000000000000e89d757500000000fc44531d003d364ff2ae3a0200000000000000000000000060cc66d5010000c0206d931c5547f04bfb38e00680696bd2fe3c64188e936caa23000080515a56070000f02a3e25b9a98e0098a06d92b7b1360b000063d1540700a3b34c72521d01000000000000f4ce597500000000fcc44992457504f4d4ba3a0000000000000000000000000060ec66d5010000c0e03471d8e7506c92dc15370040a55d0c521f9af74956d5110000c0a8ccd31e040e00c0b8dda75d2307a0c64dda75be7d6d060000f00c0c11059e5b531d00000000000000f48efd090000000cc1aa3a007aeaa23a0000000000000000000000000060ec66d5010000c0a02c925c5647d0c9757caf002049ae927caa8ee020db24f3ea080000603496d5010000bc8a26c9ae3a0260e26ed30ee2da17770000004f739c645d1d018c4a531d00000000000000f4ceaa3a000000003ab0b71efe6d91e4a43a0200000000000000000000000060ec66d5010000c0a06c931c5547f04bfb18ee08000f6d92dc5747d0d971daef190000c0735855070000f0e23e25b9a98e002049729bf65e7c5fdc0100003c8d21bbc07359c767d1000000000000807fb337010000802138ab0e801ebaa80e0000000000000000000000000098825975000000301817494eab23e8a449b2ab8e00801ed9a5fdf9c870bc4fb2aa8e0000004661591d0000c08bda27d9544700f05f6ed3aef5ed8b3b000080c75b570700a3d1540700000000000000bdb34c725c1d010000001dd95f0fffcd7302000000000000000000000000e015ccaa03000080415824d91437d0cd7592abea0800e8a19b249faa2338c836c9bc3a02000018bc65750000002fea22c9ae3a02807fb94db24ab22fee0000001ee728068a024f374f72561d01000000000000f4ceaa3a000000000e606f3dfc6d9de4b83a02000000000000000000000000600a66d5010000c0206cd30e20a5dff6499aea0800e8b14d92fbea083a3b4efb3d03000078ac791c740c0030665fd3ee6700a09f6ed30e97de17770000008f63c82ef0545e4700000000000080efb196080000c090acaa03a047bcaf03000000000000000000000000f04a66d501000040ef5d2439ad8ea09326c9ae3a02007a6c97f6e725c3f13e0eea0300001e6f591d0000c08bbaa80e00e0976ed3aef7ed8b3b000080c3bd4b32af8e0006cd7bb8000000000000c03fcde36c4b00000086e538ceb282a47d5fe75d7504000000000000000000000000c054ccaa030000805e5b24d91437d0cd7592abea080018809b249faa2338c836ed0165000000875a55070000f062bea47dcf1f80febb4d72511d0100003ccaba3a0018ac459293ea08000000000000a07756d501000000f0084d7500f480cf9800000000000000000000000000bca25975000000d06bdb2447d511fcd23e0eaf0180436c92dc5747d0d971daef190000c0a196d5010000bc98a63a0080836c939c574700000007335c1478ac8bea00000000000000a097ec45000000608856d501d003f68803000000000000000000000000bca25975000000d05b17494eab23e8a449b2ab8e008001d9a5fdf9c970bc8fc3e7010080c32dab03000078119f93dc55470070b06d92f3ea080000e0206749e6d511c020d9f70b0000000000007ccfaa3a000000001ee124c9a23a020a2dd23e0f000000000000000000000000007825b3ea000000a097164936c50d74739de4aa3a020006e826c9a7ea080eb24d32af8e00000006639ee4b83a02008017b1a90e00e0d1b6493e5747000000075957070083b38af57a000000000000e0df96b196080000c070d95bcf9435d501000000000000000000000000005333ab0e0000007a699be4a83a825fdac7811d00f0149b24f7d511747694f63a150000a08b65750000002fe24b92bbea08009ea449f2b93a020000e8cc905de0504d7500000000000000d04babea000000007882557500146aaa0300000000000000000000000000a666561d000000f4ce4592d3ea083a6992ecaa230060c07671f8d5d09c2559574700000083b0aa0e0000e0456caa030078161749be56470000009d9c25995747008362af2f000000000000f03dd61201000018327beb99aaff63ef8ecedac8f6740f7f47cfdcc344003b023411b8260233111c7504ed8ea0e50c7006ea0c700638828333800c208373a1993d7bef6e43c9087d55d2fb5e36bef83d4fcb78a9d6aaf55f26b96847000000000000000000000000009c9a453b0000009894cb24eb7203e37c4d72db8e0080237097e44b3b829d6ce2c23e0000e07597ed000000f6ee7bb6cff50198bfa72443b6bfdb010080e9bb6e0700b3719de4ac1d010000000000004cd2877600000000bc91b3f59ca24fed000000000000000000000000008053b4680700000093b289218173f09c64d58e008023b24ef2d88e60b4b36cd7ad0000002f59b6030000d8bb9b7600007bf594ed19a8e772070000f03a437681b156ed0000000000000060929c3d000000e0180ced0028f05c07000000000000000000000000a060d10e00000026e353920fed08465925796a4700c011798a61c973f3312e2f0300005e76d50e000060af9e936cda1100ecdd7decfb0100c01c7c4c72de8e0026ef3cdbdf1700000000000000ff6a6807000000c01e78279653739de4ac1d01000000000000000000000000708a16ed00000060122e93accb0d8cf335c96d3b02008ed05d922fed0876b2c976d0350000c0bf5ab6030000d8bb4d3b0080777397e4b776040000f02a837681d7f83d01000000000000fc88fd440000008ec15992a11d0107b46a07000000000000000000000000009caa453b00000098844db6979e306dcf71510700bca77592c77604a39d65bb8e050000f857cb760000007bb7690700f0ae6e92fcd18e0000005e34b40380c95bb5030000000000008049ba4c72d18e000000803db96e07c0819c27f9d88e0000000000000000000000000038558b7600000050f729c9877604a3ac923cb52300e0883dc5257073f331fe9f0100007f76d90e000060afbe27b96f4700f0ee3e65fb3b1f0000982667f580975cc6fb69000000000000c05f1bda01000000b047ced6732a7cd6010000000000000000000000008a16ed000000a0ea32c9badcc0385f92dcb62300e004dc27f9dc8e60279b24e7ed080000605286760000007bb569070070104fd90e327a6e870000007fe92c868f023fe6f703000000000000f023f613010000382617d9ce778063e7990e00000000000000000000000040d1a21d000000546db21d22cab43d2659b72300e084ac937c6f4730da59b6eb5a000080ff71d90e000060af6edb01001ccc430c3302008029b35e077e64d50e00000000000000266b6807000000c09e395bcfb1bb4cf2b11d0100000000000000000000000070ca16ed000000a0669de4433b825156499eda1100706256ed0076f2312eef030000b6ce935cb4230000d89bef491eda11001cd45d92cfed080000e02f39a707fc95cb2457ed0800000000000060929649ceda11000000b067ab7600bc33ef8f00000000000000bceca11d0000000000001cbf453b000000a85826f9bd1dc1285f92dcb52300e004dd27f9dc8e60279b24e7ed080000a06ed90e000060af36ed00002ad649beb5230000803f394b32b42380c959b50300000000000080c91ada01000000f00eaee20e5c8edbaa1d00000000000000307177ed000000000000e0e8dd2eda05000040c5a61dc0288f49d6ed08003861eb24dfdb118c7616eb5c00002059b6030000d8abbb76000035d7499edb110000c09f5cb70380c959b50300000000000080c972ce0000008063e53b2fc7ea32c9553b0200000000000060e21e927c6b4700000000000047eb31c9fda25d0100001cdc3a2e7d988b5592a77604009cb8553b809d7c8c0bfc0000e0d49db7030000d89bc724f7ed08006a9e62ef0f0000a6c83a1df847cb2417ed0800000000000060b23eb403000000e09d385bcfb1f2d9060000000000001867dd0e0000000000008ed6a72459b42b000080835a26f9bd1dc1285f92dcb5230080dc27f9dc8e60279b24e7ed080000a06668070000b03777ed0000eaeeb23d470500004cc745b6efa60024c9aa1d000000000000004cd6d00e0000008fc2d4940000200049444154807734b403e09dacda0100000000000000337197e49724cfe50e0000000000e0b8fc92e43649fead1c0200001cd6a61dc0288f49d6ed0800e0efd649ae935c953b18e72cdb07e043b9030000e8b86c070000b03777ed000026e153b67b7ff66b0100603a8624f7ed086012aedb01000000000000c0640ded00000000784767d99ea5bd6d87c01e2de39d6e000000000000805d6cb29da930c4dc2c0038559749fe6f3b020098a53f923cb42300804979c876dfe1e17ffec3bf9542000080c35bc7850f73b14af2d48e0000fec92ac9ff6b4730da87249f92dcb44300008083bb68070000b03777ed0000266395edbf0b67dd0c0000e0bfade27c1eb01d4e6c8f1e000000000000f891eb7600000000bcb3eb24b7ed08d8a3553b0000000000000060861e926cca0d0040d726dbf384e6690000633c271992dc973b00801958b403000080835826f9bd1dc1285f92dcb52300803fb94ff2b91dc14ed6492ecb0d0000c0610ded000000f6e631dbcb560020d9eed7aedb110000c0df5dc5f93cc07062000000000000e0c7ceb33d5f00000000c76c6807c09e5db70300000000000000000066e82ee6690000e37dca761e1700c0ab16ed000000e02036ed0046798c8d610098b27592efed08463b8b753000009c9af3760000007be3c52800fed54d926fed080000e0ef86760050673831000000000000f023433b000000000ee022c9b21d017bb2ccf6330d0000000000000000c0ee6e923cb6230080c97b4cb269470000f3b16807000000ef6e9de4aa1dc128ab244fed0800e045ab76003bf990e4533b0200003818177903001c8fbb76000093b44af2dc8e0000009224d7ed00a0ca7062000000000000e025433b000000000ec4d97a8ec5aa1d0000000000000000003073b7ed000060f236ed0000605e16ed000000e05d2d93fcde8e60942f49eeda1100c0abee937c6e47b0937592cb720300007018cb760000007b73df0e0060921eb2ddff030000fa3eb60380aa553b0000000000000098b4a11d000000000772dd0e803df159060000000000000000781bf3960080d7dcb50300807959b40300008077b5690730ca6392753b0200186d9de47b3b82d1ce625d0c0000a7e2bc1d0000c0de78a11a801fb949f2ad1d01000024319c144e99bfff000000000000c08f9c27b96a47000000c0815c25b96c47c01b2d935cb42300000000000000000066eea11d000000001c97453b0000007837ebb8b8732eae933cb52300809dacda01ece443924fed080000e0dd7d68070000b0178fb1870ec0cb56499edb1100004086760050613831000000000000f092a11d000000000776dd0e80375ab50300000000000000000000000000f8678b76000000f02e96497e6f4730cae724f7ed08006067f7d9fe3bce7cac935c961b000080f773de0e0000606f1eda01004cde43929b7604000060c82e9ca8553b0000000000000098b4a11d000000000736b403e08dbc1f0200000000000000000000000030318b76000000f02e36ed0046f99e64dd8e00007eda3ac9b77604a39dc53a1900008ed9b21d0000c0dedcb70300988575b6e7af0000809e8b2497ed08e0e00c27060000000000005e32b403000000e0c03e26396f47c04f5a66fb7e080000000000000000000000000013b268070000007bb74e72d58e6094553b000078b35592e77604a37d48f2a91d010000bc8bcb760000007bf3d40e006036ecfd010040df753b003828c38901000000000080979cc75d980000009ca6a11d003f69d50e00000000000000000000000000e0cf16ed00000060af96497e6f4730cae724f7ed0800e0cd1e92accb0dec669de4b2dc000000ecdf653b000080bdb96b0700301b7749beb4230000e0c45db70380835ab50300000000000080491bda0100000050e26c3d73e5b30b00000000000000000000000030418b76000000b0579b7600a37c4fb26e4700007b7393e45b3b82d1ce62dd0c0000c768d90e000000002ad6499edb11000070c23eb4038083329c1800000000000078c9d00e0000008012e76c99a365928b7604000000000000000000000000007fb668070000007bb34e72d58e6094553b0000d8bb5592e77604a37d48f2a91d010000ecd5793b000080bdb96f0700302b4fb1f70700006d06edc269309c1800000000000078cdd00e0000008092b36ccfdbc29cacda0100000000000000000000000000fcb5453b000000d88b6592dfdb118cf239c97d3b0200d8bb8724eb7203bb5927b92c37000000fbf3a11d0000c0de3cb50300989d4d926fed0800003861433b003888553b0000000000000098b4f32457ed08000000285ab5036047d7ed0000000000000000000000000000fedaa21d000000bcd979924d3b8251be2759b7230080777393e45b3b82d1ce621d0d000000000000c762dd0e000080136660299c067fd701000000000080970ced000000002873de96395926b9684700000000000000000000000000f0d716ed000000e0cdd649aeda118cb26a070000ef6e95e4b91dc1681fb25d4f030000f336b4030000d89bc7760000b37597e48f760400009ca88b2497ed08e05d194e0c000000000000bc66680700007bf14792ff48f2b7249fcb2d003037ced63327ab760000947d8d672000000000000000000000004cd8a21d000000bcc990e4d77604a37c4e72df8e0000dedd439275b981ddfc9eed506d0000000000fa1eda0100ccdaa724cfed0800003851d7ed00e05df93b0e000000000000bcc61d3e00307fbf2559657b87f243b6f72afed2cb01805972ee96b9f05905e094fd91edbf85fff80ce43f8b3d0000000000000000000000f0278b76000000f0d3ce936cda118cf23ddb978d0180d37093e45b3b829d6cda010000c09b0ced0000000060129eb2ddaf0500000e6f680700efca7062000000000000e0351fda0100c09b7ccb5fbf97b349f2c761530060d69cbb650e96492eda110050f29864f517fffd2ec99783960000000000000000000000c00b16ed000000e0a7ade36287b958b5030080835b25796e4730da55b6eb6b00000000000060de6eb21d160100001cd6d00e00decd65b6676d010000000000007e64680700006f76f3c2cfd6878a008023f021c9793b025e31b40300a068fdc2cf5e7a3e02000000000000000000000007b568070000003f6548f26b3b82513e27b96f47000007f71017adcecdef4996ed080000e0a70ced0000000060329e62af1600001ace62df0e8ed5753b0000000000000098bca11d0000bcd9ed0b3f7b48f278a00e003806cedf3275ab76000014ddbdf0b38724df0f930100000000000000000000002f5bb4030000809d9d27d9b42318e57b92753b0200a8b949f2ad1dc14e36ed00000000000000e0cd3631141300001a867600f02e56ed0000000000000060f286760000f02663dec37978ef08003822d7ed0078c16592ab760400143dbcf2f3a743440000000000000000000000c06b16ed0000006067eb2417ed084659b5030080ba5592e77604a35d65bbde060000e6e5433b00000000989c553b0000004ed0d00e00f6ee3c861303000000000000af5bb6030080377918f167eedf3b02008ec8d00e80175cb70300a0e8db883f73f7de11000000000000000000000030c6a21d000000ec6448f26b3b82517e8b8bd50080ed65aceb7203bbf93d2ec407000000000080b9bbcbb8c1110000c0fe7c4872de8e00f6ca7062000000000000e035cb2467ed0800e0dd3db503006046cee21c2ed3b56a0700000000000000000000000000f0ba453b00000018ed3cc9a61dc128df92dcb4230080c9b8c9767dc07c6cda010000c068433b0000000098ac753b0000004ed0d00e00f6cae06c000000000000e035433b0000388887760000ccccd00e80bf709ee4aa1d0100454fed000000000000000000000000186bd10e000000465b27b96847f0aae724ab7604003039ab6cd709ccc355b6eb6f00000000000060beee927c6b470000c08919da01c0de9c27f9d88e00000000000000266fd90e00000ee2a11d00003373dd0e80bfe07309c0a9bb6f070000000000000000000000c0588b7600000030ca90e4d77604a3ace3423500e0cf1e927c6a47b093dfe3727c00009803eb76000000e025eb760000009c98a11d00eccdd00e0000000000000066616807000000c0045dc4fd584ccf753b00000000000000000000000000807116ed000000e055e74936ed0846f996e4a61d01004cd626c9d776043bd9b403000080579db7030000008049bbcbf65c170000701857b18707c7c27062000000000000e03597492eda1100c041dcb503006086867600fc83f3241fdb110050f6d00e000000000000000000000080b116ed000000e055ebb894730e9e93acda1100c0e4adb25d37300f57d9aec7010080e9ba6c070000000093b76e070000c08919da01c05e5cb70300000000000080c95bb60300000060c256ed00f807433b000026e0a11d000000000000000000000000632dda010000c08b8624bfb62318651d2f1a0300af7b8acbe3e6e6f7b8281f0000a6ecb21d000000004cde5d926fed0800003821d7ed00e0cd862467ed0800000000000060f28676000070508fed00009899abb8238be9f0ae07000000000000000000000000c08c2cda010000c00f9d27d9b42318e55b929b760400301bb749beb623d8c9a61d00000000000000bcc9ba1d00000027646807006f66383100000000000030c6b21d00001cd4433b000066686807c07f73461c0092bb760000000000000000000000008cb568070000003fb44e72d18ee055cf4956ed0800607656d9ae239887ab6cd7e70000c0f47c68070000b057d67700bc97bb24dfda11000070222e925cb6238037319c1800000000000018c37b20000000f032e772998221c9593b0200000000000000000000000080f116ed000000e02f0d497e6d4730ca3ac943b90100989fa724ab76043bf93dc9b21d01000000000000fcb49b760000009c90a11d00fcb465928b76040000000000003079433b000038b8bb760000ccd0c7760024b96e0700c0043cb703000000000000000000000060178b76000000f027e74936ed0846f996e4a61d0100ccd66d92afed0876729bed7a1d00009886cb7600000000302bb7491edb1100007022867600f0d3867600000000000000300bcb7600000000ccc4753b8093e7330800c97d3b00000000000000000000000076b168070000007fb24e72d18ee055cf4956ed080060f656d9ae2b98878b6cd7eb0000c0345cb60300000080d959b7030000e0440ced00e0a7adda01000000000000c02c0ced0000e0e01eda01003053d7ed004eda32669f00000000000000000000000000cccea21d000000fc9321c9afed084659c7a56900c0db3dc590e7b9f9352ecf0700000000784f433b0080a3b649f2d88e000080137091e4b21d01ecec3cc9553b020000000000009885653b000038b887760000ccd4753b809336b403006022eedb010000000000000000000000b08b453b000000f8bbf324b7ed0846f996e4a61d01001c8ddb245fdb11ec6493edfa1d0000e81ada01000000c02c6dda0100007022867600b033c3b101000000000080312e935cb4230080837b6a0700c04c9d2559b6233859ab7600004c84e71a0000000000000000000000cccaa21d000000fcdd26db0b4498b6e7b8680300d8bf55b6eb0ce6e122c9ba1d010000000070a4cedb01001cbd9bd89f05008043306017e667680700000000000000b3e04c00009ca6fb760000ccd8aa1dc0493a4f72d58e008089786a070000000000000000000000c02e16ed0000002049729de4633b8251d6491eca0d00c0f1798a8be4e6e6d718d20d00006de7ed000000de8521a600bcb7a724b7ed0800003801433b00d8d9753b000000000000009805ef7e000000c06e86760027c9f97000f85ff7ed000000000000000000000000d8c5a21d000000e43cc9a61dc1285f93dcb4230080a3759bed7a83f9d864bb9e0700003a0cb7020000007ed6ba1d00000027e02aced8c19c0c49ceda11000000000000c02c0ced0000a0e67b3b000066ea2ac9653b829373dd0e00000000000000000000000000e0e72cda010000403631dc6f0e9e93acda1100c0d15b65bbee601e2e92acdb110000000000476668070070121e927c6b470000c00918da01c068861303000000000000632ddb010040cd533b000066cc795d0e6d680700c0843cb403000000000000000000000060178b760000009cb8eb241fdb118cb28a0bd20080f7f794edba83f9f8352e6303008096cb76000000efe2bc1d00c0c9b869070000c00918da01c068433b0000000000000098856592b376040050e37e6600f879433b8093721dcf7000e01f3db403000000000000000000000060178b760000009cb0f3249b7604a37c4d72db8e00004ec66db6eb0fe66393edfa1e000038ac8b76000000efe2aa1d00c0c9b84df2d88e00008023b76c0700a35cc6b359000000000000601c670100e0b4ddb7030060c63ec6fdb51cced00e00000000000000000000000000e0e72dda01000070c23649ceda11bcea39c9aa1d01009c9c5592c77604a35d2459b72300000000008ec8653b008093b169070000c091fbd00e0046b96e0700000000000000b3b16c07000000c08c39b7cba1f8ac01c0fffad60e0000000000000000000000805d2dda01000070a2ae937c6c4730ca2ac9533b020038394fd9ae43988f5f930ced0800003821e7ed000000ded5653b00809371d30e0000801330b40380570ded00000000000000603696ed0000a0eaae1d00003337b403380997492eda1100000000000000000000000000fcbc453b0000004ed079924d3b8251be26b96d47000027eb2ec99776043bd964bbde070000de9fe1560000c76d68070070329e92fcd18e0000802337b40380577d6c0700000000000000b3f1a11d000000003376dd0ee024f89c01c03fbb6f070000000000000000000000c0ae16ed00000038419b2467ed085ef59c64d58e00004ede3ac9633b82d12eb2fd7f0600000000c0db2cdb01009c944d3b0000008edcd00e005e6438310000000000003096f73d0080fb760000ccdc599cb1e7fd0ded00009898a776000000000000000000000000ec6ad10e00008013739de4633b825156f1023100d0f794edba84f9f8352e690300000000782b034d0138a4bb248fed0800003862decd80691bda01000000000000c06c0ced0000a0ce99400078bbeb7600476f680700c0c4789e0100000000000000000000c0ec2cda0100007042ce936cda118cf235c96d3b0200e0bfdd25f9d28e60279b6cd7ff0000c0fb19da010000bcab8b78ce0ac0616dda01000070a4be2559b523801719800d0000000000008cb56c07000093f0d80e0080991bda011cb56592b37604004ccc7d3b00000000000000000000000076b568070000c009d9c4650d73f01cc3510180e959c745ad737291edfa1f00000000809f37b4030038299b760000001c99c724bf64fb8ce7a99b02bce032db73af00000000000000632cdb0100c0243cb4030060e6aeb23dc70befe1ba1d00000000000000000000000000c0db2dda0100007022ae937c6c4730ca2a86a30200d3f394ed3a85f9f81817b60100000000bcc5d00e00e0a43c24f9da8e00008023f098e4976c87e96eaa25c018433b000000000000009895ab76000000001c89a11dc0d11ada01003041f7ed000000000000000000000000d8d5a21d00000027e03c866ecec5d724b7ed0800801fb84bf2a51dc14e36d97e1f000000f6efb21d0000c0bb1bda01009c1c67c70000e0e77d4bf25fd9eee36daa25c02eaedb01000000000000c06c0ced00006032eeda010070049ce3e5bd7c680700c0043db503000000000000000000000060578b760000009c804d92b37604af7a4eb26a470000bc629de4b11dc16867d97e1f000000f6efb21d0000c0bbbb8a751f0087b5c9f61c19000030ce73922f49fe966448725bad017ec6d00e0000000000000066e3b21d0000000047e4633b80a334b403006082dc230200000000000000000000c02c2dda01000070e4aee30290b95825796a470000bce229db750bf3f131dbef050000000000eccef355000eedb61d00000033f035c97f25394ff229c943b506f8594392b37604000000000000301bcb7600003019f7ed00003812ee5360df867600004c90e7180000000000000000000000ccd2a21d00000047ec3cc9a61dc1285f92dcb623000046bacb76fdc27c6cb2fd7e0000000000c06e867600002767d30e00008089fa9ee49724ff9eed905cef60c0fc19780d000000000000ec62d90e000026e3a91d000047626807707486760000000000000000000000000000fbb168070000c011db24396b47f0aac724eb760400c08ed6d9ae639887b36cbf1f000000fb63c81500c069f898e4bc1d01c049b98bbd580000f81fdf93fc96e46fd9eecf6d62e83c1c93a11d00000000000000ccca8776000030190fed00003812d7ed008eca793cbf0180bf72d70e0000000000000000000000809fb168070000c091fa94e4633b82515631401500989fa76cd731ccc7c7b818100000f6e9ac1d0000c0c178b60ac0a1ddb6030000a0e87b92df92fc2dc932c94d0c9a8763749ee4aa1d01000000000000ccc6b21d00004cca433b00008ec44592cb76044763680700000000000000000000000000b03f8b760000001ca1cb24eb7203e37c4972d78e0000f84977d9ae67988f4db603bf010000000018ef533b008093b369070000c0817d4df25b92bf255926b989e1f270ecaedb01000000000000c0ac2cdb0100c0e43cb70300e04838d7cbbe0ced000098a88776000000000000000000000000fc8c453b0000008ed026c9593b82573d2659b7230000de689dedba867938cbf6fb020000000000e35dc5a053000eeb3ef6610100386ecf49be26f925c9bf673bf0f62606b1c12919da01000000000000c0ac78af0300f857f7ed00003812433b80a331b4030060a21eda010000000000000000000000f03316ed00000038329f927c684730ca2ac9533b0200e08d9eb25dd7301f1f935cb723000060e62edb0100001cdca776000027e7b61d0000007bf698e48f24ff95e43cdb736c9b78af024ed5d00e000000000000006665d90e000000802335b403380ae749aeda11003051dea10400000000000000000000609616ed00000038229749d6e506c6f992e4ae1d0100b02777493eb723d8c926db8bdd0000809f73d90e0000e0e0aee3b92a0087b569070000c01e7c4ff25b92ffc8768f6d95e4b6d8034cc332c9453b020000000000009895653b0000989cbb7600001c89b324433b82d91bda01003061f7ed000000000000000000000000f8198b760000001c914db6977c306d8f49d6ed0800803d5b673b689e7938cbf6fb030000000000e39c25f9d48e00e0a4dcc71e2c0000f3f398e48f24bf24f9f724cb243731600df867433b000000000000009895cbb86713000000ded3753b80d91bda0100000000000000000000000000ecd7a21d00000047e253920fed08465925796a470000bc83553b809d7c8c0b02010000000076f129c9793b028093b26e070000c0085f93fc96e43f925c667b967013ef4d003f36b4030000000000008059b96c0700009374df0e00802332b40398bda11d000013f5ad1d0000000000000000000000003f6bd10e00008023701983eae7e24b92bb760400c03bb94ff2b91dc14e3649cedb110000000000337196e4533b028093729be49776040000fc8b6fd99e15fccf24ff27c975929b18040f8c37b403000000000000805919da0100c0243db50300e0885c653bef027ec679b69f2100000000000000f8ffecddd1711bc7b686d1bf507a073220320032e064406660642065402802d3110837824347602a024111188ac05004e73e0c4f5d1d5fdb1c9200367ab056d51459b41fbe2a3fb8bb31d80d00000000008cc8bbea00000018814d92697504cffa96645d1d01007064ebf497d11b1ad68669fafdc46d71070000b4665e1d000040990f49eee36233004e6793641b9fe90100506b9f7e5dfa58dc01b4af8befc1010000000000002fb3ac0e0000ced2b63a000046a64bff9d567829df810680bfb7ab0e000000000000000000000080d77a571d0000008dfb90e4ba3a824156e92f6d050018bb55922fd5110c7693febfd9a6360300009a32af0e0000a0cc34c93afdfb1a00702adbb8541300008071e8aa0300000000000080e62cab030080b364ce33001cd66dcca6e575baea00003863bbea00000000000000000000000078ad4975000000346c9e645ddcc030bf2479ac8e000038916d928fd511bcc87dfafd050000000000cf7b1f67aa0000000000afd1550700000000000000cdb9aa0e0000ced6b7ea00001891ae3a806675d5010070c6f6d5010000000000000000000000f05a93ea00000068d826c9b43a82677d4bb2ae8e000038b17592afd5110c364dbfbf000000000060984d7500000000004083aeab0300000000000080a674d50100c059db550700c0884c932cab2368ce3cc9557504009cb16d75000000000000000000000000bcd6a43a0000001af5212eec6bc52ac9be3a0200a0c0aa3a8017b94ebfcf0000000000e079ce5401000000005ee6b63a0000000000000068cebc3a0000386b663e03c06179df9797eaaa0300000000000000000000000000388e497500000034689e645ddcc030bf2479ac8e000028b24df2b13a821759c7d07e0000000080a1d671a60a000000003054571d000000000000003467591d00009cb56d7500008ccc6d7500cde9aa0300e0cc3d56070000000000000000000000c06b4daa030000a0419b24d3ea089ef535c9ba3a0200a0d83afdba88364cd3ef370000807f36af0e0000e02c3853050000000018aeab0e000000000000009ab3ac0e0000cedabe3a000046669164561d4153baea00000000000000000000000000008e63521d0000008df990e4ba3a82415631c40c0020e9d745b4e33afdbe030000f87bf3ea000000cec6759275750400000000c0999ba5bfd01a000000000000e02596d50100c059db560700c00875d50134639ee4aa3a0200ced8d7ea000000000000000000000000788b497500000034649e645ddcc0301f63801900c07f6cd3af8f68c73afdfe030000000080e7dd25b9ad8e000000000038635d7500000000000000d09c59926975040070d6f6d50100304266273054571d000067ceb90500000000000000000000004d9b540700004043363140b3055f93acab230000cecc3afd3a89364cd3ef3f000000000018669364591d010000000070a6baea00000000000000a039bea701003c675b1d000023d45507d08cae3a0000cedcae3a000000000000000000000000de62521d0000008df890e4ba3a824156d5010000676a551dc08b5ca7df870000000000f0bc699287c95396e9000020004944415424b3ea10000000008033d4550700000000000000cd595607000000c005ba4a32af8ea0095d7500009cb95d75000000000000000000000000bcc5a43a0000001a304ff2737504837c4cb2ad8e00003853dbf4eb25dab18ea1810000000000435d25794c322bee00000000003827b3248bea08000000000000a039cbea0000a0099fab030060846eab03387bf3f433360080bfb7af0e000000000000000000000080b7985407000040031eaa0318e46b9275750400c0995ba75f37d18669924d750400000000404316491e93cc8a3b0000000000ce45571d0000000000000034695e1d0000000017aaab0ee0ec75d50100d0806d75000000000000000000000000bcc5a43a000000cedc3ac9a23a824156d50100008db84df2bd3a82c1ae937ca88e000000000068c822c97d750400000000c099e8aa0300000000000080265d570700004d78ac0e008011eaaa03387b5d750000000000000000000000000000c735a90e00008033b64c72571dc1201f936cab2300001ab14bb22e6ee065d649e6c50d00000000002df929c943925975080000000040b1ae3a0000000000000068cebc3a000000002ed834de01e69f75d50100d080c7ea000000000000000000000000788b49750000009cb14d7500837c4db2ae8e000068cc7d92cfd5110c368dfd090000fce8ba3a00008026dca41f223e2bee0000000000a8324bb2a88e000000000000009a33af0e00009af1581d000023d5550770b6e649aeaa230000000000000000000000000038ae49750000009ca9755cced78a5575000040a35649be574730d875920fd51100000000008d59a4bffc6c56dc010000000050a1ab0e000000000000009ad45507000000c085bbad0ee06c75d50100d080cfd5010000000000000000000000f05693ea0000003843cb2477d5110cf231c9b63a0200a051bb24ebe2065e669d7ebf0200000000c0708bf4ef16385f05000000002e4d571d0000000000000034695e1d000034c36c6800388e459259750467a9ab0e00000000000000000000000000e0f826d5010000708636d5010cf235c9ba3a0200a071f7493e574730d834f62b0000000000af7195e431c96d710700000000c02975d5010000000000004093e6d501004033f6d5010030625d750067a9ab0e0080066cab030000000000000000000000e0ad26d50100007066d64916d5110cb2aa0e000018895592efd5110cb648bf6f0100000000e065a649fe1567ac00000000c06598c5f7e400000000000080d759560700004df95a1d000023d5550770769649aeaa2300a001fbea00000000000000000000000078ab49750000009c916592bbea0806f998645b1d01003012bb24ebe2065ee62e86fc0300000000bcd65d92c724b3e20e000000008063eaaa030000000000008026cd924cab230080a6ecab030060a46eab03383b5d75000034c29d560000000000000000000000346f521d0000006764531dc0205f93acab23000046e63ec9e7ea085e64531d0000000000d0b0eb24bbb89c030000000018afae3a0000000000000068d2b23a000068ceb63a000046ea2ac9bc3a82b3d25507004023f6d5010000000000000000000000f05693ea0000003813eb248bea089ef53dc96d750400c048add2afb768c322fd3e060000000080d79926f92dc97d9259710b00000000c0a175d501000000000000409396d501004073f6d5010030625d750067a5ab0e008046ecaa030000000000000000000000e0ad26d501000070069649eeaa2318641d5ff2050038965dfaf516edb88b81ff00000000006ff53ec9362eea0000000000c665511d000000000000003469561d000034675b1d000023d6550770369649a6d51100d0885d75000000000000000000000000bcd5a43a000000cec0a63a80413e27b9af8e000018b9fbf4eb2edab1a90e00000000001881ab24bfa53f2777d12a00000000d0baae3a000000000000006856571d000034675f1d000023765b1dc0d9585607004023be55070000000000000000000000c0214caa030000a0d83ac9a23a82677d4fb2aa8e0000b810abf4eb2fdab048bfaf0100000000e0edde27d9c6252e0000000040dbbaea00000000000000a059f3ea0000a0398fd501003062d324cbea08ce42571d00008dd855070000000000000000000000c0214caa030000a0d032c95d750483ace30bbe0000a7b24bbffea21d77314c1000000000e050ae92fc2bfd8569f3d2120000000080d7e9aa0300000000000080665d550700000000ffa5ab0ee02c74d50100d0885d750000000000000000000000001cc2a43a0000000a6daa0318e47392fbea0800800b739f7e1d463b36d501000000000023739de4f724eb24b3da14000000008017b9ae0e000000000000009ab4ac0e00009a657621001c4f571d40b97992abea080068c4ae3a0000000000000000000000000e61521d00000045d64916d5113ceb7b9255750400c0855aa55f8fd18645fa7d0e00000000008775977e28f987e20e000000008021baea00000000000000a059f3ea00000000e0ffe9aa0328d75507004043f6d5010000000000000000000000700893ea00000028b04c72571dc120eb24bbe20600804bb54bf2a13a8217b94bbfdf0100000000e0b0a6497e4e7f76be2a2d0100000000f867de25050000000000005ecbe78d00c06b3d560700c0884d9374d51194eaaa0300a021dbea000000000000000000000000388449750000009cd82cc9a63a82413e27b9af8e0000b8709b24bf5647f0229bea00000000008011bb4af229c92ec9aab40400000000e0af75d50100000000000040b3e6d501000000c05feaaa0328d55507004043f6d5010000000000000000000000700893ea00000038b17592457504cffa9e64551d010040927e5df6bd3a82c116e9f73d00000000001ccf55924f4976f17e0300000000705ebaea00000000000000a059f3ea0000a0598fd5010030725d750065e6e9675c0000c36cab030000000000000000000000e01026d501000070425d92f7d5110cb24eb22b6e0000a0b74fb2aa8ee045ee922cab2300000000002ec055924fe9df7158259955c60000000000176f9e645a1d0100000000000034cbcc1a00e0b5f6d501003072d7d50194e9aa0300a021dfab030000000000000000000000e05026d50100007022b3249bea0806f99ce4be3a020080fff290e4d7ea085e64937e1f0400000000c0f15d25f9946497641de7b300000000408dae3a0000000000000068dab43a000068d6b63a00002e40571d4089ae3a00001ae27c020000000000000000000080d19854070000c089ac935c5547f0acef4956d5110000fca555faf51a6d58a4df070100000000703ad3247749fe48b249b22cad01000000002e4d571d0000000000000034abab0e00009a675621001cd76d750025baea000068c8be3a0000000000000000000000000e65521d00000027d025795f1dc120eb24bbe2060000feda3ec9aa3a8217791f43e60000000000aafc94e44b92c7385f07000000004e63591d00000000000000346b561d0000346f5b1d000023d755077072f32457d51100d010671300000000000000000000008cc6a43a0000008e6c9664531dc120bf26b9af8e0000e01f3da45fb7d18e4d5c0e000000000050e93ac9a724bb24ebf4178400000000001cda2cc9a23a0200000000000068d6b23a000068deae3a0000466e1133662f4d571d00008dd957070000000000000000000000c0a14caa030000e0c8d649aeaa2378d6f724abea0800000659a55fbfd186abf4fb2200000000006a5d25b94bf27b9287784f020000000038ac657500000000000000d0b479750000d0bc5d7500005c80ae3a8093eaaa0300a031dbea000000000000000000000000389449750000001c5197e47d750483ac92ecab23000018649f7efd463bdec7c0390000000080737293e453fa33f7fb24cbda1c000000006004baea00000000000000a069f3ea0000a079bbea0000b8005d750027d55507004063dc7d0500000000000000000000c0684caa030000e048664936d5110cf26b9287ea0800005ee421fd3a8e766cd2ef930000000000381fd324ef937c49b24df2212e7c05000000005ea7ab0e000000000000009ab6ac0e00009ab7ab0e00800bd055077032f32457d51100d0986d750000000000000000000000001ccaa43a0000008e641d03155af03dc9aa3a0200805759a55fcfd186abf4fb240000000000ced322c9cf497e4ff290fe1c7e561904000000003465591d00000000000000346d5a1d0000346f5b1d000017601173082e45571d00008d7167020000000000000000000000a332a90e00008023e892bcaf8e609055927d75040000afb24fbf9ea31def63f81c00000000400b6e927c4af2479287f4e7f12e910100000000fece32c9b43a020000000000006856571d00008c8239d300701a5d750027b1ac0e0080c66cab030000000000000000000000e09026d50100007060b3249bea0806f935c943750400006ff2907e5d473b36e9f74d0000000000b4e126c9a7247fa43f975fc5392f00000000f0df5c4e0c00000000000000009c83cfd501007001baea004ea2ab0e0080c6ecab030000000000000000000000e09026d50100007060eb2457d5113ceb7b92557504000007b14abfbea30d57e9f74d0000000000b4e726c9a7247f2479487f463f2fec0100000000ce43571d0000000000000034adab0e0000000006ebaa0338ba59924575040034665b1d0000000000000000000000008734a90e00008003ea92bcaf8e609055927d7504000007b14fbfbea31def63d82000006dfb5e1d00000067e026c9a724bfa71f9efe21c9b2b40800000000a8e26c10000000000000788b59750000301a8fd50100700116b1971fbbae3a00001ab4ab0e000000000000000000000080439a54070000c081cc926caa2318e4d7240fd51100001cd443fa751eedd8c4b0410000dab5ad0e00008033b348f273922fe907a9df27b9ad0c02000000004e6696fe8c10000000000000e0b596d50100c068ecab0300e04274d5011c55571d00000dda55070000000000000000000000c0214daa030000e040d649aeaa2378d6f724abea0800008e6295e45b7504835da5df470100000000302e5749de27f957fa8bde1ed29fe1cfeb920000000080235a560700000000000000cd9b55070000a3b1ad0e00800bd1550770545d7500003468571d0000000000000000000000008734a90e00008003e892bcaf8e609055927d7504000047b14fbfdea31def63201d00000000c0984d93dc24f994e4f7f417bfddc7d930000000008c49571d00000000000000346f511d00008cc6ae3a00002e44571dc0d1cce2ac06005e63571d0000000000000000000000008734a90e000080379a25d9544730c8af491eaa23000038aac724bf5447f0229bf4fb2a0000000000c66f91e47d92df92fc3bfd7b1c1f922c2ba300000000803771be07000000000000bc85d93300c021edaa0300e0422c624f3f565d75000034e85b750000000000000000000000001cdaa43a000000de689de4aa3a82677d4fb2aa8e0000e024d631a8a5255749eeab230000000000287193e4e7245f92ec936cd2bfdf312f2b02000000005e6a591d0000000000000034cd678e00c0a17dad0e00800bd155077014ce6a00e0e576d5010000000000000000000000706893ea00000078832ec9fbea08065925d9574700007012fbf4eb3fdaf15392dbea0800000000004a4dd39f177f4af27bfaa1ec9bf467fef3a22600000000e09fcd935c5547000000000000004d9b55070000a3630e35009c46571dc05174d50100d0a06d750000000000000000000000001cdaa43a0000005e6996e4a13a8241fe27fe5b01005c9ac724bf5447f0229bb84c000000000080ff7395e4a7249f92fc9e6497fe2c7995645ed40400000000fcb7657500000000000000d03c9f3b020087f6581d000017a2ab0ee028aeab0300a041fbea00000000000000000000000038b44975000000bcd226c9b43a82677d4bf2a13a02008012ebf4eb41da304dbfcf02008016180e090000a77795e4a7249f92fc9e6497fe5c7995645ed40400000000976e591d00000000000000346f561d00008c8eb92000701a8bd8d78f4d571d00008dda56070000000000000000000000c0a14daa030000e0156e93dc544730c82a068601005caa7dfaf520edb849bfdf020080736738240000d4bb4af253924f497e4fb24bf290e44392655d16000000005c94ae3a00000000000000689eef00000087662e08009c4e571dc04175d50100d02877630100000000000000000000303a93ea00000078a159924d750483fc92e4b13a020080528fe9d785b463937edf0500000000002f7195e426c9cf49be24f977facf09d6e92f4971f60c0000000087b7ac0e000000000000009ae77d7f00e0d076d501007041baea000eaaab0e0080463d56070000000000000000000000c0a14daa030000e0853649a6d5113ceb5b92757504000067619d7e7d481ba6e9f75d0000000000f056d749ee92fc96e48f24dbf467d0ab24cbb22a000000001887657ccf0e00000000000078bb45750000303abbea0000b8205d750007755d1d00000dfa5e1d000000000000000000000000c730a90e00008017b84d72531dc120ab24fbea080000cec23efdfa9076dca4df7f0100000000c0212d92fc94e453922fe93f43784cb24e7f31ceaca80b000000005ab4ac0e000000000000009ae73d7e00e058be560700c08558c4fe7e2cbc1f0e00afb3ad0e000000000000000000000080639854070000c040b3249bea0806f925c9637504000067e531fd3a91766c6200210000000000c7354d729de42ec96f49fe48b24b7f46fd214957d405000000002d704131000000000000f0563e7704008e65571d000017a4ab0ee020baea000068d4be3a0000000000000000000000008e61521d000000036d924cab2378d6b724ebea080000ced23afd7a91364cd3efc30000e01cedaa03000080a3b94af253929f93fc96e4df49b6e9cfac5771392e00000000fc87b3320000000000000000e05c6dab0300e08274d5011c44571d00008d72060100000000000000000000c028bdab0e000080016e93dc544730c82ac9be3a020080b3b44fbf5efcadb883e16ed2efc71eaa430000e04f76d5010000c0492d9e9e9f7ef8dbe7f4c3e37f7c00000000e0925c570700000000000000cdebaa030080d1da550700c005e9aa033888ae3a00001ab5ab0e0000000000000000000000806378571d000000cf9825d9544730c82f491eab230000386b8fe9d78def8b3b186e93649e645f9b010000000000ffe5fae9f9d1e724db3f3d000000003046cbea000000000000000000807fb0ab0e00800bb2487fa787d9b1ed9a279956470040a376d5010000000000000000000000700cefaa030000e0199b1896d0826f49d6d511000034619de436c9557107c34cd3efcb6e8b3b0000000000e039d74fcf8fbe26d9fef03c9eb809000000008e61591d000000000000008c42571d00008cd6b63a00002e4c97e4a13a8257ebaa0300a061ce20000000000000000000000018a54975000000fc83db2437d5110cb24ab2af8e0000a009fbf4eb47da71937e7f060000000000ad5924f929c9cf497e4bf2eff443e71f92acd35fe4322b6a0300000080d75a5607000000000000000000fc03b3aa01e0b4bc5fdcb6ae3a00001ae60c020000000000000000000080519a54070000c0df9825d9544730c82f491eab23000068ca63928fd511bcc826fd3e0d0000cec16375000000d0b445929b2477497e4bf247fa41f48f49d6495671410f00000000e7cdf91500000000000070083e7b04008ee9737500005c90ae3a8037e9aa0300a051ce1e000000000000000000000018ad77d5010000f0373649a6d5113ceb5b9275750400004d5a27b94db228ee609869fa7dda6d710700000000001cc334c9f5d3f3a3cf49764fcf63926d92fd09bb00000000e0affcf91c0b000000000000e035ccfc04008e6917ef3a01c0a9f87f6ebb6649aeaa2300a051e6000100000000000000000000305aefaa030000e02fdc26b9a98e6090557c19170080d75b25f9521dc16037493e24b9af0e01000000008013b9ceff5dd673f7f4f37b926d92c7f417e8ed9e7e07000000805358560700000000000000a330af0e0000466f571d000017a68befbdb7a8ab0e0080866dab030000000000000000000000e058de55070000c09fcc926caa2318e49718420200c0db6c937c4c72571dc260eb240f3110180000000080cb354d72fdf4fce86bfaf3f3edd3f39fdf01000000e09096d501000000000000c028ccab030080d1f3fd3a0038ad2eee8e6851571d00000ddb57070000000000000000000000c0b1bcab0e0000803fd924995647f0acaf49d6d51100008cc23ac96d92457107c34cd3efdbbada0c0000c8d7d847000000e765f1f4dcfce9ef9f93ec9e9ec71f7e0700000080d79857070000000000000000000cb0ab0e00800bd35507f02a5d750000346c5b1d000000000000000000000000c7f2ae3a0000007e709be4a63a82415649f6d51100008cc62ac997ea0806bb4ef221c97d7508000017cd19350000d08aeba72749ee7ef8fbe7f417f0ed923cfef03b00000000fc93ae3a000000000000001885ae3a000018bd6d7500005c98ebe7ff15ced0a23a00001ae6ec010000000000000000000080d19a54070000c09359924d7504837c8c2fe002007058dbf4eb4cdab14e322f6e000000000080965d27f929c95d92df92fc9ee4df491ed3bf47b54e7f21f0bca00d00000080f3b5ac0e00000000000000000018e85b7500005c18ef1ab7a5ab0e0080c6edab030000000000000000000000e058de55070000c0938724d3ea089ef535c9ba3a020080515a27b94db228ee609869924d0cba0300a08e41910000c0585d3f3d4972f7c3df3f27d93d3ddb1f7e020000007039e6f11d3c000000000000e03096d50100c045d825b9aa8e00800bd2c577d05bd255070040c33e57070000000000000000000000c031bdab0e000080241f925c574730c8aa3a000080515b25f9521dc160d7e9f773f7d52100005ca46d929bea0800008013bace5fbf63f535fd257edba79fbb248f276a02000000e0b496d501000000000000c068ccaa0300808bf018b3c701e094ba9813db92ae3a00001ab6af0e000000000000000000000080637a571d0000c0c59b2759173730ccc724dbea080000466d9b7edd79571dc260eb240f4976b519000000000070b1164fcfcd9ffefe2dfdf9fdf6879fdb18be0f000000d0b2657500000000000000301ab3ea0000e022ecaa0300e0c274d501bc88f7c301e0f5dca10500000000000000000000c0a8bdab0e0000e0e26d924cab2378d6d724ebea0800002ec23ac96d92457107c34cd3efebbada0c0000000000e04fae9e9eebbff8679fd35ffcb74b3f8cff3f3f01000000386f2e28060000000000000ec57c1f00e01476d501007061a649e6f1ffe0162ce39e1600788b5d750000000000000000000000001cd3bbea0000002eda8724d7d5110cb2aa0e0000e0a2ac927ca98e60b0ebf4fbbbfbea1000002ecab63a000000a061d7f9ebf7b6bea51fceff98649f7eefb57dfa1d000000807acbea0000000000000000008017301f04004eaf4bb2296ee0795d750000346e571d000000000000000000000000c7f4ae3a0000808b354fb22e6e60988f31e80b0080d3daa65f87de558730d83ac9430cec0100e074f6d5010000002374f5f45cffc53ffb9cfe73805dfacf72f6491e4fd40500000040324b7f7603000000000000f056cbea0000e062ec937c4f32ad0e01800bd225d91437f03ce73300f036eed2020000000000000000000060d4de5507000070b1363134aa055f93acab230000b848eb24b74916c51d0c334dbfcfeb6a3300000000008023b97e7afeec5b925dfaa1fefb248f4f3f0df907000000382c171403000000ffcbdefd1da795e57b1ffe968b7b9481c84064001948190c19d819888ea035111cde08ac89c0288246111c1441a308fabd58f8b446238db105fc60efe7a9dab5246f5f7c0a2eb4ffae050000b02f17d5010040afacf2f6bb6900c0614cab03d8c9b43a0000cedca63a0000000000000000000000000e69501d0000402f7d8909a3cec5ac3a0000805e9b25f9a33a829d4dd2cef7eeaa430000e8855575000000004992cbedf6fd79b0db17fb1ed326fb5f6ec75592f57603000000e0e78cab0300000000000080ceb8a80e00007a6515f39103c0315da69dfb6faa4378d728ed7b02007ecd43750000000000000000000000001cdaa03a000080de1925991737b09bdfd226f70200802aabb4e3d2dbea1076364f729f645d9b0100400f98181b0000e0f45d6dc7b716177c4c3bb75ba6dd5758a7dd1b72be07000000f0b6717500000000000000d019ee3f0200c7b4ae0e00801e9aa6cd0fcb69726d06003e665d1d0000000000000000000000008736a80e0000a077164986d511fcd063927975040000a41d974e934c6a33d8d130edbc6f5a9b0100000000009cb8abedf8d63da087249b24abb40503d6db9f37c708030000003851a3ea000000000000000000805fb0aa0e00801e9a26b9af8ee05dd3ea00003873ebea00000000000000000000000038b44175000000bdf225c9a43a829dccaa030000e08559dac4b3c3e20e7633493bffbbab0e0100a0f31e935c5547000000b077df9f31bb7e63df43924ddabda3f5765b6dff0d000000a0cbbc9707000000000000eccba83a0000e89555750000f4d0b83a80ff6a5a1d000067ceb50600000000000000000000003a6f501d0000406f8c92cc8b1bd8cd6ff1a22d0000a7659d763ef17b6d063fe1f724cb38b70000e0b036d5010000001cdd643b5ebfb1ef613b2ed3ce195769f799d6878e0200000038300b4803000000000000fb34aa0e00007ac5fc2000707c931fff170a5d550700c09973ad010000000000000000000080ce1b54070000d01b8b24c3ea087ee831c9bc3a020000de7097e42626c03b278b58301d0000000000389ec9abf1a5c7b4c50796db71f562040000003875a3ea000000000000000000800f7888790401e0d8a669ef56735aa6d50100d001cbea00000000000000000000000038b44175000000bdf02526873a07cf496eaa230000e0bf98255925191677b09bab24f3ed06000087b08cfb0f000000ece66a3bbe751ef994649d761f6a93bf172958bef17f010000002a8cab03000000000000804e710f120038b675cc110200c7368df7a54fd1b43a0000cedc53750000000000000000000000001cc3a03a000080ce1b25991737b09b79da445e000070aad669c7adbfd766f0136e93dc27595587000000000000bce372bb7d5f00f1f6c5bee7b4fb1cebedb64ab27931020000001cc3367164520000200049444154b83a00000000000000e89461750000d03bebea0000e821cf209f26df0b007cccba3a0000000000000000000000008e61501d000040e72d6272ca73f090e4ae3a020000767097e426c9a43a849d2d62723c00000e635d1d00000040e70dd3ee4bbd776fea613b2e936c92acd2ce57d707ee02000000fac573980000000000000000c0395b26b9ad8e00809e995607f0a6697500009cb955750000000000000000000000001cc3a03a0000804efb9264521dc10f3d279955470000c04f98a54d10332cee60375749e6db0d0000f6695d1d00000040ef4d5e8d2f3da59dbbae926c5e8ccb6384010000009d72591d0000000000000074c6b43a0000e8a575750000f4d030c928fe0e9f9251cca70c001fb5ae0e000000000000000000000080631854070000d059a324f3e20676338f976b0100382febb4e3d8df6b33f809b749ee93acaa430000000000008ee472bb4dded9ff90649376ff64fd6a03000000f86e5a1d000000000000000000f041eb24cf4986c51d00d037d3248be206fe36ad0e00800e30cf3d0000000000000000000000bd30a80e0000a0b3163119d439784872571d010000bfe02ec94d924975083b5b241957470000d029cbea00000000f880eff7b9aedfd8f794b628e32ac9e6c5b83c4618000000705246d5010000000000000000007bb08ab90301e0d8a669f3c1721aa6d50100d001ebea000000000000000000000000388641750000009d348f89a0cec1739259750400007cc02c6d22da617107bbb94a3b5f9cd7660000000000009cbccbedf6de73780f493669f7ca5e8f00000040b78caa03000000000000804e9956070000bdb58a79cb01e0d8c6d501fc1bdf07007cdcba3a0000000000000000000000008e61501d000040e78c93dc5647b09379bc540b00c0795ba71dd7fe5e9bc14fb84d729f3681300000ecc36392abea0800000038b2ef0b355ebfb1ef29ed3edaf76d9564f36204000000cecbb43a000000000000000000600fd6d50100d04357492ee21de3537011f3a501c0473d54070000000000000000000000c0b10caa030000e89c4575003b794872571d0100007b7097e426c9a43a849d2d928cab230000e80c9362030000c0bfbbdc6eefdd3f7b4c3b9f5e6e7f7f3d02000000a765541d000000000000000000b007abea0000e8a971bc477c0accc50b001f67fe5100000000000000000000007a63501d000040a7cc935c5547f043cf4966d5110000b047b3b4096987c51dece62aedfc715e9b01004047ac934caa23000000e08c7c7fc6effbf9f4edabfd0f690b36acde1801000080e3bbac0e000000000000003a655a1d0000f496f79300a0c634c9b2b801d76400601f5c5b0000000000000000000000a03706d501000074c638ffb9903da7699e645ddc000000fbb44e3bcefdbd36839f709be43e26fb0100e0e3d6d501000000d03193ed78fdc6bee7b4fb3beb773600000060bfa6d5010000000000000000007bb2497b3f69581d02003d33ad0e2089ef0100f6c19cf60000000000000000000000f4c6a03a000080ce585407b093872477d5110000700077496e924caa43d8d922c9b83a020080b3b7a90e000000801e19a6dd8f7bef9edc5392f58b6d9576eefe7d040000007ecea83a000000000000000000608f56315f20001c9bb95f4f83ef01003e6e5d1d000000000000000000000000c732a80e0000a013e649aeaa23f8a1e724b3ea08000038a059daa4b4c3e20e767395763e39afcd0000e0ccadaa0300000080ff73b9ddde5b44f231c926ed7cfead11000000f877a3ea00000000000000a073c6d5010040afadf2febb4700c0610cd3ae0798afabce38e64b06807d703c0300000000000000000000406f0caa030000387be324b7d511ec649e645ddc00000087b44e324bf2b536839f709be43e26fd0100e0d76daa03000000809d5d6dc7f716997c4c3bd75f6e7f7f3d02000040df4cab0300000000000080ce1956070000bd66ce3900a8318ebfc395c6d50100d0018fd5010000000000000000000000704c83ea000000cedea23a809dfc2bc95d750400001cc17ddaf1ef7575083bbb4f9b486f531d0200c05932213600000074c7d5769c6cc7db57fb1fb6e3f29d11000000ba66541d000000000000000000b047ebea0000e8a969ac2b52695a1d00001d600e7b00000000000000000000007a65501d0000c0599be7ef05e3395dcf4966d51100007044b3b4c96987b519ece832edfcf24b71070000e7eb398eff010000a00f26afc6db57fb1fb6e3f29d11000000cecd657500000000000000d029a3ea0000a0f796d50100d053e3ea809ef3f903c0c72dab030000000000000000000000e09806d50100009cad71fe73f1774ed32cc9a63a0200008e6893761cfcb5b883dd7d4e721f13000100f06b564926d51100000040b9c9abf1f5338e0fdb71f9ce08000000a7645a1d0000000000000074cea83a000020c95392cbea0800e899ab2417b1664595abea0000e88075750000000000000000000000001cd3a03a000080b3b5a80e6027ff4a725f1d01000005eed38e87afab43d8d922c93826330400e0e739860400000076317935debedaffb01d97ef8c000000704ca3ea00000000000000000080035825b9ac8e00801e1ac73bb315a6d50100d011ebea00000000000000000000000038a6417500000067699ee4aa3a821f7a4e32ab8e00008042b3b4096586b519ece832ed7cf34b71070000e76795e4ba3a02000000387b9357e3edabfd0fdb71f9ce08000000fb34aa0e0000000000000000003800f38400408d69bc135b615a1d00001db1ac0e000000000000000000000080631a540700007076c6f9cf45d9394db3249bea08000028b4493b2efe5adcc1ee3e27b98f89800000f839ae8503000000c7307935be7e96f2613b2edf19010000e0674cab0300000000000080ce99560700002459550700404f8dab037acae70e001ff7541d000000000000000000000000c736a80e0000e0ec2caa03d8c9bf92dc57470000c009b84f3b3ebeae0e61678bb4c9f536c51d00009c0f0b5300000000a760f26abc7db5ff613baed2ee85bd1e010000e0a58bea0000000000000000008003304f0800d4985607f4d4b43a00003a605d1d000000000000000000000000c736a80e0000e0accc935c5547f043cf4966d51100007042666993cb0c6b33d8d165daf9e797e20e0000cec7ba3a0000000060079357e36b8f4936698b70be35020000d02fdee3030000000000000000ba685d1d00003d354c328abfc5c7348af99001601f96d5010000000000000000000000706c83ea000000cec638c96d75043b99c562f50000f0d226ed38f96b7107bbfb9ce43e260502006037ebea00000000803db8da8e9377f63fa6ddfb5c6dc7f5ab0d000080ee185707000000000000009d74511d0000b0f590f7dfa101000e679a6451dcd0279e0b0780fd5857070000000000000000000000c0b10daa030000380b173191c4b9f85792fbea0800003841f769c7cbd7d521ec6c9136d1dea6b8030080f3f094e4b23a02000000e080aeb6e37b8b733ea52dbaf1de060000c0f9b8a80e000000000000003a695c1d0000b0b5cafbefc8000087e3dac0714dab0300a023d6d5010000000000000000000000706c83ea000000cec23c7f2f7ccee97a4e32ab8e00008013364b9b6466589bc18e2ed3ce47bf14770000701ed669c790000000007d75b9ddde5bbcf3396d71cfcd3b23000000a7635a1d0000000000000000007040ebea0000e8a9717540cff8bc01603f96d5010000000000000000000000706c83ea0000004ede34c9e7ea0876324b5b481e000078db26edb8f96b7107bbfb9ce43e26070200e0c7564926d51100000000276c98bfaf9f5cbfb1ff39ed1acbe69d11000080e31955070000000000000000001c90775500a08679ba8ecbe70d001ff7541d0000000000000000000000001506d50100009cb48b248bea0876f2af24f7d51100007006eed38e9fafab43d8d922c938c9a6b8030080d3b6ae0e000000003873c3fcbd10d65bf7539fd31607ddbc33020000b03fa3ea00000000000000a0932eaa030000b696d50100d063d3f85b7c0ce3ea0000e888757500000000000000000000000054185407000070d2e6492eab23f8a1e724b3ea0800003823b3b4096786b519ece832edfcf44b71070000a76d551d00000000d071c32493edcfd76fec7f4ebb46b379670400006077162b060000000000000ee1aa3a0000e085a798ff1c002a8c932cab237a605a1d00001db1ac0e0000000000000000000000800a83ea0000004ed634c9e7ea0876324b5be01d0000d8cd26ed38fa6b7107bbfb9ce43e260a0200e07debea00000000809e1b26996c7fbe7e63ff739255dafdda97e33aaeed000000bc7491768e050000000000000000d065ab2497d51100d043e3ea809ef03903c07eacab030000000000000000000000a0c2a03a00008093749164511dc14efe5f92fbea0800003843f749fe99e47375083bbb4f324ab229ee0000e034adab0300000000f8af864926db9fafdfd8ff94768de7bd0d0000a02f2c540c0000000000000000f4c12a6fbf6302001c96e7958fc3e70c00fbb1ae0e0000000000000000000000800a83ea0000004ed23cc96575043ff494e44b750400009cb179929b38ff3917c3248bb4ef0c0000def298e4aa3a02000000805f72b9dd26efec7f4cb2495b9cf4e5b83c461c0000c0118daa03000000000000804ebaa80e0000786599e4b63a02007ae82aed3ac1a63aa4c32e623e3400d89765750000000000000000000000005418540700007072a6493e5747b093594cec0100001fb1493baefe56dcc1eeae93dc24b9af0e0100e024ad63c26600000080aefa7edd67f2cefe87edb84cbb17bc7a310200009c93517500000000000000d049e3ea00008057d6d50100d063e3b4f731390cd76100603f1eab030000000000000000000000a0caa03a00008093729164511dc14efe19937a0000c03e2cd38eaf3f1777b0bb45dae2ec9bda0c00004ed02ac9757504000000002526afc6979ed3ae1dad5f6dabb8ef0800009c1e8b150300000000000000007db04e7be76358dc01007d348db52e0e695a1d00001db1ae0e0000000000000000000000802a83ea0000004eca3cc96575043ff494f65d010000fb314f7213e743e762986491f69d0100c04babea00000000004ed230c964bbbde531c9267f2fb6b6dcfeee7a13000050e1a23a000000000000000000e0485679ff7d0f00e070c6d5011de7f30580fd30e7030000000000000000000000bd35a80e0000e0644c937cae8e6027b3b485d1010080fdd8a41d677f2bee6077d7496e92dc5787000070525c3b07000000e0575c6dc7ef0b9edebed8f79cb6a8c97abbadd2ae437d1f010000f66df2e3ff020000000000000000d009cb78660a002a8cab033acee70b00fbb1aa0e0000000000000000000000802a83ea0000004ec245924575043bf967daa45a0000c07e2dd38eb73f1777b0bb459251924d6d0600002764591d0000000040e70cd316427d6f31d487b47b96ab17e37abb010000fcac8bea00000000000000a0b346d50100006f58570700404f5da65d2b58d76674d228edf305003e6e5d1d0000000000000000000000005506d50100009c84794c62700e9ed2be2b0000e030e6496ee2fce85c0c932cd2be330000f8ee298ee901000000389ec976bc7e63df63924d92e5f6f7e5f6f7d5c1ab0000807335ae0e000000000000003a6b541d0000f006ef5800409d71927575440779261c00f6c7750300000000000000000000007a6b501d000040b96992cfd511ec6496b67039000070189bb4e3ee6fc51decee3ac94d92fbea1000004ec62ac96575040000000024b9da8e93ed78fb62df53dac26eabb47bd5cbed6801150000e8b75175000000000000000000c011798f0200ea8c633ed7431857070040473c5407000000000000000000000040a54175000000a52e922caa23d8c93fd316270700000e6b9976fcfdb9b883dd2dd2166cdfd466000070225649aeab2300000000e0072eb7db64fbfbed8b7d4f49d669d7ba3669f7b137b1282b0000f4c1a83a000000000000000000e0c81ef2f7fb1500c0f14cab033a6a5a1d00001db1ae0e0000000000000000000000804a83ea0000004acdd316bfe6b43da57d570000c071cc93dcc4f9d2b9182659a47d670000b0aa0e00000000800fbadc6edf175fbd7db1ef296da19555924d92e576745d0c0000ba615c1d0000000000000000007064abfcfd0e0500703c9e5d3e0c9f2b00ecc7ba3a0000000000000000000000002a0daa03000028334df2b93a829dccd216170700008e6393761cfeadb883dd5d27b949725f1d020040b9757500000000001cd0e576fbbe30ebed8b7d4f69d7c75669f7bd97dbdfd7c78a0300003eeca23a00000000000000e8ac51750000c03b56d50100d053c3b4eb05ebda8c4e19a57dae00c0c72dab030000000000000000000000a0d2a03a00008012174916d511ece49ff1422c00005458a61d8f7f2eee60778bb489fa36b519000014b32805000000007d75b9dd26dbdf6f5fec7b4cbb97badc8eabede6fe2a00009c96717500000000000000d059a3ea00008077acab0300a0c7c6f1b7789fa6d50100d021e6160500000000000000000000a0d706d50100009458a42d50cd697b4a32af8e0000801e9b27b989f3a773314c3bdfbd29ee0000a0de6392abea08000000003821dfaf974dded8f7906493b680cb6afbf3f238590000c02bc3ea00000000000000000080235b560700408f8d93dc574774c8b83a00003ae2396dde030000000000000000000000e8ad4175000000477793e4ba3a829dcce265580000a8b4493b2eff56dcc1eeaed3ce7b4d7e0800d06fab2457d51100000000702626dbf1f5f3c54f49d669d7db5e8eebe364010040ef4cab030000000000000000008a3cc65c210050615a1dd031e3ea0000e8885575000000000000000000000000541b540700007054174916d511ece4b724cbea08000020cbb4e3f3dbe20e76b7489bb06f5d9b010040a17575000000000074c0e5769bbcb1ef21c9266de19755da35398bc00000c0c75c5407000000000000000000145925b9aa8e00801e7aebfd417e9dcf1300f663591d000000000000000000000000d53e5507000070548b24c3ea087ee831c9bc3a020000f83ff3b4e374cec330edfc170080fe5a56070000000040c74d925c27b94df235c91f49fe4ab24ebb3e374f324b322d680300807335ae0e00000000000000000028b2aa0e00801ef31cf37ef81c01607fd6d5010000000000000000000000506d501d0000c0d1dca42d14cde99b5507000000ff6196e48fea08763649f225c95d75080000252c4a0100000000352eb7dbe4d5bf3fa75db75ba52d16f3fde7cd31e30000e0c45d5407000000000000009df6fad93e00805362ae1000a8338ebfc5fb30ae0e00800e716c020000000000000000000040ef0daa030000388a8b248bea0876f25bbc040b0000a7689576bc7e5b1dc2cee649ee93ac6b33000028b049f294e4b23a040000000048920cd316be9fbcfaf7e7b4fbf1abb47bbbdf7fde1c330e00004e84058b010000000000000080be5a560700408f798e793f7c8e00b03fd6ee0200000000000000000000a0f706d50100001cc5226de1674edb63927975040000f0ae79929b2457c51dec6698763e3cadcd0000a0c82ac965750400000000f05f0d934cb6db4bcf69d7f85649d62f7ede1c330e00008eeca23a000000000000000000a0d063ccf3070015c6d5011de1730480fd78ac0e0000000000000000000000805330a80e0000e0e06e925c5747b0935975000000f043b3247f5447b0b349922f49eeaa43000038ba55dc1f010000008073354cbbdf3b79f5efcf69d7fe5649d62f7ede1c330e00000ee4aa3a000000000000000000a0d02a9ea302800aafdfe3e3d7f81c01603f56d5010000000000000000000000700a3e550700007050174916d511ece4b77801160000cec12aedf89df3314f322a6e0000e0f896d50100000000c0de0dd31671fb9ce4f724df92fc99649d764d709e6496645c110700001f30aa0e00000000000000000028667e6e00a8e39dbc8ff1f901c0feacab030000000000000000000000e0140caa03000038a845da42cd9cb6c7b405b3010080f3304f7293e4aab883dd0cd3ce8fa7b51900001c99452900000000a03f2eb7dbe4d5bf3fa62d50b34ab2dcfebc3e5e160000ec6c541d00000000000000000050cc5c210050671c7f8b3f625c1d00001db2ac0e00000000000000000000008053f0a93a00008083b949725d1dc14e66d5010000c04f9b5507f0532649be5447000070549b244fd5110000000040a9abb4e7a96f937c4bf2bf69d70e9749eed2eefd4f6bd20000e0df8caa03000000000000804ebba80e0000d8c1b23a00007a6c5c1d70e67c7e00b03fabea000000000000000000000000380583ea0000000ee222c9a23a829dfc162fbe0200c0395aa51dcfdf5687b0b37992fb24ebda0c00008e6895e4b23a02000000003829c32493edf6d263dafde455daa2b7ebb8bf0c00c0f18caa03000000000000804e1b57070000ece831c955750400f4906b071fe3f30380fd784ab2a98e00000000000000000000008053f0a93a0000808358a42daecc697b4c32af8e0000007ed93cedb89ef3304c3b5f0600a03f56d50100000000c0d9b84a729de436c9b724ff9bb6b8cd32edf9809b58440e0080c31955070000000000000000009c00738500408d4975c099f3f901c07eacab030000000000000000000000e0547caa0e000060ef6ed2164fe6f4cdaa030000800f9b5507f0532649be544700007034cbea0000000000e0ac0dd3ee33df26f99ae48f247fa55d7bbc4b7b66605cd4060040b78caa030000000000000000004ec0aa3a00007a6c541d70a6bc630800fbb3ac0e0000000000000000000000805331a80e000060af2e922caa23d8c96f311916000074c12aedf8feb63a849dcd93dc2759d76600007004aec303000000008730d96e2f3da65d93fcbe2d8fdc0400c0791b55070000000000000000009c00738500409d71ccd5fa2bc6d50100d021ae0b0000000000000000000000c0d6a7ea000000f66a9164581dc10f3d269957470000007b334f3bcee73c0cd3ce9f0100e8be4d92a7ea0800000000a017ae92fc23c9ef49be25f92b6d819c45922f49a6556100009c85cbea0000000000000000008013b0ac0e00801e1b57079c299f1b00eccfaa3a0000000000000000000000004ec5a7ea000000f6e626c97575043ff49c64561d010000ecddac3a809f3249f2a53a020080a35856070000000000bd7595e41f497e4ff22dc95f698be6dca53d6760613a000092e4a23a000000000000000000e0843c540700404f4dab03ce94f70401607fd6d5010000000000000000000000702a3e55070000b017a3248be20676334f5b781a0000e8965592dfaa23f829f398e40f00a00f5c9307000000004ec95592cf49fe27c91f49fe4ab24c7297e426edb9700000fac5b38c0000000000000000007f33570800d4f05cf3af9954070040473c54070000000000000000000000c029f9541d0000c05e2c920cab23f8a187b4c5a50100806e9ac70437e76498763e0d0040b759940200000000387593249f937c4df2bf4936499669cf214c935c14750100701c8ef7000000000000000000fe66ae1000a8314c32aa8e3833e3ea0000e810d7030000000000000000000000e0854fd50100007cd897b4458b396dcf4966d5110000c0c1cdd28eff390f5749e6d51100001cd4b23a0000000000e0270dd39e0fbf4df22dc99f690bee2cd29e1db7a81d0040b738be030000000000000e6d5a1d0000f01356d50100d0639e6dfe393e2f00d81fd7030000000000000000000000e0854fd50100007cc828c9bcb881ddcc93ac8b1b000080c35bc779dab9b98d09ff0000baeea13a0000000000e083ae92fc23c9ef49fe48f2579265da330a37492eaac20000000000000000000000608f56d50100d063e667fd39a3ea0000e810d7030000000000000000000000e0854fd50100007cc822c9b03a821f7a4872571d0100001ccd5dda7900e763511d0000c0412dab0300000000000e6092e436c9d7247f2659a7ddff9ec542810000e7645a1d0000000000000000007062cce5070035a6d50167665a1d00001db2aa0e00000000000000000000008053f2a93a0000805ff6256dd1614edb73da22d0000040bfccd2ce07380f5749e6d51100001c8c892801000000803eb84cf28f24ff93e48f249b24f769f7c3a765550000000000000000000000f073cc1502003546d50167665c1d00001df1501d000000000000000000000000a7e65375000000bf6494b69030a76f9e645ddc0000001cdf3acedbcecd6d4cfc0700d055cbea00000000008002c324d769f7c3bf25f92bed7ae93cc94d928baa300000fecda43a000000000000000000e0c42cab0300a0a72ee3bdb35d8dd2dee103003e6e551d000000000000000000000000a7e65375000000bf641193119c83872477d51100004099bbb4f302cec7a23a00008083d82479aa8e000000000038019324b749be26f9336d319fbb2437b1b0200000000000000000000000a761551d00003d36ae0e38133e2700d89f75750000000000000000000000009c9a4fd5010000fcb42f690b0773da9e93ccaa2300008072b3b4f303cec35592797504000007b1ac0e0000000000384157493e27f99ae4cfb4457eef92dc24b928ec0200e80b8b16030000000000000000fca775cce1070055a6d50167c2b3e000b03fabea00000000000000000000000038359faa030000f829a324f3e20676334f9be40a0000e8b7759cc79d9bdb98041000a08b96d501000000000067e02ac9e7245f93fc99b6d8cf5d929b2417855d00005de5180b0000000000000000e06dabea0000e8a95175c0999856070040872cff3f7b775bdd46baa561f8592220317031b019580c620616037b10448da0dd08a283200a82ae2088822032829611ccfca8b5cecc994e4772226bd7c77521b86dfdb077e9ad775707000000000000000000000040dfccaa03000078954d92797504477d4eb7a819000020e9e683cfd511bccaa63a000080b36bab03000000000006e83ac943928f49fe4ab700f829c95d9245611700c05834d5010000000000000000003dd5560700c044dd54070c44531d000023f1b53a000000000000000000000000fa68561d0000c0c91e93dc564770d44b925575040000d03bab74f302c3709d645d1d0100c059ed933c574700000000000cdc759287241f93fc956497e429c9b2b0090060c89aea000000000000000000809e6aab030060a2aeab03066091e4aa3a02004662571d0000000000000000000000007d34ab21acd20200002000494441540e0000e0244d92757103a75927d91737000000fdb38fb96e68de27b9a98e0000e0acdaea00000000008091b94ef290e4cf24ff9dee39ec3abe6f070038d5a23a000000000000000000a0a776d501003061cbea809ef3fe1c009c8ff91f0000000000000000000000be63561d0000c0493649e6d5111cf529c95375040000d05b4f493e5747f02a9bea000000ceaaad0e000000000018b9db24ef937c497248b24db24ad2d4250100f49ac5c5000000000000000000df7748f25c1d010013d55407f4dcb23a00004664571d0000000000000000000000007d34ab0e0000e0a8c7748b7ce9b79774cb950100007e64956e7e6018ae93acab230000389bb63a00000000006042e649de25f990e45b927d92a72477854d00000000000000000000000cc7ae3a000026eaa63aa0e79aea00001891b63a000000000000000000000000fa68561d0000c00f3549d6c50d9c6695e4501d010000f4de3ee6bca1791f172702008cc53ec973750400000000c0445d257948f231c97fa75b26f418dfc90300d3e67f21000000000000e0129aea0000809fd4560700c04439e7fc637e3f00701e5fab030000000000000000000000a0af66d5010000fcd026c9bc3a82a33e25d9564700000083f1946e8e6038b64916d51100009c455b1d00000000004092e436c9ef49be24d9a73b3b7f17dfcf0300d3e2dd41000000000000e0129aea0000809fb4ab0e008089baad0ee8b9ebea00001809733f0000000000000000000000fc835975000000ffe8312e6618829724abea080000607056e9e60986e12ac9ba3a020080b368ab030000000000f89bab24f7493e26f92bddb3dcc7244d5d1200c09b6baa030000000000000000007aaead0e0080096baa037a6a591d000023b2ab0e000000000000000000000080be9a55070000f05d37497eaf8ee024ab2487ea08000060700ee9e60986e3212e0904001883b63a000000000080a36ed39da7ff96649fe429beb30700c6a7a90e0000000000000000001880cfd50100305137d5013dd5540700c088ecaa030000000000000000000000a0af66d50100007cd7a63a80937c4ab2ad8e000000066b9b6eae6038364916d5110000fc927d92e7ea0800000000004e7695e421c99f490ee9ce5bace2fb7b000000000000000000008029d8550700c044dd5407f494df0b009c4f5b1d0000000000000000000000007d35ab0e0000e06fd649aeab2338ea25dde2630000805fb14a375f300c57e9e676000086adad0e0000000000e0a7cc93bc4bf221c95fe99ef73e2669ea9200007edab23a000000000000000000600076d50100305137d5013de5f70200e7f1b53a000000000000000000000000fa6c561d0000c07fb849f2be3a8293ac921caa23000080c13ba49b2f188e87581a0f0030746d7500000000000067719be4f724dfd22d257e8a0580000000000000000000000063d2560700c044794febfbfc5e00e03cdaea000000000000000000000000e8b35975000000ff61531dc0493e25d95647000000a3b14d3767301c9b248bea0800007e9a67fc0000000000e3739de421c99724fb244f49ee2a8300008e68aa0300000000000000000006609fe4a53a020026e8aa3aa0879a24f3ea080018895d75000000000000000000000000f4d9ac3a0000807f5ba75b9a4bbfbd24595547000000a3b38a8b7187e42add1c0f00c0301d927cad8e0000000000e0cd5c257948f231dd33e14d92bbca200080ef68aa030000000000000000000662571d000013b5ac0ee899a63a000046c4ac0f00000000000000000000003f30ab0e000020497293e47d75042759a55b620c0000704e8774f306c3f110172902000c595b1d0000000000c045cc93dc27f998ee7cc626c95d924561130000000000000000000000a76bab030060a26eaa037a66591d000023b2ab0e0000000000000000000000803e9b5507000090a45b824bff7d4ab2ad8e000000466b9b6eee6038364916d5110000fc14cffb0100000000a6679ee43ec9c7247fa57b56bc8aeffe01801a96390300000000000000009ca6ad0e0080896aaa037ac6197000388fcfd5010000000000000000000000d077b3ea000000b24e725d1dc1512fe99613030000bca555baf98361b84a37d70300303c6dfcef0d000000003075ef927c48f257926dba731b8bca20006052e6d50100000000000000000003b1ab0e008089baa90ee899a63a000046c29c0f000000000000000000000047ccaa03000026ee26c9fbea084eb24a72a88e00000046ef906efe60381e922cab230000f8296d75000000000000bdf12ec987247f25d926b9abcd0100466e511d000000000000000000302087245fab230060826eab037ae6ba3a00004662571d0000000000000000000000007d37ab0e000098b84d750027f957ba25c400000097b04df2a93a8257d9c432790080216aab030000000000e8a577493ea65b72bc4972575a03008cd14d75000000000000000000c0c0ecaa030060a29aea809e58560700c088b4d5010000000000000000000000d077b3ea000080095b27b9ae8ee0a8e7248fd5110000c0e4ac92bc544770b2ab74733e0000c3b2ad0e0000000000a0d7e649ee937c4c7248b249725719040000000000000000000030516d7500004c54531dd0134d7500008cc44b927d75040000000000000000000000f4ddac3a000060a26e92bcaf8ee024ab74cb860100002ee9906e1e61381e92dc55470000f02afb24cfd51100000000000cc23cc97d928fe99e2f3fa57b2f0000e06734d50100000000000000000003b3ab0e0080895a5607f444531d00002361be07000000000000000000008013ccaa030000266a531dc049fe48d2564700000093b54df2afea085e659364511d0100c0ab6cab030000000000189cab240f49be24d92759c7024200e0759aea0000000000000000008081d92579a98e008009baa90ee889657500008c445b1d0000000000000000000000004330ab0e000098a07592ebea088e7a4ef759010000547a4c379f300cf3249bea0800005e655b1d0000000000c0a05d25799fe45bba85c88f4916a5450000000000000000000000e3b4ab0e0080096aaa037ae2a63a000046c26c0f00000000000000000000002798550700004ccc4dbae5b4f4df2ac9a13a02000098bc43baf984e17897e4ae3a02008093b5495eaa2300000000001885eb24bf27f92bc936ce7c0000ffccf262000000000000000080d76bab03006082aeab037a6091645e1d010023d156070000000000000000000000c010ccaa0300002664916e092dfdf747bcac0a0000f4479b6e4e613836e99e030000300c6d75000000000000a3f32ec987248774e7086e4a6b0080be71c6100000000000000000e0f5daea000098a8a9bf1b35f59f1f00cee539ddbbd70000000000000000000000c011b3ea000080095927b9aa8ee0a8e7749f150000409facd3cd2b0cc33cc9a63a020080936dab03000000000018ad7992fb245f92ecd39d0169ea720000000000000000000000066b571d000013d5540714bba90e00809130d70300000000000000000000c08966d501000013b14cf2501dc14956490ed511000000ffcf21ddbcc270bc4b72571d0100c049b6d50100000000004cc25592f749be2569d39d055914f60000752c3006000000000000000078bd4392afd511003041533fffdc540700c048b4d50100000000000000000000003014b3ea000080095824d9544770923fe245550000a0bfda74730bc3b149f75c0000807e3b24f95c1d0100000000c0a4dc26f990649fee7cc1b2b00500b8bc7975000000000000000000c040edaa0300608296d501c56eaa03006024ccf4000000000000000000000070a259750000c004ac935c554770d473bacf0a0000a0cfd6e9e61786619e64531d0100c049b6d50100000000004cd23cc97d923f93ec933c26690a7b0000000000000000000000faacad0e0080096aaa038add560700c048b4d50100000000000000000000003014b3ea000080915b2679a88ee024ab2487ea08000080230ee9e61786e35d92bbea0800008eda56070000000000307957497e4ff22ddd736be70d00609c6eaa03000000000000000000066c571d00001374551d50a8a90e008091f85a1d0000000000000000000000004332ab0e000018b145924d750427f923495b1d01000070a236dd1cc3706cd23d270000a0bff671a1250000000000fdf12ec9c72487244fb1e81000c6c479420000000000000000809fb74bf2521d010013b4ac0e28d2540700c048b4d50100000000000000000000003024b3ea000080115b27b9aa8ee0a8e7749f150000c090acd3cd330cc33cc9a63a020080a3b6d5010000000000f0ffcc933c24f9966e31d3aa320600000000000000000000a007daea000098a0a63aa0c8b23a00004662571d0000000000000000000000004332ab0e000018a965ba25b1f4df5d924375040000c02b1d92acaa23789577e966500000fa6b5b1d0000000000003f709be443ba73234f496e6a7300809fe46f380000000000000000c0afd9550700c00435d501459aea00001889b63a0000000000000000000000008664561d000030428b249bea084ef25b5c340500000c579be48fea085e6593eeb9010000fdb44bf25c1d01000000000047cc933c24f992eed9f62ace2300c090f8bb0d0000000000000000f06bdaea000098a065754091a63a000046e025c9be3a0200000000000000000000008664561d00003042eb2457d5111cf535dd670500003064eb24cfd5119c6c9e64531d0100c00f6dab030000000000e015ae937c48b7b46993e4a6320600000000000000000000e002daea000098a0a63aa0c86d7500008cc0ae3a0000000000000000000000008666561d00003032cb240fd5119c64551d000000700687986f86e65d92c7ea080000fed1a63a0000000000007ec23cc97d922fe99631af2a6300801fbaa90e0000000000000000001881afd50100303157d501059aea00001889b63a0000000000000000000000008666561d000030228b249bea084ef25b925d75040000c099b449fea88ee055d671092100405fed923c57470000000000c02fb84df221c921c9539c510080be5954070000000000000000008c405b1d000013b4ac0eb8b0a63a000046a2ad0e000000000000000000000080a199550700008cc83ac9557504477d4df7590100008cc963ba7987619827d954470000f08fb6d50100000000007006f3240f49bea55becb4aa8c010000000000000000000038a3b63a000026a8a90eb8b0657500008cc4ae3a0000000000000000000000008666561d00003012cb748b5de9bf5575000000c01b595507f02ab7491eab230000f8ae4d750000000000009cd96d920f49f649d699deb24800e8934575000000000000000000c008ecaa030060829aea800b6baa03006004be263954470000000000000000000000c0d0ccaa03000046609164531dc1497e8b4ba5000080f1daa59b7b188e755c460800d047bb24cfd5110000000000f006ae92bc4ff22ddd7b10cbca180098a8ebea0000000000000000008011d8c7fd20007069cbea800b6baa03006004ec0a0300000000000000000000809f30ab0e00001881a7744b5ce9b7af49d6d5110000006f6c9d6efe6118e64936d51100007cd7b63a000000000000ded87d923fd32d6e5e255954c60000000000000000000000bcd2ae3a000026a6a90eb8b0dbea00001881b63a0000000000000000000000008668561d0000307077e996b6d27fabea000000800b595507f02ab7491eab230000f89b4d750000000000005cc855920f49f6e99e8f37852d0000000000000000000000a76aab03006062aeaa032ea8a90e008091d855070000000000000000000000c010cdaa030000066c916e392bfdf75bbc8c0a00004cc72edd1cc470ace362420080bed92579ae8e0000000000800b9a27b94ff22ddd22e7bbd21a0018a76575000000000000000000c088b4d501003041cbea800b69aa030060045e6267180000000000000000000000fc9459750000c0806dd22d68a5dfbe265957470000005cd83add3cc430ccd33d670000a05f36d501000000000050e436c9c724fb248f4916a53500000000000000000000007fb7ab0e0080096aaa032e64591d000023d056070000000000000000000000c050cdaa03000006ea2ec9bbea084eb2aa0e00000028b2aa0ee0556e933c56470000f01f36d501000000000050ec2ac9ef49fe4af7dcfca6b40600000000000000000000e03f7dae0e00808969aa032ea4a90e008011d855070000000000000000000000c050cdaa0300000668916ef12afdf75bbc880a00004cd72edd5cc470ace3824200803ed927f95a1d0100000000003d719fe44b9236c9aab40400866b511d00000000000000000030326d7500004ccc4d75c08534d5010030026d750000000000000000000000000cd5ac3a000060803649e6d5111cf539c9ba3a020000a0d83ac9d7ea084e364ff7dc010080fed85407000000000040cfdc26f990649fee6ccaa232060006662acb9a0100000000000000002ea5ad0e00808969aa032ec4d96f00f8756d750000000000000000000000000cd5ac3a00006060ee92bcab8ee0a89724abea080000809e585507f02ab7491eab230000f8b76d75000000000000f4d45592f749f6493699cef24900000000000000000000a03fdaea00009898ebea800b582499574700c0c07dad0e000000000000000000000080219b550700000cc822dd5255fa6f9d6e092e000000c92ec96fd511bcca3a4953dc000040679fe45375040000000000f4d83cc97d926fe9963fdf95d6000000000000000000000053f3b53a000026e6a63ae08d8dfde703804b68ab03000000000000000000000060c866d501000003b249b758957efb9ce4a93a020000a067d671b1ee90cc936cab230000f837ff9b0100000000c0696e937c4cb24fb24ab2a88c01801e6aaa0300000000000000000046a8ad0e00808969aa03ded84d7500008cc0ae3a000000000000000000000000866c561d000030107749de554770d44bba25b7000000fcddaa3a8057b94eb2ae8e00002049b24df71d040000000000709aab241f92ec933c65fc4b2901e0544d75000000000000000000c008b5d50100303137d5016faca90e00801168ab03000000000000000000000060c866d501000003b048b2a98ee024eb740b6e010000f8bb5d92ffaa8ee055de67fc973202000cc121c9b63a02000000000006689ee421c9b774ef652c2b63000000000000000000008051da550700c0c434d5016fcc5db000f06b9e6387180000000000000000000000fc9259750000c0006cd22d4da5df3e2779aa8e000000e8b9a774f313c3b1a90e00002089ffcb0000000000e057dd27f933499b64555a02000000000000000000008cc93ec9737504004c48531df0c69aea000018b85d750000000000000000000000000cddac3a0000a0e7ee92bcab8ee0a89758600b000070aa55ba398a61b84eb2ae8e0000206d2caa00000000008073b84df221dd92e8c7248bd21a00b8aca63a00000000000000000060a4daea00009890dbea803776551d000003d756070000000000000000000000c0d0cdaa0300007a6c9164531dc149d6e996d702000070dc3edd1cc570bc4f72531d010080ef8d0000000000e08cae92fc9eff3dcbb2a88c01800bb1c8180000000000000000e06db4d5010030314d75c01b59560700c008b4d50100000000000000000000003074b3ea0000801edb2499574770d4e7244fd51100000003f3946e9e623836d5010000f89f0c0000000000dec03cc9fb24fb74675a9aca1800000000000000000000609076d5010030314d75c01b59540700c00898d10100000000000000000000e017cdaa0300007aea31c9bbea088e7a49b2aa8e00000018a855bab98a61b84eb2ae8e000098b87d924fd51100000000003052f3240f49be25d964bc4b2c0100000000000000000080f3dbc5dd7a00704937d5016f64ac3f17005ccae7ea000000000000000000000000188359750000400f3549d6c50d9c669d645fdc0000003054fb987f87e67d5c640800506d5b1d00000000000013709fe45b924dba773c00600c16d50100000000000000000023d7560700c08434d5016fc4bdaf00f06bdaea000000000000000000000000188359750000400f6d92ccab2338ea7392a7ea08000080817b4a375f311c9bea00008089db2479a98e00000000008089b84ff22dddf3f9a6b404007e9d45c60000000000000000006f6b571d00001332d6f3d18bea000018b8b63a000000000000000000000000c660561d0000d0338f496eab2338ea25c95d75040000c048acd2cd590cc3759275750400c0c46daa0300000000006062ee937c4bb24db2ac4d01000000000000000000007aaaad0e00800969aa03de887d3500f06b76d50100000000000000000000003006b3ea0000801e6992ac8b1b38cd2ac9a13a0200006024f6310f0fcdfb2437d511000013f6541d00000000000013f52ec99fe9164b3b3b0100000000000000000000fc5f6d7500004cc85575c01b68aa030060e0bec64e310000000000000000000000388b59750000408f6c92ccab2338ea53926d75040000c0c83c25f95c1dc1ab6caa030000266c1fff3f030000000040a5db245fd29d9f684a4b00000000000000000000803e712708005cceb23ae0cc9aea000018b8b63a000000000000000000000000c662561d0000d0138fe91698d26f2f4956d51100000023b54a3777310cd749d6d511000013b6a90e000000000000729fe45bbae7f64d6909001cd754070000000000000000004c405b1d000013b2a80e38b39bea000018b8b63a000000000000000000000000c662561d0000d0034d92757103a759253954470000008cd43ee6e3a1791f971b020054d92479a98e0000000000009224f749bea57b7edf949600c03f6baa0300000000000000000026a0ad0e00800919db9da88bea000018b85d750000000000000000000000008cc5ac3a0000a0073649e6d5111cf529c9b63a02000060e49e927cae8ee055b671c1210040954d75000000000000f01fee937c4bf70cbf292d01000000000000000000002aecaa030060429aea80335b560700c0803d27d957470000000000000000000000c058ccaa0300008a3d26b9ad8ee0a89724abea0800008089b84b3787310c5749d6d511000013f5541d0000000000007cd77dbac5d3eb248bda1400000000000000000000e0820e49be564700c04434d50167d6540700c080b5d50100000000000000000000003026b3ea000080428b74cb48e9bf55ba4b9f000000787b87747318c3f19064591d01003041fb249fab23000000000080ef9a27799fee79fe3add3b2400000000000000000000c0f8b5d501003011b7d5016776551d000003d656070000000000000000000000c098ccaa0300000a3da55b484abf7d4ab2ad8e00000098986dba798ce1d82459544700004cd05375000000000000f043f324ef93ec92ac6a530098b8a63a0000000000000000006022daea00009890b1dc857a531d000003d756070000000000000000000000c098ccaa0300008a2c93dc574770d44b2c88050000a8b24a3797310c5749d6d511000013b44df25c1d0100000000001c7595e443927dba774a00e0d29aea000000000000000000808968ab030060426eaa03ce64511d000003f692eefd5d0000000000000000000000e04c66d501000045d6d5019c6495e4501d010000305187747319c3f19064591d010030414fd5010000000000c0c9ae92fc996e29f55816640200000000000000000000ffeb90e4b93a020026a2a90e3893657500000c585b1d0000000000000000000000006333ab0e000028b04c725b1dc1519f926cab23000000266e9b6e3e6338364916d511000013b3a90e0000000000005eed36c99774cff99bd21200000000000000000000e0dcdaea00009888a63ae04cdce50a003fafad0e000000000000000000000080b199550700001458570770d4739255750400000049baf9eca53a82935dc5b30f00804b3b24f95775040000000000f053ee93ecd29db7b0681200000000000000000000c6a1ad0e008089b8a90e3893b1fc1c0050a1ad0e000000000000000000000080b199550700005cd832c96d750447ad921caa2300000048d2cd67abea085ee52149531d01003031ebea000000000000e0a7cd93bc4fb28b733200bc9d4575000000000000000000c084b4d501003011633927dd540700c040bda47b3f17000000000000000000000038a359750000c085adaa0338ea8fb8d8090000a06fb6493e5547f02aebea00008089d927f95c1d010000000000fc92ab241fd2bdd3b02c2d01608caeab0300000000000000000026649fe4b93a020026e0b63ae04caeaa030060a0daea00000000000000000000000018a359750000c0052d92dc5747f043cf49d6d5110000007cd72ac94b750427bb4fd2544700004ccc53750000000000007016b749fe4cb289f317000000000000000000003054bbea000098884575c02fbaa90e008001337b0300000000000000000000c01b98550700005cd0aa3a80a356490ed5110000007cd72166eba159570700004ccc36c973750400000000007036f7e91667ad8b3b0000000000000000000080d76bab030060226eaa037ed1a23a000006acad0e000000000000000000000080319a550700005cd0aa3a801ffa235e28050000e8bb6d924fd5119cec3e2e410400b8b475750000000000007056f324ef93ec932c4b4b0000000000000000000080d768ab030060229aea805fb4ac0e0080016bab030000000000000000000000608c66d5010000177293e47fd8bbdfe326b2fcedc37729012b0394819d01640019a00c700688081622184d046b22f8b5235893819d819cc1f342f3b0eb310c9e01ebee3fd795c0f954b9caa5d3dde77ccfdb117cd75d925d3b0200008027d926b96f47f064db760000c0c25cc5ef65000000000098a31749fe2fc777019b6e0a00000000000000000000f00437710f08009cc2a61df093d6ed000098a8eb76000000000000000000000000ccd5aa1d00007022afda01fca56d92433b020000802739e4b88f631ab6ed000080853924f9d88e0000000000009ecdeb1c0759efca1d00000000000000000000c08f0ded000058808b76c04f9a7a3f00b40ced00000000000000000000000098ab553b0000e044b6ed00beeb531c26050000989aab1cf7738cdf79924d3b020060613eb603000000000080677596e47d92db24afaa25004cc5ab76000000000000000000c0420ded00005880753be0276dda01003051433b000000000000000000000000e66ad50e000038817592f37604df749764d78e000000e01fd9e5b8af63fc5eb503000016e690e4b5435a140000200049444154f776040000000000f0ec5e24f9bf245799fea04d0000000000000000000098a39b7600002cc0cb76c04f7ad10e0080891ada0100000000000000000000003057ab760000c009bc6a07f05ddb24877604000000ffc821c77d1de3f7a61d0000b040bb760000000000007032af93dc26b92c7700000000000000000000000f0ded00005888753be01fdab4030060a2aedb0100000000000000000000003067ab760000c0095cb403f8a64f7171130000c0d40d39eeef1837cf4600004eef36c9efed080000000000e064ce92fc2bc7ef697cab0100000000000000000000e371dd0e00800598ea799a4d3b0000266a68070000000000000000000000c09cadda01000027f0aa1dc0235f92ecda11000000fc12bb2477ed08fed28b24eb760400c002eddb010000000000c0c9bd4cf29f383301000000000000000000006331b40300600136ed807fe8a21d00001335b403000000000000000000000060ce56ed0000801370e07f7cb6490eed080000007e89438efb3cc6cdf3110080d31b925cb7230000000000808af7496e93bcea6600000000000000000000c0e20ded000058804d3be01f5ab7030060a26eda0100000000000000000000003067ab760000c0335b27396b47f0c08738400a0000303743924fed08fed2453b000060a176ed000000000000a0e64592ff4bf23186590200000000000000000040cbd00e008005d8b403fea157ed000098a02f490eed08000000000000000000000098b3553b0000e0995db40378e04b925d3b0200008067b14b72d78ee0bbd6ed000080851a925cb723000000000080aa77496e92bc69870050b369070000000000000000002c9cfb3f00e0796dda0100c0c90ced00000000000000000000000098bb553b0000e099addb013cb06d07000000f06c0eb1ef1bb34d3b000060c13eb603000000000080ba1749fe9de42aceba002cd1a61d000000000000000000b070433b000066eea21df00fbd6c0700c0040ded00000000000000000000000098bb553b0000e0994df5928239fa90e4a61d010000c0b31a927c6a47f04d9b760000c0825d25b96b47000000000000a3f03ac96d9237e50e000000000000000000005892a11d00003377d60ef807d6ed000098a8a11d00000000000000000000000073b76a070000b0085f92ecda110000009cc42ec95d3b0200004666d70e00000000000046e32cc9bf935cc5a04b0000000000000000000038859b7600002cc0ab76c0df74d10e008009fa92e4d08e000000000000000000000080b95bb503000058846d3b000000809339c43e100000fe6c9fe4ae1d0100000000008ccaeb24b749de943b0000000000000000000060ee0e49beb42300805159b70300608286760000000000000000000000002cc1aa1d0000c0ecfd9ee4a61d010000c0490d493eb4230000606476ed0000000000006074ce92fc3bc93e865e02000000000000000000c0731ada01003073afda017fd3453b0000266868070000000000000000000000c012acda010000ccde653b000000808a5d92bb760400008cc83e7e23030000000000dff636c94da637a81300000000000000000000a662680700c0ccaddb017fd3a61d00001334b4030000000000000000000000600956ed00000066edf72487760400000035db760000008cccae1d0000000000008cd68b24ff97e4633b04000000000000000000006668680700c0cc5db403fea64d3b000026e64bcc220300000000000000000000809358b503000098b5ab760000000055438e170a01000047fb2477ed08000000000060d4de25b9c9f4867602000000000000000000c0981de26e3c00784eeb76c0dfb4690700c0c40ced000000000000000000000000588a553b00008059bb6a0700000050b76f079024b969070000f0d5ae1d0000000000008cde7992ff24b96c8700000000000000000000c08c0ced000098b1f376c0dff4a21d00001333b4030000000000000000000000602956ed00000066eb4b3b0000008051b86907902439b4030000f86a9fe4ae1d0100000000004cc2bf721ce8b52e7700f0735eb5030000000000000000004872fc361700783e533903b3690700c0040ded000000000000000000000000588a553b0000e099ddb60316ecd00e00000000beba6d070000f0c0ae1d0000000000004cc6cb1cbffd7853ee0000000000000000000080a91bda0100307317ed8027dab403006062bec43c3200000000000000000000003899553b0000e099ddb603166cd30e00000000beba6d070000f0c03ec9753b020000000000988cb324ff4ef231c9badc0200000000000000000000537548f2a51d010033b669073cd1a61d00001333b4030000000000000000000000604956ed0000806776db0e58b017311415000080e44d3b8024c94d3b0000804776ed0000000000006072dee538e4eba2dc010000000000000000000053e55e3600783e9b76c0136dda01003031433b0000000000000000000000009664d50e00007866b7ed80857bd30e000000a06a9d64db8e2077490eed0800001e19925cb723000000000080c939cff13dc3b69b01000000000000000000009334b4030060c636ed8027ba680700c0c40ced0000000000000000000000005892553b0000e004aedb010bb66d07000000507599e4ac1d416eda0100007cd7ae1d0000000000004cd25992df925c2559975b00000000000000000000604a86760000ccd8a61df044cee300c0d37d497268470000000000000000000000c092acda0100002770db0e58b097495eb523000000a8d824b96c4790c425c90000633624b96e4700000000000093f53ac94d928b7608000000000000000000004cc46d92bb760400ccd4a61df044cee200c0d35db5030000000000000000000000606956ed0000801318da010bb76b0700000050b14f72d68e20896723000063b76d0700000000000093f622c97f925cb64300000000000000000000602286760000ccd48b76c013b93317009e6e68070000000000000000000000c0d2acda0100002730b40316ee659237ed080000004eea32c7fd207df7496eda110000fca5db24bfb723000000000080c9fb57927d9275b90300000000000000000000c66e680700c08c6dda013f70d10e00808919da010000000000000000000000b034ab760000c009dc26b96b472cdc3e06a00200002cc526c9aedcc07f5db503000078925d92fb7604000000000030796f731c04669026000000000000000000007cdfd00e008019dbb4037ec0ec140078baeb760000000000000000000000002cd1aa1d00007022433b60e1ce92ecdb110000009cc43ec77d20e330b40300007892db241fdb110000000000c02c9ce7f8cdc8b69b0100000000000000000000a3759be4ae1d010033b56907fcc0a61d00001332b4030000000000000000000000608956ed00008013b96a0790d749deb423000000785697495eb623f8ea3e9e8900004cc9c71c7fc3010000000000fcacb324bfe5f8fe0100000000000000000000786c680700c04c6dda013fb0690700c0840ced00000000000000000000000058a2553b0000e04486760049927d92753b0200008067719164d78ee081ab2487760400004f7688dfd40000000000c0aff52ec94d9ce500000000000000000000803f1bda010030539b76c00f6cda01003021433b0000000000000000000000009668d50e000038914392cfed08729664df8e000000e059ec73dcf7311efb760000007fdbc72477ed0800000000006056ce93dc26b9287700000000000000000000c0980ced000098a94d3be00736ed00009888eb760000000000000000000000002cd5aa1d00007042fb76004992d749deb423000000f8a57649cedb113c7017972203004cd5b61d000000000000ccce5992ffc47b0800000000000000000000f8ff6e73bcb30d00f8b536ed801fd8b40300602286760000000000000000000000002cd5aa1d000070425749eedb112449f649d6ed080000007e898b24efdb113cb26b070000f08f0d49aedb110000000000c02cfd96e3990e00000000000000000000e078cf0700f06bbd6807fcc0d8fb00602c86760000000000000000000000002cd5aa1d00007062fb76004992b3f85b000000ccc5be1dc023f749aeda110000fc94cb76000000000000305b6f93dc2459b74300000000000000000000a06c680700c04c8df5dccaa61d000013711f7b660000000000000000000000a859b50300004eec633b80af5e27b96c47000000f0537649cedb113cf231c9a11d0100c04fb949f27b3b02000000000098adf324b7492eca1d004be1ff2d0000000000000000c0380ded000098a9b17e43bd690700c0440ced00000000000000000000000058b2553b0000e0c46e93fcde8ee0ab5d5cd000000030551749deb72378e43ec9c776040000bfc4658ebfef0000000000009ec3598e03c4b6dd0c8045386b07000000000000000000f04db749eeda11003043eb76c0778cb50b00c66668070000000000000000000000c092adda01000005fb76005f9dc5df03000060aaf6ed00bee932c9a11d0100c02f7148b26b47000000000000b37696e4b7782701000000000000000000c072ddb4030060862eda01df31d62e00189ba11d0000000000000000000000004bb66a070000140c49aedb117cf532c9653b02000080bf6597e4bc1dc1235f92ecdb110000fc521f93dcb523000000000080d97b9fe37727eb7207000000000000000000009cdad00e00004ec6d91900f8b1fb2437ed08000000000000000000000058b2553b0000a064d70ee0815d924db901000080a7b948f2be1dc1376ddb0100003c8b6d3b0000000000005884b7390edf368813000000000000000000802519da01003043afda01df71d10e00800918da010000000000000000000000b074ab76000040c990e4f776045f9d25d9b72300000078927d3b806ffa90e4a61d0100c0b318927c6e470000000000008b709ee436867102000000000000000000b01c3749eedb110000003012433b000000000000000000000000966ed50e000028dab50378e06592cb76040000007f6997e4bc1dc1235fe2390700c0dc5dc6a00b0000000000e034ce721c2ef6a6dc0100000000000000000000a732b4030060665eb603be63ac5d00302657ed00000000000000000000000058ba553b0000a0e836c98776040fec926cca0d0000007cdb4592f7ed08be69db0e0000e0d9dd26f9d88e00000000000016e32cc9bfe3bb140000000000000000000096616807000000c008dce578ff25000000000000000000000050b46a070000947dccf1d023e3709664df8e000000e09bf6ed00bee943929b7604000027b18bf75a0000000000c069fd16df0d01000000000000000000307f433b000066e8a21df02763eb0180311ada01000000000000000000000040b26a070000941d926cdb113cf032c9653b02000080077649cedb113cf225c7bf0d0000cbb16d070000000000008bf336c93ec9badc0100000000000000000000cfe526c97d3b020066666c6751c6d603006334b40300000000000000000000008064d50e0000188121c9e776040fec926cca0d0000001cbd4af2be1dc1376ddb0100009cdc10efb5000000000080d37b9be37b0a833a0100000000000000000098aba11d000033b36907fcc9a61d00001330b40300000000000000000000008064d50e000018896d92bb76045f9d25d9b723000000c83af66763f521c94d3b0200808a6d92fb76040000000000b038e7390e1edb743300000000000000000000e0590ced000098994d3be04f36ed000018b9bb24b7ed0800000000000000000000002059b503000046e29064db8ee08197492edb110000000bb74bf2a21dc123d739fe6d000058a643fc1e0400000000003ace93dc24b9688700000000000000000000c02f36b403006066d6ed803f195b0f008ccd553b000000000000000000000000385ab5030000466448f2a91dc103bb249b72030000c052bd4af2ae1dc123f749b6ed080000ea3e26b96e470000000000008b7496e3199c8b720700000000000000000000fc4a3739def50600fc1a633b7b32b61e00189ba11d0000000000000000000000001cadda01000023b34b72d78ee0abb32457ed08000080055a27d9b723f8a65d92db72030000e370d90e00000000000016eb2cc97f926ccb1d00000000000000000000f02b0ded000000002819da010000000000000000000000c0d1aa1d0000303287189e3936e74976ed0800008085d92579d18ee091eb241fdb1100008cc64d920fed08000000000060d17e8b733800000000000000000000ccc7d00e00801979d90ef893b1f500c0987cc971761b00000000000000000000003002ab760000c0080d493eb52378e07d928b76040000c042bc4af2ae1dc123f749b6ed08000046e76392bb76040000000000b068bf25b96c4700000000000000000000c02f30b403000000a0606807000000000000000000000000ffb56a0700008cd42ec95d3b8207f6ed000000800558c7fe6bac76496ecb0d00008ccf21c9b61d0100000000002cdebfe2bb2300000000000000000000a6ef26c97d3b020066e4a21df087b17400c0585db503000000000000000000000080ff5ab503000046ea9064db8ee081f324bb76040000c0cced92bc6847f0c875928fed080000466b48f2a91d0100000000002cdedb24fb760400000000000000000000fca4a11d000033b26e07fc612c1d003056433b000000000000000000000000f8af553b000060c486249fda113cf03ec9453b02000060a65e2579d78ee091fb24db76040000a3b74b72d78e00000000000016ef6d927d3b02000000000000000000007ec2d00e008019d9b403feb0690700c0885db7030000000000000000000000808756ed00008091db25b96b47f0c0be1d0000003043ebd86f8dd52ec96db9010080f13b24b96c4700000000000024799be42ac76f9200000000000000000000606a86760000ccc8a61df0874d3b0000466c68070000000000000000000000000fadda01000023774872d98ee081f324bb76040000c0ccec92bc6847f0c875928fed08000026e32ac9e7760400000000004092d7390e2c5b973b00000000000000000000e0efba4972df8e00007e29675c00e0fbaeda010000000000000000000000c043ab760000c0045c25f9dc8ee081f7492eda1100000033f12ac9bb76048fdc27d9b6230000989c6d0cc0000000000000c6e13cc910033e01000000000000000000989ea11d000033f1aa1df007f34d00e0dbee93dcb4230000000000000000000000808756ed00008089d8e6785892f1d8b70300000066601dfbabb1ba4c72db8e000060720e39bed70200000000001883f31c8777afcb1d00000000000000000000f0775cb503000000e004ec7f0100000000000000000000608456ed000080893824d9b62378e03cc9ae1d0100003071bb242fda113cf239c9be1d0100c0645de5f89b120000000000600cce930c49d6e50e0000000000000000000078aaab760000ccc4453be00f63e90080b119da010000000000000000000000c063ab760000c0845c25f9dc8ee081f771d1030000c03ff526c9bb76048fdc27d9b623000098bc6d8ebf2d010000000000c6e03cc72166eb7207000000000000000000003cc521c997760400ccc0593be00f63e90080b1b96a070000000000000000000000008fadda01000013b34d72df8ee0817d3b0000006082d6b19f1aab6d8e17160300c0cf382479d38e000000000000f81fe749861cbf5d0200000000000000000080b1dbb703006026da674936e5f50160acaee33e74000000000000000000000018a5553b000060620e49b6ed081e384fb26b470000004ccc3ec9593b82473e27b96a470000301b43924fed08000000000080ff719ee33b8cf6e05100000000000000000000f891a11d00003371515e7f535e1f00c6ca7de800000000000000000000003052ab760000c0045d25f9dc8ee081f7e95f3a01000030156f92bc6e47f0c87d926d3b020080d9d925b96b47000000000000fc8ff31c8779afcb1d00000000000000000000f0576ee2de0e000000e6ebaa1d0000000000000000000000007cdbaa1d00003051db24f7ed081eb88ae1a50000003fb24eb26f47f04ddb248776040000b37348f2a61d010000000000f027e74986380702000000000000000000c0b85db5030060062ecaebbf2aaf0f00637497e4b61d0100000000000000000000007cdbaa1d00003051872497ed081e789164d78e00000018b97d92b376048f7c8ecb890100783e37493eb423000000000000fee43cc990645dee0000000000000000000080ef71471c00fc3c674700607cec77010000000000000000000060c456ed00008009db27b96e47f0c0bb24afda1100000023f526c9eb76048fdc27d9b623000098bd5d922fed080000000000803f394f32c4205200000000000000000000c669c8f1be3800e09f6b9f1bd994d7078031ba6a07000000000000000000000000dfb76a0700004cdc362e0e1a9b7dfa17500000008ccd3ac7fd12e3b34d7268470000b0086fe2bd160000000000303ee7390ef67616040000000000000000008031ba6a0700c0c45d94d7df94d70780b1b9cff15c2700000000000000000000003052ab760000c0c4dd26d9951b78e845fc4d000000fe6c9fe4ac1dc1239fe3426200004ee736c9653b020000000000e01bce731c76b62e7700000000000000000000c09fb92f0e00a6cd79150078c83e170000000000000000000000466ed50e000098818f49aedb113cf02ec9ab76040000c048bc49f2ba1dc1237749b6ed08000016679fe4733b020000000000e01bce733ca303000000000000000000006332b4030060e22ecaeb9f97d70780b119da010000000000000000000000c05f5bb503000066629be4be1dc103fb24eb7604000040d93ac7fd11e3b34d7268470000b048db2477ed080000000000806f781bdf3b01000000000000000000302e87249fdb1100306167ed0000e081ab76000000000000000000000000f0d756ed00008099b84df2b11dc1032f92ecda1100000065fbb8a46f8c3e2519da1100002cd621c9b61d010000000000f01d6f73fcee0900000000000000000000c662680700c0c4ad4beb6e4aeb02c0585de778272500000000000000000000003062ab760000c08cec927c6947f0c0bb24afda11000000256f92bc6e47f0c85d8ecf100000a06948f2a11d010000000000f01d6f93ecdb1100000000000000000000f087ab7600004cdc4569dd4d695d00182bfb5b00000000000000000000009880553b00006066b6ed001ed92759b7230000004e6c9de37e88f1d92639b423000020c92ec9753b020000000000e03bde26b96c47000000000000000000004092db245fda11000000f093aeda010000000000000000000000c08fadda010000337393e4433b82075e24d9b5230000004e6c9fe4ac1dc1239f920ced080000f81f6f92dcb723000000000000bee35f49b6ed08000000000000000000004872d50e008009db94d67d555a1700c6e82ec96d3b020000000000000000000000f8b1553b000060867649beb42378e05d5c0c0100002cc79b24afdb113c7297e3330300001893438e7b08000000000080b1fa2dc9b61d01000000000000000000c0e25db5030060c236ed0000c0be160000000000000000000000a662d50e000098a9cb76008fec93acdb11000000cf6c93e3fe87f1d92639b4230000e01b86241fda110000000000007fe1b72417ed080000000000000000000016ed26c95d3b0200f85b36ed000018917d3b000000000000000000000000789a553b000060a686249fda113cf022c9ae1d010000f0ccf649ceda113cf229c7670500003056bb24d7ed08000000000080bf3024b9684700000000000000000000b06857ed000098a8d699904d695d00189bfb2437ed080000000000000000000000e06956ed00008019db25b96b47f0c0bb246fda11000000cfe432c9cb76048fdce5f88c000000c6ee4d8e978a0200000000008cd1599221068702000000000000000000d033b4030060a2d6ed000058b8ab76000000000000000000000000f074ab760000c08c1d926cff1f7b77789c469aee7df85fd47e870c440652066223904e046622903602e108468e60da112c8a60710407221829821765f07ee8993de301c99604dc4d735d552abba6c6ddbf2a2c99a7e9be9fea083634319c020000e89f7192597103db4dd35e23000080ae5b27b9ae8e00000000000078c530ed26699e0b01000000000000000000a0c23cc973750400f0d32eab0300a023e6d5010000000000000000000000c0cf1b54070000f4dc22c9d7ea08be334cd25447000000ec589376bd43b77c497b6d0000008ec522c9bfaa230000000000005e711ef7e4000000000000000000005067511d000047e8b23a00004edca23a000000000000000000000000f87983ea00008013709be4b93a82ef5c25b9ae8e000000d891db18c2d7454f4966d5110000f00ef7491eaa230000000000005e719ea4a98e00000000000000000000e024cdab0300809f32aa0e00808e7848b2ae8e0000000000000000000000007edea03a0000e004ac934cab23d8d0c4c0080000e0f88d93cc8a1bd86e1a03990000385ed324abea08000000000080577c4a725f1d01000000000000000000c0c999570700c0913af4fe2017073e1f0074d5a23a000000000000000000000000789b41750000c089982779a88ee03bc3244d75040000c0073569d73774cb9718c80400c0715b279926792eee00000000000078cd4ddacf3400000000000000000000e050d649be554700c011baa80e00801335af0e000000000000000000000000de66501d00007042a6499eab23f8ce5592ebea0800008077ba4d72591dc18655dad70600008edd32ede75b0000000000005df65b924975040000000000000000000027655e1d0000fcd04575000074c02ac96375040000000000000000000000f03683ea00008013b24e32ab8e60439364541d010000f046e3586376d5b43a00000076689ee47375040000000000c00fcc635351000000000000000000000e675e1d000047687ce0f3d9870400924575000000000000000000000000f07683ea00008013739fe45b7504df192669aa23000000dea849bb9ea15b3e275956470000c08ecd923c5447000000000000bc62987613701b8b0200000000000000000070088f4956d511007064c6d5010070829aea000000000000000000000000e0ed06d501000027689ae4b93a82ef5c25b9ae8e000000f849b7492eab23d8b04a32ab8e0000803d99c6a619000000000040b79d2559544700000000000000000000703216d50100c0ab26d5010050ec39c9b23a02000000000000000000000078bb41750000c0097a36d0151400002000494441544c322b6e60539364541d010000f003e3585376d5b43a000000f6689df63def7371070000000000c06bced33e1f0200000000000000000000fbd6540700c09119570700c089995707000000000000000000000000ef33a80e00003851f74956d5117c6718c39e000080ee6bd2ae5fe896cf4996d5110000b067cb24d7d5110000000000003ff029c96d750400000000000000000000bdb74cf25c1d010047647ce0f38d0e7c3e00e89a7975000000000000000000000000f03e83ea0000801336ad0e60c35592ebea0800008017dc26b9ac8e60c32ac9ac3a0200000e6491e45fd5110000000000003ff06b3c1f02000000000000000000c0fecdab030080179d57070040b14575000000000000000000000000f03e83ea00008013b64cf2b93a820d4d925175040000c0df5c24995547b0d5b43a0000000eec3ec9d7ea080000000000801f68d2de770500000000000000000000fb32af0e00802332ae0e008013f290645d1d010000000000000000000000bccfa03a0000e0c4cd923c5547f09d61da4d4a010000baa449bb5ea15b3e275956470000408169926fd511000000000000af18a6dd107c541d02000000000000000000406fcdab0300e0889c1df05ce3039e0b00ba68511d000000000000000000000000bcdfa03a0000804cab03d87015af0b0000d01db324e7d5116c58a57d6d0000e0545da77d5f0c0000000000d05567b1293800000000000000000000fbf5501d00006c185707004031cf560200000000000000000000c0111b540700009045922fd5116cb88fa112000040bd8b2477d5116c35ad0e00008062ebb4ef8b9f8b3b0000000000005e7399f6191100000000000000000000d887797500001c91517500009c805592c7ea080000000000000000000000e0fd06d5010000244966499eaa23f8ce3049531d0100009cbca63a80ad3e27595647000040072c934caa230000000000007ee026c9b43a02000000000000000000805e5a540700c011b9e8d97900a08b16d5010000000000000000000000c0c70caa0300004892ac93dc5647b0e1325e170000a0ce2cc97975041b56695f1b0000a0b54cf24b75040000000000c00fdcc7e6a300000000000000000000ecde63da19750040778caa0300a050531d0000000000000000000000007ccca03a000080ff9a2779a88e60c32cc9b8b8010000383d1749eeaa23d8f09c645a1d0100001dd424f95c1d010000000000f08a61da67776c400a000000000000000000c0ae35d5010070243cd70100fbf59c64591d0100000000000000000000007ccca03a000080ef4cd33ec449770c63f013000070784d75005bcd62f0120000bc6496e46b75040000000000c02bcee2de2c00000000000000000000766f511d000047e2a267e70180ae9957070000000000000000000000001f37a80e0000e03beb24b7d5116cb88cd7050000389c5992f3ea08367c4b725f1d0100001d374dfbde190000000000a0abaed2dea30500000000000000000000bbb24cf2541d0100fcd7a83a00008accab030000000000000000000000808f1b54070000b0a149f2ad3a820db324e3e2060000a0ff2e92dc5547b0e139c9b43a0200008ec475925575040000000000c02bee924caa2300000000000000000000e895797500000000276f511d0000000000000000000000007cdca03a000080ada6499eab23f8ce3049531d010000f45e531dc056b3248fc50d0000702cd64926499e8a3b0000000000005e334f32aa8e00000000000000000000a037e6d50100700426073acfe581ce03005df290761e24000000000000000000000070e406d50100006cf598e4be3a820d97496eab23000080de9a2539af8e60c3b758a30300c05bad935c2779ae0e01000000000078c130c9a23a0200000000000000000080de58c4ac0d000000ea2caa03000000000000000000000080dd1854070000f0a259925575041b6649c6c50d000040ff5c24b9ab8e60c3739269750400001ca96592496cac01000000000074d77992fbea08000000000000000000007a635e1d000000c0c9b2260500000000000000000000809e1854070000f0aa6975001b86499aea080000a0779aea00b69a25792c6e00008063b68ccfbb0000000000806ebb49725d1d01000000000000000000402f2caa0300a0e3c60738c7e400e70080ae59c53c750000000000000000000000e88d4175000000af5a26f95c1dc186cb24b7d5110000406fcc929c5747b0e15b92fbea080000e88179925faa230000000000005ed1e4301ba002000000000000000000d06ff3ea0000e8b8b3ea0000e8a94575000000000000000000000000b03b83ea0000007ee83ec95375041b66b139290000f0711749eeaa23d8f09c645a1d0100003dd224f9a53a020000000000e005c3b49f6700000000000000000000c047ac933c544700c0891b5507004081a63a000000000000000000000000d89d41750000003fb44e32ad8e6083cd490100808f1a25995747b0d52cc96371030000f44d93e47375040000000000c00b2ed3de3704000000000000000000001fb1a80e00801377511d000007f69c64591d010000000000000000000000eccea03a0000809fb248f2b53a820d97496eab23000080a3354b72561dc1866f49eeab230000a0a766f199170000000000d05d774926d511000000000000000000001cb57975000074dca43a00007ac63a1400000000000000000000007a66501d0000c04fbb4df25c1dc1865f935c5447000000476792e4a63a820dcf49a6d5110000d073d3245fab230000000000005e304f32aa8e00000000000000000000e0683d2659554700c009f35c0800a7665e1d000000000000000000000000ecd6a03a0000809fb64e32ad8e60aba63a000000382aa3584774d52cedc05f000060bfa649be56470000000000006c318cfbbb00000000000000000000f898797500009cb08bea000038306b500000000000000000000000e89941750000006f324ff2501dc186f324b3ea080000e068cc929c5547b0e121c97d750400009c906992afd5110000000000005b5c25b9ad8e00000000000000000000e068cdab0300a0c3c6d50100d023f6320300000000000000000000801e1a54070000f066b7499eab23d87097e4a23a020000e8bc49929bea08363c279956470000c0099a265955470000000000006c318be74400000000000000000000789f6592a7ea0800e8a8f19e8f3fdaf3f101a04be6d5010000000000000000000000c0ee0daa03000078b3c7b49b60d23d4d75000000d069a3583774d534c9ba3a0200004ed424c9aa3a020000000000e06f8671bf1700000000000000000000efb7a80e008013755e1d000007b4a80e000000000000000000000000766f501d0000c0bbdc27f9561dc186f324b3ea080000a0b36649ceaa23d8f090645e1d010000276c9d64926455dc010000000000f077e7699fe10100000000000000000080b732e30e0000807d5a2579ac8e000000000000000000000000766f501d0000c0bbdd5607b0d55d928bea080000a07326496eaa23d8f09c645a1d010000649d76ddb42aee000000000000f8bb9bb49f6300000000000000000000c05bccd3cebb0300be673f0f00d88d7975000000000000000000000000b01f83ea000000de6d99e47375045b35d501000040a78c629dd055d324ebea0800002049fbde7c926455dc010000000000f0774ddafbc000000000000000000000e02d16d50100d041fb7c4663b2c7630340d7ccab03000000000000000000000080fd1854070000f021b324abea08369ca77d6d00000092767d70561dc1868718ae0400005db34e3bfcdbe75f000000000040979c25b9af8e00000000000000000000e0e89877070000c03e3c25595647000000000000000000000000fb31a80e0000e0c36eab03d8ea2ec94575040000506e92e4a63a820dcf49a6d5110000c056ebb46ba95571070000000000c05f7d4a725d1d01000000000000000000c051995707000000d04b8bea000000000000000000000000607f06d50100007cd822c997ea08b66aaa0300008052a3581774d534c9ba3a02000078d13ac924c9aab8030000000000e0af9ab4f78501000000000000000000c0cf5827f9561d01001d73b1c7634ff6786c00e8927975000000000000000000000000b03f83ea000000766296e4a93a820de7695f1b0000e034cd929c5547b0e121062b0100c03158a71d04be2aee000000000000f8d33049531d01000000000000000000c05131fb0e00be37ac0e00801eb0d60400000000000000000000801e1b54070000b013eb24b7d5116c7597e4a23a02000038b849929bea08363c279956470000003f6d9d767db52aee000000000000f8d35592ebea08000000000000000000008ec6bc3a000000805e79a80e000000000000000000000000f66b501d0000c0cecce3e1d0ae6aaa03000080831ac590d8ae9a265957470000006fb24e3249f2adb8030000000000e04f4ddafbc400000000000000000000e0471e933c554700c089b8a80e00800330031f00000000000000000000007a6e501d0000c04e4d933c5747b0e13cc9ac3a020000389826c9b03a820d0f31540900008ed53ac924c9d7e20e000000000080a4bd3faca98e00000000000000000000e06898830700dfbbd8d371477b3a2e0074c9a23a000000000000000000000000d8af41750000003bb54e32ab8e60abbb2493ea08000060efae935c5547b0e129c9b43a020000f8b06992afd51100000000000069ef13bbae8e00000000000000000000e02834d50100d031a3ea00003852ab248fd5110000000000000000000000c07e0daa030000d8b9fb24dfaa23d8aa8941180000d067a3180cdb55d324ebea0800006027a649be5647000000000000c4732200000000000000000000fc9c6592e7ea0800380117d50100b067f3ea00000000000000000000000060ff06d5010000ecc5b43a80adce92ccaa23000080bd69920cab23d8f025c9a23a020000d8a96992afd5110000000000c0c91b26b9af8e00000000000000000000e028ccab0300e004980d0c40df595b0200000000000000000000c0091854070000b0178f493e5747b0d54d924975040000b073d749aeaa23d8f09464561d010000ecc534c9bfaa2300000000008093f7299e1301000000000000000000e0c7e6d50100d021a3ea000038424f4996d5110000000000000000000000c0fe0daa030000d89b59925575045b353110030000fa6494f67d3edd334db2ae8e000000f6e63ec92fd5110000000000c0c96be23911000000000000000000005e37af0e00800eb9d8c331c77b38260074c9a23a000000000000000000000000388c41750000007b35ad0e60abb324b3ea08000060679a24c3ea08367c89614a0000700a9a24bf544700000000000027cd732200000000000000000000fc8c87ea0000e8b171750000ecd9bc3a000000000000000000000000388c41750000007bb54cf2a53a82ad6e924caa230000800fbb4e72551dc186a724b3ea080000e0609a24ff4cf25cdc0100000000009cae9b2417d5110000000000000000000074dabc3a00000080a3654d0900000000000000000000002762501d0000c0decd923c5547b0559364541d010000bcdb28edfb7aba679a645d1d0100001cd422c924c9736d06000000000070c29aea00000000000000000000003a6d511d00003d66ef0f00faeca13a000000000000000000000000389c41750000007bb74e32ad8e60abb324b3ea080000e0dd9a24c3ea08367c89c1bc000070aa9649264956c51d0000000000c0693a4f725b1d0100000000000000000040673dc65c0c0048928b2339260074c5bc3a000000000000000000000000389c417500000007b148f2501dc156374926d5110000c09b5d27b9aa8e60c353925975040000506a99f6b3179b75000000000000156649c6c50d000000000000000000007457531d00001d30aa0e008023b3a80e0000000000000000000000000e67501d0000c0c14c933c5747b0551303320000e0988c62e86b574d93acab2300008072eb2493240fc51d0000000000c0e91926b9af8e00000000000000000000a0b316d5010000001c955592c7ea080000000000000000000000e07006d50100001ccc3ac96d75045b9d259955470000003fad4932ac8e60c39718c60b0000fc9f7592eb245fab4300000000008093739564521d0100000000000000000040272d933c554700400f5d540700c09eccab03000000000000000000000080c3fa47750000b0371749463ff1ff2d93acf7dc42773449a6492e6b33d8e226edc3be8be20e0000e075d749aeaa23d8f09464561d01000074d234ed67a2bf1677000000000000a7a549322e6e00000000000000000000a09be669e7920300bbf3337bf400c0319a570700000000000000000000000087f58fea0000e04346492e924cd26e68384e72f9ce633d25794cb2f8dbaff4cf34c932c9b0b8834d4ddaefe97571070000b0dd28edfb76ba671a6ba95330fee32b69af87bd6699f6efc4fa8fdf030070daeed3be37fcad3a04000000000038196749667f7c01000000000000000000c05fcd93dc54470040a18bea000038124f31631b00000000000000000000004ece3faa030080379b24b9fee3d7f31d1ef7ec8fafcbbffcb7e7248bb4436c16491e77783eea3c26b94f7257dcc1a63f3727bd2dee000000b69b27195647b0e14bdaeb16f4cbe48faf8b24e37cfc3ad853da6b228bb4c3b69671ad0b00e0d43469df072e626d0700000000001cc66ddacf281e6b330000808e1b55070000000000000070708bb4fb00988101c0a9dac7bf81e33d1c1300aa2daa03000000000000000000000080c3fb47750000f053aefff275c84132c324577f7c25c92aeda6894d92f5013bd8bd59dabf4fe7c51d6cba49328f877f0100a06b6e935c5647b06195768dcbf1bb4832497bbd621fdf6b677f7cfdf5d84ff9bf35f87c0fe70400a07b9669df7736f139190000000000b07fc324f769ef8901000078c94575000000000000000025e6493e554700408f9c550700c01e989d0d00000000000000000000002768501d0000bc689c6496e431c9bfd30e9019d6e52449ce93fc9ae4ffa57d3071525ac3474dab0378d13cc9a83a020000f8af71da353add334db2ae8ee0ddc649eed35efffadfb4d79d2e0f78feb3243769afbdad933449ae0f787e00006a2cd37ecef9adb8030000000000380d57f10c16000000000000000000009b16d50100000074debc3a00000000000000000000000038bc41750000b0619ca449f27b92bb24679531afb84af29f248f49a6a525bcd732c997ea08b61aa6fd39000000744393f67d3addf239edda96e3334d3b30f9f72437e9c6f5af61924f49fe9df67ad72ced753a0000fa699d6492e46b71070000000000701a9aea00000000000000000000003a675e1d00000040a73d54070000000000000000000000003506d50100c07f8dd36e46f87b924fa5256f7396e4b7248f49a6a525bcc72cc95375045b5d25b9ae8e000000729be4b23a820dabb46b5a8ec728ed6bf698f65a5297bfafce92dca5bd4ed7a4bd6e0700403f4d93fc521d010000000000f4de59dcef04000000000000000000c0f7d6491eaa2300a0d07887c79aecf05800d015f3ea000000000000000000000000a0c6a03a0000c828ed0684bf27f9549bf22167497e4bb28c07f38fc93ac9b43a821735697f4600000035c669d7ec74cfb43a8037b94df298e42eed35a463f229ed75bb26bb1d6c090040773449fe99e4b9b8030000000000e8b7db78460400000000000000000080ef2daa0300a0d0b83a00003a6e5e1d000000000000000000000000d418540700c089bb4ef298e4aeb86397ce93fc2749139b2a1e8b459287ea08b61aa6fd5e0200006a3469df97d32d9f932cab23f8297f5efbfa35c7ffbdf429c9ef496671cd0b00a08f1649264956b5190000000000408f0d93dc574700000000000000000000d029f3ea000028b4cbf99ee31d1e0b00ba6095645d1d010000000000000000000000d418540700c0891aa51d08f3efb49b0ff6d1a7248f49ae8b3bf839d324cfd5116c7515df47000050e136c96575041b564966d511fcd038c922edb5afb3d292ddbb4bb28cb53a00401f2d934c923c1477000000000000fdf529c9457504000000000000000000009df19876c61e009ca25d3e63e1790d00faa6a90e000000000000000000000000ea0caa0300e0044dd20e83b9aacd388861927f27b9af0ee187d6496eab2378519364541d01000027649c6456dcc076d3ea007ee836c932c96575c81e9da5bde6358ff53a0040dfac935c27f95c1d020000000000f496e7ac00000000000000000000f8ab79750000149974f45800d0058bea000000000000000000000000a0cea03a00004ecc2cc97f920c8b3b0eed26c932c9b8b883d73549be5547b0d530edeb0300001c4693d35bbb1f83cf69af2fd04da3b4c38f7fcde97cff5c25798c219500007d344bf23f499e8b3b000000000080feb94c725d1d010000000000000000004067ccab0300a0c8e58e8e334a72bea3630140173cc53c760000000000000000000000386983ea00003811a3244d92bbe28e4ae7691f6abca80ee155d324cfd5116c75151b940200c021dc6677c3ebd89d55925975042fba487bdde7aa3aa4c030c97fd2feec0000a05fe6492669d723000000000000bb745f1d0000000000000000000040672c933c5547004091e90e8e611f0f00fa665e1d000000000000000000000000d41a540700c00918255924f954dcd105c324ff9bdd0c00603f1e6313cc2e6bd2fe4c010000f6639c6456dcc076d3ea005e344d7bbde7acb8a3daafb16e0700e8a36592499287e20e0000000000a05fcee25e3500000000805df26c1f0000000070ec16d501005064ba8363cc76700c00e8924575000000000000000000000000506b501d00003d374afb30df797147d7fc96dd0c01603f664956d5116c354cd254470000408f3569df77d32d9f932cab23d86a96f63a0fad4f69af05dae80e00a05fd649ae93fcab3a040000000000e895dbb8cf040000000060572eaa0300000000003e685e1d0000452e934c3ef0e7a749ce76520200ddf01c6b440000000000000000000000387983ea0000e8b151924592f3e28eaefa2ded83fc74d3b43a80175d25b9ae8e0000801eba4d3bb08e6e5925995547b05593e4ae3aa283ced35e131c15770000b07bf749fe9976a02b0000000000c0470dd3deb70600000000000000000000f3986901c0e9ba7fe79f1bc5dc5a00fa67511d000000000000000000000000d41b540700404f8dd23ec8775edcd175bf25995647b0d532c997ea085ed4a4fd39030000ecc63886cd75d5b43a80ad9a249faa233aec3cedb5416b770080fe59a45d437eabcd0000000000007ae22eed670f00000000000000000000b0a80e008022e769679dbed57d92b3dda60040b97975000000000000000000000000506f501d00003d344a3be0e5bcb8e358fc96645a1dc156b3244fd5116c35ccfb0668000000dbcdd3becfa65b3e27595647b0a149f2a93ae2089ca7bd46382aee000060f7d6492669d72c0000000000001f35ab0e00000000000000000000a013e6d5010050e853deb6774d13f35101e8276b4300000000000000000000002083ea0000e8a17992f3ea8823739fe4a23a820debbc6d4003877595e4ba3a0200007a6016ebf82efa96f6b5a15bee6338e35b9c2759241915770000b01fb324ff93e4b9b8030000000000386e9fe2b92a00000000000000000000da3d0e00e094fd96a4c9eb733c4769ffcd341f15803e5aa5dd330c0000000000000000000000387183ea0000e89926c96575c4111a2659e4f52100d4582479a88ee0454d9271710300001cb38b2477d5116c784e32ad8e60c334c94d75c4113a4f7b7d0500807e9aa75d5baeaa4300e0ffb3777fc789e459de87bf8103622d106581180b445b20b5054d5b20b505cab2e05559b0d91e501e200b56f240f2002cd8f722676a8741ff059c049e27a26ffaea13ad4e22cf49f825000000007bedb63a0000000000000000000080728b2477d5110050ec8f24f7499a74e73bfdcbf89fffee31c9c5aea3006047daea000000000000000000000000a01f06d501007040a6e97ec8cee79c24995747f0ac6992657504cf3a891f0e0300c057b4d5013cab49771820fd3149f2dfd5117bec2c3e6f00000ed963ba83cdbf1777000000000000fbeb3cdd777400000000000000000000386eb3ea0000e881d3243749fe27c9fffef39ffff9e7bf3b29ec02806d9b5707000000000000000000000000fd30a80e008003314e725b1d7100cee2bf631f2d925c5747f0a2f3f8fb0000c06734e9e650fae52e76037d338a838c37e18f24d3ea080000b6aa49f25b926571070000000000b09f9aea0000000000000000000000ca39f70d0000e0383d25b9af8e000000000000000000000000fa61501d000007a24d72521d7120ae924caa2358d326b9ab8ee0454d925171030000ec9371929bea08d62c934cab2358338bbdd7a6fc77bacf1f00000ed73cdd331bcfd50000000000808f3a4f72591d0100000000000000000040a9c7244fd511000000ecdcac3a000000000000000000000000e88f417500001c8026c95975c48169930cab2358334db2ac8ee05927e9ae1b0000e07ddaea009ed5a43b3097fe6862efb5696decbd00000edd22c924c95fc51d0000000000c0feb9ad0e00000000000000000000a0dcac3a000000809d9b5707000000000000000000000000fd31a80e00803d374e72531d71804e9334d511ac798c1761f6d97992ebea080000d8034d92b3ea08d6dcc5ccd93793d87b6dc359ecbd00008ec56d927f2479a80e010000000000f6c669926975040000b073e3ea00000000000000007aa5ad0e00000060a7964966d5110000000000000000000000407f0caa030060cfb5d50107ec2ac9a43a82354d9287ea085ed4241915370000409f8d93dc5447b06699645a1dc19adbea800366ef0500703ceed3ddfbfd28ee000000000000f647531d000000ecdc49750000000000000000bd729fee8c3e0000008ec3bc3a000000000000000000000000e89741750000ecb126c95975c4816b930cab235833ad0ee04527e9ae1b0000e0796d7500cf6a923c1637b0aa89bdd7b6b5b1f7020038168b24d7497e8f97830000000000006f3b8ddfee000000000000000000001cbb5975000000003b6306040000000000000000000000560caa0300604f8d93dc54471c81d3244d75046bee93fca88ee045e749aeab230000a0879a2467d511acb94b725b1dc10a7bafddb0f70200383eb324a3243f8b3b000000000080fe6baa03000000000000000000002835ab0e0000006067cc800000000000000020e4c662000020004944415400000000c08a41750000eca9b63ae0885c25995447b0a649f2541dc18b9a24a3e2060000e89371929bea08d62c934cab2358d356071c117b2f0080e3b3487299e4cf7433110000000000c0734ee3bb5500000000001f31ac0e0000000000d8b07975000000003bf190ee9c420000000000000000000000805f06d50100b0879a2467d51147a68d03c2fb66112fc2ecb39374d70d0000d069ab03785693e4b1b881554decbd76ad8dbd1700c0316a938c93dc1577000000000000fdd554070000000000ec11bf8d04000000000ecd22c9cfea08000000b6aead0e000000000000000000000000fa67501d00007b669ce4a63ae2089dc64b17fb681e8717f5d97992ebea080000e881265e3ad54777496eab235861ef55c3de0b00e0783d269924f92bc9b2b4040000000000e8a3d324d3ea0800000000000000000000caccaa03000000d8ba7975000000000000000000000000d03f83ea0000d8336d75c011bb4a32a98e60cd34c9b23a8217354946c50d000050699ce4a63a8235cb74f324fdd256071c317b2f0080e3769b6e7ebdab0e0100000000007aa7a90e00000000000000000000a0ccbc3a00000080ad7a4a725f1d010000000000000000000000f4cfa03a0000f64893e4ac3ae2c8b54986d511ac5824b9ae8ee04527e9ae1b000038566d7500cfba4ef2581dc18a26f65ed5dad87b01001cb3c72493247f255996960000000000007d729a645a1d010000000000000000004089c7240fd5110000006ccdac3a000000000000000000000000e8a741750000ec8971929bea08729aa4a98e604d9be4ae3a82179d27b9ae8e00008002b749ceaa2358f333dd1c497fd87bf583bd1700004937cb8ee3d91b0000000000f07f9aea0000000000000000000000cab4d5010000006ccdbc3a000000000000000000000000e8a741750000ec89dbea007eb94a32a98e60cd34c9b23a8217354946c50d0000b04b9374f323fdb24c373fd22f6d7500bfd87b010090248fe9ee0bff8ae76f000000000040721adfbb020000000000000000003856f3ea00000000b6629964561d010000000000000000000000f4d3a03a0000f6c07592f3ea0856b44986d511ac784c725b1dc18b4ee207c700001c8f61bab991fe9926595447b0a24972561dc18a36f65e0000746e938c93dc5587000000000000e59aea00000060eb46d50100000000000000f4d27d92a7ea08000000366e5e1d000000000000000000000000f4d7a03a00007a6e142ff8eba3d3f8bbf45193e4a13a82179dc5750300c07168d2cd8df4cbcf24b3ea08568c93dc5447b0c6de0b00807ff7986492e4f724cbd2120000000000a0d269926975040000b055a3ea00000000000000007acb397e00000087c7ac070000000000000000000000bc68501d00003dd72639a98ee059574926d511ac995607f0aa9b24e3ea080000d8a249ba79917e59c6bcd8476d75002fb2f70200e03fcd928c92fc5ddc010000000000d49956070000000000000000000050625e1d000000c0c6cdaa03000000000000000000000080fe1a540700408f5d2739af8ee0556d926175042bee93fca88ee0556d750000006cc930ee77fb6a9a64511dc18a26c9597504af6a63ef0500c0aa45baf9eab7244fb52900000000004081f32493ea0800000000801ef25b3c00000000e0d0cd922cab23000000d8988738b71d000000000000000000000078c5a03a00007a6a94a4296ee06da7f177eaa326c95375042f3a8beb060080c3d4a49b13e9979fe90ebca53fc6496eaa237893bd1700002f99a77b9efdbd3603000000000028d054070000000000f4d0b83a000000000060079ce90700007038daea000000000000000000000000a0df06d50100d0536d9293ea08dee52ac9a43a82158b24d3ea085e751307ef0300705826e9e643fa6519f3611fb5d501bc9bbd170000af69927c4b7257dc010000000000ecce797c9f04000000000000000000e018cdab03000000d8985975000000000000000000000000d06f83ea0000e8a1eb742ff3637fb44986d511ac9827f9591dc1abdaea000000d89061dcdff6d534c9a23a82154d92b3ea083ea48dbd1700002f7b4c3249f27b926569090000000000b02bd3ea0000000000000000000000766e561d000000c0463ca53b47100000000000000000000000e04583ea0000e8995192a6b8818f3b8dbf5b1f4d932cab2378d1595c3700001c8626dd5c48bffc8c436efb669ce4a63a820fb3f70200e03d66e99e75ff28ee000000000000b6ef8f74cf0500000000000000000000381e8b7467fc010000b0df9cdd0e0000000000000000000000bc69501d00003dd32639a98ee053ae924caa2358b148725d1dc1ab6e928cab230000e00b26e9e641fa6599645a1dc19ab63a804fb3f70200e03dfef56cee1f49ee8a5b000000000080ed6aaa0300000000000000000000d8b97975000000005f36ab0e000000000000000000000000fa6f501d00003d729de4bc3a822f69930cab2358d126b9ab8ee0556d750000007cd230ee67fb6a9a64511dc18aeb2467d5117c491b7b2f0000dee73ec924c99f499e6a530000000000802db98cef920000c0a199540700000000000000d07bb3ea00000000be6499645e1d010000000000000000000000f4dfa03a00007a6294a4296ee0eb4ee3efd847d3743f7ea59fcee2ba0100603f35e9e640fae5671c6cdb37a398fb0e81bd1700001fd5261927f95edc0100000000006cde4992ebea080000000000000000000076ea31c94375040000009fe6fc760000000000000000000000e05d06d50100d0136dba17f7b1ffae924caa2358f198e4b63a8257dd241957470000c0074cd2cd7ff4cb32c9b43a82356decbd0e85bd1700001fb548d224f996e4676d0a0000000000b061d7d50100000000003d31ac0e0000000000d8a17975000000009f36af0e000000000000000000000000f6c3a03a00007ae03ac97975041bd5c6a1e27dd32479a88ee0556d75000000bcd330ee5ffbea32c9a23a8215f65e87a78dbd1700001ff7986e66fb2d9ed90100000000c0a1384932ad8e0000000000e88171750000000000c00eb5d5010000007cdaac3a000000000000000000000000d80f83ea000028364ad21437b079a7f177eda3697500af3a8beb060080fd709b6eeea35f7e24995747b0621473de21b2f70200e02be6e95ecefc6792656d0a0000000000b0014d7500000000000000000000003b759fe4a93a020000800fbb4bb2a88e000000000000000000000000f6c3a03a00008ab5494eaa23d88aab2493ea0856dc27f9511dc1ab6e928cab230000e0159749fea88e60cd5392a63a82356decbd0e95bd1700005fd5261925f95e9b0100000000007cd1697c8f04000000000000000000e0d8ccab03000000f8b05975000000000000000000000000b03f06d5010050e83ac97975045bd526195647b0a249f2541dc1abdaea00000078c130ee57fb6a9a64511dc10a7bafc3d7c6de0b0080af59a47b76f72dc9dfb5290000000000c0175c570700000000000000000000b053b3ea000000003ecc2c070000000000000000000000bcdba03a00008a8c9234c50d6cdf69fc9dfb6691645a1dc1abce92dc56470000c033da2427d511acf991645e1dc18a51ec438ec16992ebea0800000ec263bae777bf25b92b2d0100000000003ee322dd7786000080fd36ae0e00000000000000606fcc922cab2300000078b7a774e7fe010000000000000000000000bccba03a00008ab4494eaa23d889ab2493ea0856cc93fcac8ee055ae1b0000fae632c94575046b9e9234d511ac6963ef752c6ee225c500006cce3cddf3a1df923c94960000000000001f755d1d0000007cd9b03a0000000000000080bd32af0e000000e0dd66d5010000000000000000000000c07e1954070040816992f3ea0876aa8d17b6f4cd34c9b23a8257b571dd0000d00fc374f7a7f4cf34c9a23a8215d7b1f73a366d7500000007679e649ce4cf244fb5290000000000c03b4de3372000000000c0f11a5507000000000014985507000000f06e66380000000000000000000000e04306d50100b063c324b7d511ecdc6992a63a82158b24d7d511bcca750300405fb4494eaa2358f323c9bc3a8215a398e38ed159fcdd0100d88e36dd9cf157926569090000000000f096932497d51100000000004546d50100000000000566d501000000bccb32ce730700000000000000000000003e68501d00003bd6a67b211fc7e72ac9a43a82156d92bbea085ee5ba0100a0da65928bea08d63c2569aa2358d3c6deeb58dd24195747000070b06ed3bdd0f97bbac36f0100000000807e6aaa0300000000000000000000d899459287ea08000000de34ab0e0000000000d891fbea0000000000e8b979750000b05f06d50100b04397492eaa2328d526195647b0629a64591dc1abdab86e0000a8314c773f4aff4cd31d584b7f5c2739af8ea0545b1d0000c0415b2469928c927c8fe77b0000000000d047a74926d51100000000000000000000ec4c5b1d000000c09be6d50100000000003be2fd96000000000000b04183ea0000d891611ca242f722c6a63a82158f496eab237895eb0600802a6d9293ea08d6fc88c38efa6614731bc959fc7f0000c0f62dd2dd778e927c4fb2ac8c010000000000d64cab030000804f1b550700000000000000b07766d501000000bcc9ec0600000000000000000000007cd8a03a000076a44d72521d412f5c25995447b0a249f2501dc1ab5c370000ecda65928bea08d63ca59be1e89736f65e746e928cab230000380a8b74f3e128c98fd2120000000000e0dffd9164581d0100007cca697500000000000000007be731dd1981000000f4d35dbab3fb0000000000000000000000003e64501d00003b7099e4a23a825e69e3658c7d33ad0ee04d6d5c370000ecc630ddfd27fd338d838efae63ac9797504bdd256070000705416e9e6926f49fe4eb2accd010000000000d2edee01000000008ec9a83a0000000000a0d0ac3a000000801799d90000000000000000000000804f19540700c0960d93b4d511f4ce6992a63a8215f7497e5447f02ad70d0000bbd22639a98e60cd8f24f3ea08568c624e63dd59fc7f0100c0ee3d2699a69b53be275916b60000000000c0b19b56070000000000ecd86975000000000040a1b63a0000008017cdaa03000000000000000000000080fd34a80e00802d6b939c5447d04b574926d511ac68923c5547f02ad70d0000db7699e4a23a82354fe96636faa58dbd17cfbb4932ae8e0000e0282dd2cd8fa324df932c2b630000000000e0489da6fb2e1e0000000000000000000087ef3ece77000000e8a3a7248fd5110000000000000000000000c07e1a540700c0165d26b9a88ea0d7da24c3ea087e5924995647f0a636ae1b0000b66398ee7e93feb94c37b3d11fd324e7d511f45a5b1d0000c0515b2469928c927c8f179d0000000000c0ae4dab0300000000000000000000d8995975000000006bcc6a0000000000000000000000c0a70daa0300604b8649daea087aef3449531dc18a79929fd511bcca750300c0b6b4494eaa2358f33dc97d75042b86496eab23e8bdb398df0100a8b748775f3a4a375f3e55c60000000000c011b948b79f070000f6cba43a0000000000000080bd34ab0e000000608d590d0000000000000000000000f8b4417500006c499be4a43a82bd70152f72e99b6992657504af72dd0000b069d32417d511ac7948d25447b0a68dbd17ef7393645c1d0100004916e9e6cb51923f933c55c60000000000c09198560700000000000000000000b013f3ea00000000562c6356030000000000000000000000be60501d00005b7099e4a23a82bdd226195647f0cb22c97575046f6ae3ba0100603346496eab2378d6b43a8035f65e7c545b1d000000ffa14db70bf833c95d690900000000001cb669750000000000c00e4caa0300000000007a6091e4677504000000bfccaa03000000000000000000000080fd36a80e00800d1b2669ab23d83ba7499aea0856b449eeaa237895eb0600804d69939c5447b0e67b92fbea0856d87bf1196731bf0300d04f6dba9745ff162f410100000000806d384db78b07000000000000000000e0f0cdaa03000000f8655e1d000000000000000000000000ecb7417500006c589be4a43a82bd74152f65ec9b6992657504afba4a72591d0100c05ebb4e725e1dc19a87244d75046bdad87bf1393749c6d5110000f08279bae74ddf92fc1dcf0701000000006093a6d50100000000000000000000ecc4bc3a000000805f66d5010000000000000000000000c07e1b540700c0065d26b9a88e60afb54986d511fcf298a4296ee06d6d5c3700007cce28eef9fb6a5a1dc01a7b2fbeaaad0e000080373ca69b474749be27792a6c01000000008043f147fce6030000f6c9a43a00000000000000384af3ea0036e231c9437504000000b94bb2a88e000000000028f0581d00000000003de6b75f00c0870daa030060438649daea08f6de6992a63a8215b7b1f4eabb93f8fc0500e073da74f793f4cbf724f7d511acb0f76213ce62ef0500c07e58a4bb771d25f9339e150200000000c0575d560700000000000000000000b0136d750000000099550700000000001479ac0e00000000801e5b54070000fb67501d00001bd22639a98ee0205c25995447b0625a1dc09b2ee285a600007ccc7592f3ea08d63c2469aa2358d3c6de8bcdb84932ae8e0000800f68d3ddc3fe96e4efda140000000000d85bd7d50100000000005b34a90e0000000000e891797500000000995507000000000000000000000000fb6f501d00001b7099e4a23a8283d226195647f0cb7d92efd511bca98deb060080f71925698a1b78deb43a8035f65e6c5a5b1d0000009f304f37b37e4bf7dc7059190300000000007be62cddf7f600000000000000000000386cf7499eaa230000008ed85392c7ea08000000000000000000000060ff0daa0300e08b8649daea080ece6992a63a8215b771e851df9dc4e7310000efd3a6bb7fa45fbea73b7096feb0f7621bce62ef0500c0fe7a4c773f3b4cf26792bbca180000000000d823d7d5010000c0bb0cab0300000000000000d87bb3ea000000802366260300000000000000000000003662501d00005fd42439a98ee0205d25995447f0cb22c9b43a82375d24b9ac8e0000a0d7ae939c5747b0e621dd8e857e6963efc576dc241957470000c017b5e99ee7fe23c9df499695310000000000d0737eeb010000fbc1f7bc01000000000000f8aa7975000000c0116bab03000000000000000000000080c330a80e00802f9824b9aa8ee0a0b54986d511fc324ff27775046f6ae3ba0100e079a3244d7103cf9b5607b0e632c945750407adad0e0000800db94f37d78e92fc99e4a1320600000000007aea34dd779200000000000ecda83a0000000000a067664996d511000000476899ee6c3c0000000000000000000000802f1b540700c0270d93b4d5111cbcd3244d75042baee3e0a3be3b89cf6700009ed7a6bb5fa45fbec781467d63efc52e9cc5de0b0080c3b248374b8d93fc23c9dff15c110000000000fedd65750000000000c0168caa0300000000007a68561d0000007084cc620000000000000000000000c0c60caa0300e0939a24a7d5111c85ab2493ea087e5924995647f0a68b78b1290000abae939c5747b0e621dd8e857e69939c544770146e928cab230000600beed33d531c25f933ddfc0b0000000000c7ee32c9b03a0200000000000000000080ad9b57070000001ca15975000000000000000000000000703806d50100f009932457d5111c95365ed0d827b32477d511bca98deb060080ce284953dcc0ba65926975046b2e935c54477054daea000000d8a245ba7bde71926f497ea49b870100000000e0189da4fb7e120000d05fe3ea00000000000000000ec2ac3a000000e008cdab0300000000008acdab0300000000a0c7e6d50100c0fe19540700c0070d93b4d5111c9dd3244d75042ba64996d511bcea243eaf0100e8b4e9ee0fe99726c97d75042becbda870167b2f00008ec36392eb74b3d7ef497e96d60000000000408dcbea000000e0557e7f0300f071c3ea000000000038008fd5016cdc22ce55000000d8a59fe966310000000000000000000000808d18540700c00735494eab23384a574926d511fcf298eef3807ebb88979b02001cbbeb24e7d511acb94b725b1dc19a365e364b8d9b24e3ea080000d8a159ba6758df927c4ff2549b0300000000003b739164581d0100000000b04167d5010000000070001eab03d88a7975000000c0119957070000000000000000000000008765501d00001f304972551dc1516be3258d7d729be4a13a8237b571dd00001cab7192ff571dc19a65926975046b2e935c544770d4daea00000028f098a449324af27b929f852d0000000000b02bd3ea0000000000000000000000b66e561d0000007044cc600000000000000000000000c0460daa0300e09d8649daea088ede6992a63a8215d3ea00de74129fdf0000c7aaad0ee0594d92c7e20656d97bd10767b1f70200e0b8cd925c26f996e47b92a7da1c0000000000d89a6975000000f0aa7175000000000000000007e131c94375040000c011788873df0100000000000000000000800d1b540700c03b35494eab2320c95592497504bfdc27f95e1dc19b2e925c56470000b0534d92b3ea08d6dc25b9ad8e604d93e4a43a0292dcc4cb8e0100e031dd9c364af27b929f852d0000000000b00d67e9f6e00000403f0dab030000f6887b270000000080d7cdab030000008ec0bc3a000000000000000000000000383c83ea000078874992abea08f8376d75002b6e933c5547f0a6365e700a00702cc6496eaa2358b34c32ad8e60cd24f65ef44b5b1d0000003d324b7299e45b92eff14c120000000080c371591d0000000000b001e3ea0000000000809e6bab030000008e405b1d0000000000000000000000001c9e41750000bc61183fb0a37f4e9334d511fcb24832ad8ee04d27f1790e00702cdaea009ed524792c6e6095bd177d74167b2f0000f84f8fe9ee9347497e4bf277610b00000000006cc2b43a0000000000000000000080adbb4ff2541d01000070c096e9662f00000000806377571d00000000003d37af0e0000f6cfa03a0000ded02439ad8e8067dc24195747f0cb3cc98fea08de749ee4ba3a020080ad6a929c5547b0e62ec96d75046b9ad87bd14ff65e0000f0b279926992ff4af2679287ca180000000000f8a4b324a3ea080000e059becb0d000000000000c026cdab030000000ed8ac3a000000000000000000000000384c83ea000078c524c9557504bca2ad0e60459364591dc19b9a78c92900c0a11a27b9a98e60cd32c9b43a823593d87bd16f6d75000000f4dc22dd7df338c93f92fc8867950000000000ec97cbea000000e059c3ea0000803de2de090000000036e3b13a80ad9a55070000001c3033170000000000000000000000b01583ea000078c130495b1d016f384bd25447f0cb22c9b43a82379dc4e73b00c0a16aab037856138702f78dbd17fbc0de0b0000deef3ec975ba79eff7243f6b730000000000e05da6d50100000000005f34ae0e000000008003f1581dc056cd922cab230000000ed4bc3a000000000000000000000000384c83ea0000784193e4b43a02dee1260e32ef9359929fd511bce93cc975750400001bd52439ab8e60cd5d92dbea08d634b1f7623fd87b0100c0c7cd925c26f9af247f2579a8cd010000000080179d2519554700000000000000000000b075f3ea0000008003f433c9a23a020000000000000000000000384c83ea000078c624c95575047c405b1dc08aeb24cbea08ded4c48b4e01000ec538c94d75046b9649a6d511ac99c4de8bfdd256070000c09e5a24b94db737f996e44792a7d22200000000005877591d000000ac99540700000000000000707066d50100000007685e1d0000000000000000000000001cae41750000fc876192b63a023ee82c49531dc12f8ff1f7d80727f1790f007028daea009ed5a49b8fe80f7b2ff691bd1700007cdd6392eb24a324bf27f93bc9b2b0070000000000fe655a1d0000000000f005e3ea0000000000803d31ab0e0000003840662d0000000080ff33af0e00000000809e9b57070000fb67501d0000ffa149725a1d019f7013079af7c96d92bbea08de749ee4ba3a0200802f69929c5547b0e62edd5c44bf34b1f7623fd97b0100c0e6cc924c938c92fc99e467650c000000000047ef2cddce1a00000000601f0dab030000000000f6c422c94375040000c0017948f2581d0100000000000000000000001cae41750000fc9b7192abea08f882b63a8015d7d501bc4b132f3b0500d857e32437d511ac5926995647b066127b2ff65b5b1d000000076691ee3efb32c9b7247fc5cb5e0000000000a871591d000000ac185507000000c0ff67ef0eafdad6d2b70fdf71033815c4a900a7027c2a08e9c0a920a40244052f74a074603a301d4007a603d3c1fb4199ccff8c93e010e091e4eb5a6b3ecc3a39f837cb63a2fd58da1b00000018a5b63a0000006044d6d5010000000000000000000000c0b84daa0300e0ff68ab03e02f1d2769aa23f8e136c94575048f3a8adfff000043d55607f053cb249be206fe6d1a9f1786cfdc0b00005ece26c965927992f749ae92dc5706010000000070504eab030000807f79571d00003020d3ea000000000018819bea005ecdaa3a0000006044daea00000000000000000000000060dc26d50100f05d93e4b83a029ec179927975043f3449eeab2378d44992b3ea080000fe4813ebf83eba8e8d61fba88903641907732f000078799b74df9bcd927c487295e4a1b0070000000080f13b4932ad8e00000000007802cf3a0300000000ec6f13fbb50300003c878724b7d5110000000000000000000000c0b84daa030020c93cc97975043ca3b63a807f595607b09726c9acb8010080fd58c7f7d343ac7ffa6891e44b75043ca3b63a0000000ec86d92b324d3249f927c4bb7fe070000000080e7765a1d000000fccbb43a0000000000000080515a55070000008c80b51500000000c0ae4d750000000000f4d85d750000304c93ea000048d25607c0333b4ed25447f0c33ac95575048f3a8abf0f000086601a1be3f4d532c9b63a827f99c63a87f131f70200801aab746bff69924f49be95d600000000003036a7d5010000c0bfccab030000000000000018257b49020000fc3d6b2b00000000805d9bea0000000000e8b16d750000304c93ea00000e5e93e4b83a025ec0791c0cd3274d92fbea081e7592e4ac3a020080df6a92bcab8e60c7756c58d4474d7c5e1827732f0000a8b54ab24cf236c9e77473010000000000f81b1fab030000000000fed0a23a00000000006080d6491eaa6284eca6000020004944415423000000066e5d1d0000000000000000000000008cdfa43a008083364f725e1d012fa8ad0ee0876d92b3ea08f6d2249915370000f0738b245faa23d8f19064591dc18e457c5e18b7b63a000000c836ddb5f96992b7493e27b9ae0c020000000060d04eab030000000000000000008057b7a90ee0d5adaa0300000006ec3add1e700000000000000000000000002f6a521d00c0416bab03e0851d2769aa23f86195ee215efaed2836b00200e8a369ace3fb6a199b15f58dcf0b87c0dc0b0000fa659b6e2d7a9ae46d92cff1dd2800000000007fe6b43a000000f861511d000000000000001c8c4d7500afcefedf0000004fb7ae0e0000000000000000000000000ec3a43a008083d52439ae8e8057709e645e1dc10fcb240fd5113cea38dddf130000f44793e45d75043bae6303d83e6ae2f3c26130f70200807eda2669939c26799be473ba19020000000000fcce69750000000000c01ff06c1b00000000c0d3acab0300000006cc9ef000000000003f775b1d00000000003d667e06003cc9a43a008083344f725e1d01afa8ad0ee0876d92a63a82bd9cc7410100007db148f2a53a821d0f4996d511ec98c7e785c3d25607000000bfb54d77dd7e9ae46d92cf49ae2b830000000000e8ada3788e0300000000188e69750000000000c0406d63df01000080a7b84bb2a98e0000000000e8a96d750000000000f498f91900f02493ea00000e525b1d00afec3849531dc10f97496eaa23d84b5b1d000040a6715dd657cbb851a08fdaea007865e65e0000301cdb74ebd6d3246f937c8e43650000000000f8b7d3ea000000204932af0e0000000000000060d456d50100000003b4ae0e0000000000000000000000000ec7a43a008083d32439ae8e8002e771504c9f2cab03d8cb71babf370000a8d32479571dc18eebd8f4b58f9a987b7198ccbd00006078b649da24a749de26f99c6ede0000000000c0613bad0e0000009224d3ea00008001f04c1b000000003c8f6d750025d6d50100000003d456070000000000000000000000008763521d00c041992739af8e80426d75003f6c925c5447b097f338300000a0ca22c997ea08763c24595647b0c3dc8b43d756070000004fb64d774d7f9ae46d924f49bea59b41000000000070588e93ccaa230000000000f630ad0e000000008091b8ad0ea0c426c95d75040000c0803cc41a1a00000000e0579c6d0100000000bfb7ad0e00008669521d00c04169ab03a0d87192a63a821f9ad8206928daea00008003348debb0be5ac60d027dd456074031732f000018876d9255baf9c334c9a724df62c30f000000008043b2a80e00000032af0e0000000000000060f456d50100000003620d0500000000f06bb7d50100000000d073666800c0934caa030038184d92e3ea08e881f33830a64f96d501ece538dddf230000bc9e26c9bbea08765cc726457dd4c4dc0b12732f000018a355baef54a749fe497295e4be3208000000008017775a1d000000e4a83a000060003ccb0600000000f077ec6b080000b03f6b280000000000000000000000e0554daa03003808f324e7d511d0236d75003fdc26b9aa8e602fe771700000c06b5924f9521dc18e8724cbea0876987bc1bfb5d5010000c08b5927394b324bf221ddf7ac77853d0000000000bc8c45750000000000c01e8eaa03000000000006ee36c97d75040000c040acaa03000000000000000000000080c332a90e00e020b4d501d033c7499aea087e686293a4a168ab0300000ec034aebbfaea34c9b63a821d6d7500f48cb91700001c86db246749e649de27f99ae4aeb4080000000080e7729464511d010000b82e070000000000005ec56d7500a556d50100000003705d1d000000000000000000000cdab63a000018a649750000a3d72439ae8e801e3a4f32af8e204937585b5647b097e3747faf0000f0729a24efaa23d87195645d1dc18e26e65ef033e65e0000705836492ed3ad03de26f91c1b2d03000000000cdd69750000000000c06f787e0d000000009e8f83ef0edbba3a000000600056d50100000000003db7ae0e00000000809ebbad0e00008669521d00c0a8cd939c5747408fb5d501fcb04e725d1dc15ecee31001008097b248f2a53a821df7499aea0876987bc1efb5d501000040896dbaf5c0699237493e25f996e4a1b00900000000803fb7a80e00000032ad0e0000e831d74a0000000000cf6315fb010000003c665d1d0000000000000000000000001c9e49750000a376591d003d779ca4a98ee087656c9434146d750000c0084de33aabaf9649b6d511ec68ab03a0e7ccbd000080a43bac66996ef6f421c95592bbca200000000000f6729c6eb60b0000d499570700000000000000701056d5010000003d769764531d0100000000000000000000001c9e49750000a37596e4a43a0206e03c0e8fe98b6d926575047b394ed2544700008c4c9be45d75043bae92acab23d8d1a45b9700bf67ee050000fc5fb7e9ee259927799fe46b92ebd22200000000007ee7b43a0000000000e01716d5010000000030120fd501f4c2ba3a000000a0c756d501000000000003b0ad0e00000000801ef31c1f00f06493ea0000466996a4296e802169ab03f86195e4a63a82bd9c2799574700008cc469928fd511ecb88ff94a1fcdd3ad4780fdb4d5010000402f6d925ca69b4bbd4df229c9b778300200000000a04f16d501000070e066d501000000000000c0e8dd5607d00babea000000801eb3660200000000789cfb9000000000e0d7cccf0080279b540700304a6d92a3ea081890e3244d75043f2c933c5447b097b63a00006004a6715dd557cb24dbea0876b4d5013030e65e0000c063b6e936675ea69b557d487295e4aeb009000000008064511d0023e3bb0f00e04fcdaa0300007a6c561d00000000003022db2437d5110000003d741f87c60300000000000000000000004526d501008cce599293ea0818a0f324f3ea0892249b244d7103fb398ef70a00e06fb5498eaa23d87195645d1dc18e26dd3a04f833e65e0000c09fb84d77efc93cc9fb249f935c2779a88c02000000003840ef92ccaa236044b6d501000000002332ab0e000000000018995575000000400fadab03000000000000000000000080c335a90e00605466499ae20618b2b63a801f2e93dc5547b097f3248bea080080813a4df2b13a821df7315fe9a379baf507f0346d7500000030489b74eb89d324d3249f925ca59b9f0000000000f0f24eab030000e080cdab0300000000000080d1db5607d01babea000000801eb2560200000000d8cfa63a00000000007a6c531d00000cd7a43a00805169931c5547c0801d2769aa23f861591dc0deda24d3ea0800808199a6bb8ea27f96b1996f1fb5d5013070e65e0000c0735825394b324bf23ec9d724d79541000000000023b7a80e0000800366ef0e00805f9b570700000000c048dc5607d01b9b2477d5110000003db3aa0e000000000018884d750000000000f4d8a63a000018ae49750000a37196e4a43a0246e03c3648ef8bdb2417d511ece55d92a63a02006060da38c8b28fae92acab23d8d12439ae8e8011384b32ab8e000000466393e432c9699237493ea59baddc173601000000008ccda23a0000000edcb43a0000a0a73c230d00000000f0fcd6d5010000003d725d1d0000000000000000000000001cb649750000a3304bd21437c098b4d501fcd024b9af8e602f5fe2605400807d9d26f9581dc18efb98aff4d13cc97975048cc451ccbd00008097b34a7296ee1e96f749bec6e6cf00000000007feb28dd3d540000400dd7e30000bba6d501000000000023d55607000000f4c8aa3a000000000000000000000000386c93ea000046a14d77181df03c8e9334d511fcb0ac0e606f6d1c320000f098696c0cda57cb24dbea08765c5607c0c89c2439ab8e000000466f936e4d7f9ae44d924f49ae92dc153601000000000cd5a23a0000000000e0ff98570700000000c0886caa03e895db24f7d5110000003db1ae0e00000000001808674000000000c0efadab030080e19a540700307867494eaa236084ce63b3f4be5827b9aa8e602fef9234d51100003dd72639aa8e60c7557cf1df47e65ef0329a24b3e2060000e0b0acd2adf3e749de27f99ce43ac943651400000000c0402caa030000e080d96f0000000000000078499bea007a675d1d000000d00377b1660600000000d8d7b63a00000000000000c66a521d00c0a0cd9234c50d30666d75003f3449eeab23d8cb97381c1500e0574e937cac8e60c77dcc57fa6816ef0bbc94a3987b0100007536e9d624a749a6493e24b9487253970400000000d06b8bea0000003860d3ea0000801e9a570700000000008cd8aa3a000000a007ac8d0000000000000000000000807293ea000006ad4d72541d0123769ca4a98e2049b24d72561dc1deda38900900e07f4dd35d27d13fa7e9d61cf44b1b732f784927316b010000fae136ddf7f28b246f937c4a7295e4be2e0900000000a0578e92ccab230000e040795e1a0060976b24000000008097b3aa0e000000e8016b230000000080fd6daa0300000000a0e736d50100c0704daa030018acb32427d5117000cee390c7be5825b9ae8e602fef9234d51100003dd3a63b449e7eb948725b1dc10e732f781d4d925971030000c0ffb54df7bdf059baf5cafb249fd37d4ffc50970500000000506e511d00000007ca3e030000bb66d501000000003022f6c1e367ecc30e00001cb2fb582f0300000000fc894d750000000000f4dca63a000018ae4975000083344bd21437c02169ab03f86199e4a13a82bd7c8903520100fee334c9c7ea0876dcc57ca58f66f1bec06b398ab9170000d06f9b74eb96d324d3241f925c24b9a94b020000000028b1a80e0000000000f86e561d000000000023b2ad0ea09756d50100000085d6d5010000000000000000000000004932a90e006090da2447d51170408e9334d51124e936d46aaa23d85b9b645a1d0100506c9aeeba88fe595607f0536dccbde0359d2439ab8e000000d8d36dbaef8b1749de24f994e42ac95d5d1200000000c0ab5854070000c0813aa90e00000000000000e0e0acaa030000000a59130100000000fc996d750000000000f4d843750000306c93ea000006e72c0eb9800ae749e6d51124492e93dc5447b09777499aea080080626d92a3ea08765c24b9ad8e6087b917d46892cc8a1b0000009e62956e9e304ff236c9a724df92dc57460100000000bc80a378ae0900000000e807cf8102004fe1590f0000d8e5e03b7e659be4ae3a020000a0c8aa3a000000000060609cc90900000000bf667e0600fc954975000083324bd21437c0216bab03f861191b6c0dc597248bea0800802267493e5647b0e32ee62b7d348bf705aa1cc5dc0b000018be6dba4da797e9e60cef937c4ef22dbe5b0600000000c661511d000000076a5e1d0000000030029bea000000e82107dff13b6d750000004081ebea00000000000000000000000080ff9854070030286d92a3ea083860c7499aea0892749bd05e5647b0b736c9b43a0200e095cd62fdd057cbea007eaa8db917543a4972561d010000f08c36e9e60dcb74df557e48f235dde6d40f555100000000007f61511d00000007ca33d20000ff35af0e00000000003810abea0000008002d6420000000000000000000000406f4caa0300188c659293ea089eece627ff6198ce6323f5be6892dc5547b09777e9de2f008043d22639aa8e60c74592dbea08769cc5dc6be8eed2cdbbacd387ad49322b6e0000007829b7492e939c269926f990e46b92eb240f855d0000000000fbf23c130000d49855070000f4c8b43a0000000000e0406c92dc5747000000bcb275750000000000c000adab0300000000a0c7d6d50100c0b04daa030018846992cbea08fec84392ab241f92bc49b2f8c97fde7cffe757dfff3cc3d15607f0c3b23a80bd7d49f7bb0f00e0109c2539a98e60c75d92a63a821db3785f86e83ac9e724efd3cdb8e6e9d67cf3effffdfdf77f7e5dd4c7d31cc5dc0b0000381cb7e9eec5394d775fce3f492e92dc54460100000000fcc6bb74f75b010000af6b561d0000d023b3ea00000000001891757500bdb7aa0e0000007845774936d511000000000000000000000000ff31a90e006010da2447d511ece521c945ba8db6cf92dc3ef2e76fbfffb96992afdfff7dfaef3849531d4192ee3374511dc1de56e97edf01008cd92cd60b7db5ac0ee0a7da987b0dc9b724ef939ca67bef36bff8739beffffcf4fb9ffff6e2653c979374f34a00008043b34e37d75b247993e49f74df45df94150100000000ec5a54070000c001f26c3400c07fcdaa0300000000000ec8aa3a000000e0155903010000000000000000000000bd32a90e00a0f74e937cac8e602f7749e6499a24db27fcfb97e936e8be79be245ed079baf79b7a9749eeab23d8cb5192b63a0200e085b5e9ae7be8978b24b7d511ec384b72521dc15eee937c48b24cb2f9c37f77f3fddffb906e7e46ff357190200000c03addfa6891e44d927fd2cd98dcd3010000000054f22c130000bc3ed7e10000ff35ab0e00000000003820eb240fd511000000af64551d00000000003040ce4e0000000080df5b57070000c336a90e00a0d7a649daea08f6f22dc922c9e62f7fcef6fbcff9f6973f87d7d1560790a4fbdc2cab23d8dbc724a7d51100002fe42cc94975043bee9234d511ec98c5fb321477e90edcbdfdcb9f739b6eee75f7b741bcb8a3987b010000fcaf75ba59c622c99b24ff24b948b7298b437f0000000080d7b2a80e00000000000edaac3a000000000046e46ff7f5e230acaa030000005ec17dac930100000000000000000000809e99540700d06b6d92a3ea081e7593649964fb8c3f7399e4db33fe3c5ec67192a63a8224c93ac95575047b6b934cab2300009ed92cd6077db5ac0ee0a7da987b0dc15d92459e6feeb54d32fffe73e9b7932467d5110000003db64e370f5ca4fbeef34392af49ae933c54450100000000a3775c1d00000007e8a43a0000a047ec170300000000cfe739f7b467bc56d501000000af605d1d000000000000000000000000f0bf26d50100f4d669928fd5113cea3edd7bf512ce92dcbdd0cfe6f99c27995747902469923c5447b097a3246d750400c0336bd35de7d02f17496eab23d8711607b80ec17d92455e6683ebc5f79f4fbf354966c50d00000043719be432dd3d24d3241f927c4d721ddf630300000000cf6b511d00000000001cace3ea00000000008003b3ae0e0000007805abea000000000080815a57070000000040cfadab030080619b540700d04bd3246d75047b5926d9bed0cfde7efff9f45f5b1d40129f99a1f998e4b43a0200e0999c2539a98e60c75d92a63a821db3785f866299979d7b5913f6df51ccbd0000009eea36c965baf5ef34c9fb249f937c4b725fd805000000000cdfa23a0000000ed0a23a0000a007a6d501000000003032b7d5010cc236c97575040000c00b5b5507000000000000000000000000fcaf49750000bdd42639aa8ee0515749d62ffc1ab7492e5ef835f87bc7499aea0892740f14db4c6938da389c000018be59ac07fae821c96975043fd5c6dc6b08ccbdf88f932467d51100000023b049371759a69b29be4ff229dd1afcaea8090000000018a6797500000000007090cc2601000000e0796dab03188c5575000000c00b72ce1400000000c0d3b90709000000007eeda13a000018be49750000bd739ae46375048fba4fd2bcd26b3549ee5ee9b578baf3d864bd2f9631b81b8aa3246d750400c05f6ad35dd7d02f4d924d7103bb96494eaa2378d46bcebd2ebfbf1efdd6249915370000008ccd26dd414167e9ee35789be49f2417496eeab2000000008001585407c0406daa030080415b54070000000000000070b0d6d5010000002f68551d00000000003060b7d50100000000d063e66700c05f9b540700d02bd3246d75047b5926d9bef2ebd17f6d750049bacf66531dc1de3e2639ad8e000078a2b32427d511ecb84972591dc18e69bc2f43b1ccebcdbdb631f71a82a3987b010000bcb46dba83839a248b246f92fc93e46b92eb240f455d0000000040ff1c25995547c0006daa0300000000066e511d00000000002372571dc0a06ce2ff330000c078adaa030000000000000000000000007e66521d0040afb4e90e90a3dfae93ac5ff9356f935cbcf26bf2e78e9334d51124492e93dc5447b0b736c9b43a0200e00fcde2fabf8f1e922cab23f8a936e65e437095d79f7badbfbf2efd7692e4ac3a020000e0c0acd37df77d9aeefbd4f7493e27f916070c01000000c0a19b57070000c08159540700000000000000a3b2ad0e607056d5010000002fe02ed6c800000000007f63531d00000000003db6a90e0000866f521d00406f9c26f9581dc1a31e922c8b5ebb49f7d024fd761e8740f6c532dd6796fe3b4ad256470000fca136dd750cfdd2c417f97d64ee350cf7e93e43159aefaf4fbf354966c50d000000876c936e2eb94c775fc2db249f925c24b9a98a02000000004a78760900000000786d8bea00000000008003b6aa0e00000078016d750000000000c0c06daa0300000000a0c736d50100c0f04daa0300e885693c0c3714cb24dbc2d73f2b7c6df6d7560790a41bde5d5647b0b78f494eab230000f67496e4a43a821d37b106e82373afe158a66eeeb5fdfefaf4db517c9e010000fa649beea0a126dda1f06f927c48f235c9b724f7556100000000c08b5b54070000c081f11c110040f7bc2800000000f03c6eab03189cdb787e1c0000189f7575000000000000000000000000c0af4caa0300e88536c95175048fba4eb22a6e5827b92a6ee071c7499aea089274efc35d75047b6be3b00200a0ffe649fe5f75043b1e922cab23f8a936e65e43709dfacdbad631f71a82932467d511000000fcd26d92cb74b3b25992b7493e25b94872535605000000003cb77975000000000070708eab03000000006044b6d5010c52f51909000000cfe93edd9e5900000000003ccd5d750000000000f49cfb140180bf36a90e00a0dc69928fd5113cea21c9b23ae2bb26dd0394f4db791c06d917cbea00f67694a4ad8e000078445b1dc04f354936c50dec32f71a06732ffe54936456dc000000c07eb6e90e226a922c92bc49f221c9d724df621d0e00000000437514cf2d0100c06b5b54070000149a5607000083b7ae0e00000018817575000000c0335a550700000000000cdcb63a00000000007ace0c0d00f86b93ea00004a4d93b4d511ec6599fe0c02b6e97ae8bfb63a8024c96d928bea08f6f631c969750400c02f34498eab23d87193e4b23a821de65ec3b18cb9177fe6283edf00000043769b6e9eb64c324bf236c9a774dfabdf2479a80a0300000000fec8bc3a00000000003818e69100000000f0bcd6d5010cd22a9e05070000c6635d1d000000000000000000008cdab63a000018be49750000a5da2447d5113cea26dda62c7db24e72551dc1a38e9334d51124492e93dc5747b0b736c9b43a0200e07fcc939c5747b0e321c9b23a829f6a63ee3504d7e9e7dceb5b75048f3a4972561d010000c0b3d8a69b0f344916e9beabfd90e473ba7b53eeaac20000000080df9a57070000c081595407000014b20f0c00000000403ff46ddf38000080a77888f50d00000000c0df5a57070000000040cfdd56070000c337a90e00a0cc69928fd5113cea21c9b23ae2179a24f7d5113cea3c0e84ec836dfafb5966d75192b63a0200e07fb4d501fc54936453dcc02e73af61e8f3dceb2c5d1ffdd624991537000000f0326ed3cd44cfd2ddf3f026c93f49be26b98efb5500000000a00f3caf040000af6b5a1d000050c83c12000000009ed7b63a80c15a57070000003c837575000000000000000000000000c06326d5010094982669ab23d84b936453dcf02bdb24cbea08f6d2560790a47bf8f8aa3a82bd7d4c72561d0100f05d93e4b83a821d37492eab23d861ee351ccbf477036b73af61388acf3b0000c02159a79bc79d269925799be453928b74b3ba87aa30000000003850f3ea0000003830aec101804336ab0e000000008091b9ad0e60b056d501000000cfc0da0600000000e0ef6daa0300000000a0c7eeab030080719854070050a24972541dc1a36e925c56473c629de4aa3a82471d2739ab8e2049f7fbf7a13a82bd3571800100506f9ee4bc3a821d0f4996d511fc541b73af21b849ff37e95a25b9ae8ee0512731f70200003854db74ebf726c922c934c9fb249fd2ddcb725315060000000007e2289eb9000080d734ab0e00002834ab0e00000000002049f78cb7e7b8010080a1ebfbded8000000000043b0a90e00000000801edb54070000e330a90e00e0d52d927ca98ee0510f4996d5117b6a92dc5747f0a8263662ef836d86f3d9a63b4cb5ad8e00000e5e5b1dc04f35f1a57d1f9d26f9581dc1a38634f75aa6eba5df9a987b010000d0d9a4db18fc2cdd3d526f927c48f239c9551c860400000000cf6d5e1d00000007e45d7500004021b34800000000783e77d5010cdeaa3a000000e02fdca53b3f0a0000000000000000000000a0d726d50100bcaa6992b63a82bd344936c50dfbda2639ab8ee05147f1f9ef8b5592ebea08f67612bfe300803a4d92e3ea0876dc24b9ac8e6087b9d7703419d6dc6b591dc1a3ccbd000000f89ddb74ebc6b3248b246f927c48f239c9b738640b00000000fec6bc3a0006c4c19600c07398550700001439aa0e000000008011712f137f6b551d000000f017daea0000000000809158570700000000408fadab0300807198540700f0aa9a24efaa2378d44d92cbea883fb44a725d1dc1a34e929c55479024592679a88e606f4d1ce80400bcbe7992f3ea08763ca4bb9ea77fda38806c08ccbd7829e65e000000fc89db74f3a465ba59ec9b24ff24f99ae45b92bbaa300000000018984575000cc86d750000300ab3ea00008002f3ea000000000000fe6513cf63030000c3b5ae0e000000000000000000000000d8c7a43a008057b348f2a53a82bd9c55073cd132c94375048f6ae2609a3ed8a67b2f1886a3246d7504007070daea007eea2cdd86a9f4cb69928fd5113cea21ddfc68889631f71a8226e65e0000003cdd3ac965ba39c03cc99b24ff24f99ae42ac94d551800000000f4d8ac3a0000000eccbc3a0000a0c0b43a000000000046665d1dc028acab030000009ee03ec96d750400000000c008dc55070000000040cfb95f1100781693ea00005ec534495b1dc15e2e32dc45ff36c9b23a82471dc5ef83beb84c72531dc1de4e929c5547000007a349725c1dc18eeb584ff591b9d770344936c50d4f65ee350ce65e0000003cb775baeff6cf922c92bc49f221c9e72457f19d3f00000000bc4b770f170000f03a5c7f03008768511d0000000000c08eb63a000000e00956d501000000000023b1ad0e000000008072385c7900002000494441549e334303009ec5a43a008057d1a43b0c8e7ebb4bf75e0dd92ac97575048f3a4972561d41926499e4a13a82bd354966c50d00c0f8cd939c5747b0e321ddf53bfdd32639aa8ee05137492eab23fed22addff0efacddc0b00008097769b6e2675966491e44d920f493e27b948373f701f000000000087645e1d0000000764511d000050605a1d00008c82833d0000e0bf36d5018cc26d92fbea080000803fb4ae0e00000000001809f7e803000000c0ef99a10100cf62521d00c08b5b24f9521dc15e96d501cf6499e4a13a8247354966c50d749b7535c50decef28495b1d01008c5e5b1dc04f2de34bfa3e3a4df2b13a82bd2cab039ec932e65e43d0c4dc0b000080d7759b6eb6dba4bb576b9ae47d924f492e925cc7014c000000008cd7bc3a0000000ec8ac3a0000a080192400f01c6eab030000a04736d5018cc6ba3a000000e00f3c2459554700000000008c847bf401000000e0f7ccd000806731a90e00e0454d93b4d511ece522e359ec6f932cab2378d451fc7ee88bcb2477d511eced24c959750400305a4d92e3ea08765cc7a6427d64ee351c1719cf66d59b74bfabe937732f000000fa60936eaed824394d324bf236c93f49be26f916f70a00000000300ef3ea0000003820efaa0300000a98410200000000f4933d1a01008021595707000000000000000000000000fc89497500002faa89032886e02edd7b3526ab24d7d5113cea24c959750449926575007fa449322b6e0000c66791e4bc3a821d0f71bdde574d92a3ea081e35c6b9d765929bea081e65ee050000401f6dd36d627e996eee384ff226c987249f935ca49b3b3cd4e401000000c093ccaa030000e0c0ccab0300005e99674901000000e079adab03188d5575000000c01fb0860100000000783eebea0000000000e8b19bea0000603c26d50100bc9845922fd511ece5ac3ae0852c933c5447f0a8260e8aec83db2417d511eced28495b1d01008cca34ae2ffa6a99645b1dc18e45ccbd8662591df0429631f71a8226e65e0000000cc36dba1971936ef635fdffecdddf551b69baf6e1db5e9ca31d81d511a08e003902d3118c26023311b8886070045b1dc1e0085a44d010c11619880cbe83c29f3d3646c2467aeacf75ada525cfb20f7e6be82af43eaa7a2bc9ff24799bf65a823f93dcd6a401000000c056a7d5010000303293ea000080039a57070000000000f0a44fd5010000003bbaaa0e000000000000000000000000788ed7d50100ecc524c9b23a829d7c4cb2aa8ed8934d92a63a82ad8ee37cd1154d92bbea0876769ae4bc3a0200188c26c99bea08bef3293614ea2273affeb84872531db127eb987bf581b9170000007db6497b4d519364916496e45592df93fc33edece53ac97d491d00000000fcb769750000008cc8bc3a0000e08026d501000000003030b7d5010c8efd1a0100803eb84dbba71300000000002f635d1d00000000001d76531d00000cc7ebea0000f6a249f2a63a82adeed2feac86ec32c97575045b9d2639af8e2049b2a80ee0599a78c82a00f0ebe649de5747f09dfbf87cde554dccbdfae036e65e7483b917000000437393649976f6324f3249f23f49de26f957923f636601000000c0e14dab0300006044a6d50100000734ab0e000000008081d95407303857d5010000003b58560700000000000cccba3a00000000003acc7d7c00c08b795d1d00c08b9b27795f1dc14e1619c7227f91e4be3a82ad9a78584d17ac927cac8e6067c771933900f06b26f179a2ab1619c79abd6fe631f7ea8b4575c0812c62eed5074dccbd00000018b64ddaeb0d2ed3ce2be6495e25f92dc9db2417493e25b92da903000000600ce6d501d003abea00006030a6d50100000734ab0e000000008081b1bf1e2f6d13f730030000ddb7aa0e00000000001890bbea0000000000e8b875750000301cafab030078519324cbea0876f231e3b931719da4296e60bbe3387f74451317d1f5c96992f3ea0800a0b79a246faa23f8cea72457d5117cc7dcab3f3e26b9a98e389075ccbdfac0dc0b000080b15aa7bd3ea94972966496e45592df93fc91e422ed3cd443a100000000f855d3ea000000189159750000c0014daa03000000006060c6b23f1887b5ac0e00000078c25dac8701000000005ed2ba3a00000000003a6e5d1d00000cc7ebea00005e5493e44d75045bdda5fd598dc96592ebea08b63a4d725e1d41364916d5113c4b130f7b02009e6f9ee47d7504dfb98fcfe35dd5c4dcab0fc63af7baad8e602b732f000000f8e226c955da39ce59daefbb5f25f93dc91f492e927c8a990700000000bb9b56070000c0881c2799544700001cc869750000000000005badaa030000009e70551d000000000030309bea0000000000e838333400e0c5bcae0e00e0c5cc93bcaf8e60278b8c7371bf48725f1dc1564d3c34b20b56493e5547b0b3e324cbea0800a05726f1f9a1ab1619e79abdebe631f7ea8b45c6790c2daa03d84913732f00000078ca4ddacdd69b24674966495e25f93dc91f492ed25ecb705bd40700000040779d56070000c0c8ccaa0300000e605a1d00000ccaaa3a0000003a62551dc020dd24b9ab8e000000f88155750000000000c0c0dc54070000000040c799a101002fe6757500002f629264591dc14efecc786f4a5c27698a1bd8ee38ce275db148725f1dc1ce4ee21c0700ecae49f2a63a82ef7c4a72551dc177ccbdfae363c63bf7ba4972511dc156e65e000000f0736ed2ce4e9b24674966495e25f93dc91f69e7227f26b92eea03000000a01ba6d50100003022b3ea000080039856070000000000b033fb380200005d741feb150000000000000000000000a0a75e570700f022ce93bca98e60abfbb43fab31bb4c725d1dc156a7f1df6a176c922caa2378960ff1c0270060bb7992f7d5117ce73e3e7f77551373af3eb84bfbb31ab326c96d75045b997b010000c0cbb949bb397b9376be3a4ff22ac96f49de26f957928f69af15baaf0804000000e0a0a6d5010000302293ea0000800398570700000000c000dd5407305857d5010000008f58550700000000000cd0aa3a00000000003aecba3a00001896a3ea00007ed92cc987ea0876b248b2a98ee8804592ffab8e60ab26ed863febda8cd1bb4a3b103cad0e6167cbb4bf9b01001e3349fb7981ee59c49abd8be649de5747b093451c4349fbffc3dfd5116cd5c4dc0b000000f669fdf05a3df277f324d387d7ece1fde4004d00000000ecdf3c36950600804399570700001cc0b43a000000000006c85e61eccb2ac97d92e3e20e000080af5d5507000000000000000000000000fcacd7d50100fcb26575003bf91437247eb64e72511dc156c7717ee98a45da8d97e88793244d750400d0594d9237d5117ce763acd9bb6812ebd2bef833eda6c1243731f7ea03732f000000a8b34abb2e6f929c2599257995e4b7246fd3ce563e26b94e72571108000000c04f9b54070000c0884cab0300000e605a1d000000000003e3be4df6cd9e8e000040d758a70000000000bcbc5575000000000074d8aa3a00001896d7d50100fc9226c94975045bdd27595447744c93e4b63a82ad4e939c57479075da6386fef89064561d010074ce3cc9fbea08be73179fb7bbaa49f2a63a82adee6376f0ad26e65e7d60ee05000000ddb24e7bc3549376cd3e4f324df22ac9db247f24b948f26792ebb4732900000000bac57d14b0dd5d7500003018eeb70000c6e0b43a000000000006665d1dc0e05d55070000007ce536c9a63a020000000000000000000000e0671d550700f0d366493e5447b09345dc8cf8984592bfab23d8aa49bbe9cfba3663f42e939cc5c6fa7db28c87af02005f4cd27e3ea07b16b166efa27992f7d511ec6411c7d0631631f7ea8326e65e000000d007ab87f7c71e5a354f3b839f25993ebc66498ef79f05000000c037dc4301dbad93bca98e000006639e2fdfa702000ccdb43a000000000006685d1dc0e0adaa03000000beb2ac0e000000000018a0dbea0000000000e8b89bea000060585e570700f0d396d501ece45392abea888eba4972511dc156c771bee98a457500cf7292a4a98e00003aa389874d77d1c7d8e4b48b26b10eed0b73af1f33f7ea07732f000000e8bf55da195593f6ba8a79da19e3ab246f93fc91764ef36792eb24f7874f04000000188de3ea000000189969750000c01e4dab03000000006080d6d5010cde26edfe740000005d60ef6c000000008097b7a90e00000000808e334303005ed4ebea00007e4a93e4a43a82adee939c5747745c93e4b63a82ad4ee3bfe52e5827b9a88ee0593e249955470000e5e649de5747f09dbbb46b52baa749f2a63a82adee932caa233aee32edb9866e33f702000080e15aa5dd44be493bcb9a2799247995e4f7246fd35e87f131c9755cc304000000f012e6d50100003022ee610600866c5e1d00000cca7575000000748407df7108abea00000080b4fb42afab23000000000006e8a63a00000000003ace0c0d00785147d501003cdb2cc987ea0876d2c48d88bb5824f9bb3a82ad9a2457f1df74b526c9599293e20e76b78c074001c0984dd27e8ea67b16b1896e17cd93bcaf8e60278b3886b6d9a4fdffe9afe20eb66b62ee0500000063f3f9e6acd5237f37fde6354b3bef9f2539de771800000040cf4daa0300006044dcbf0c000cd9b43a000000000006c883ef3884ab24ffae8e00000046cfb3010000000000f6c3b30b01000000e069666800c08b7a5d1d00c0b32dab03d8c97592cbea889eb84972511dc156c771fee98a457500cf7292a4a98e0000ca2cd37e96a65b3e26595547f09d49ac3bfbe2536cc0b5ab55da730edd66ee050000007c6d9d76aeb34cfb7dff599279da19e6ab24bf27799bf67aa78bb4d7895d1f3a12000000a0a366d501000030223e7f03004336ad0e000000008001f2e03b0e619de4b63a020000183dfb670300000000ecc74d7500000000007498fbaa008017f7ba3a00806769929c5447b0d57d92457544cf3431f8e883d324e7d511e426c9457504cff2211e020500637496e45d7504dfb94bbb06a57b9a246faa23d8ea3e6603cfd5a43df7d06de65e000000c0ae6e92acd2ce7d9a24f387d7ab87d7db87d7c5c3ebfae1050000003006d3ea0000001891e32493ea0800803d39ad0e000000008001baa90e6034aeaa0300008051bb4fbb3f1000000000002f6f531d00000000001d667e0600bcb8a3ea000076364bf2a13a829d3449d6c50d7d749ee4afea08b66ad26efeb3aecd18bdcb248b246f8a3bd8dd32edef7200601c26697fffd33d8bf8e2bd8b6649de5747b093266602cfb5497bee31f7eabe26e65e000000c0af5b7df3fead59daef113ebf4fbf7ab90e04000000e8bb69750000008ccc2c1eb00d000c8ffd590000000000faed2a9ea9010000d4b9aa0e000000000018b09bea0000000000e830f33300e0c51d550700b0b36575003bb94e72591dd153ab241f93bc2feee069c769cf47f3da8cd1db245924f9abb883dd9d24691e5e00c0f02dd37e76a65b3ec64339bb6a591dc04eccbd7ede2ae65e7d60ee050000001cc2e79bc3563ff8fb4992d957efc99779c52cbe7f00000000ba6db6fd9fc0a8ad929c5647000083328f7b650080e199560700000000c0005d5707302a3749ee92bca90e0100004669551d000000000030609bea0000000000e830f33300e0c51d550700b09326c94975043b595407f45c93e42c3695e9bad324e7492eab43466e95e46392f7c51decee4392abb41b680100c37596e45d7504dfb94bbbe6a47b9a987bf5c17dccbd7e551373af3e30f702000000aa6df26513fcab1ffc9be937af4992d9c3bb792b00000050e9b83a00000046665a1d0000b007b3ea0000000000007ed955ec9d0e0000d4f8d19e3d0000000000fc9adbea0000000000e8b89bea000060788eaa0300d86a96e44375043bb948b2ae8ee8b94d924592bf8a3bd8ae497bc3edba3663f49a246749de1477b0bb653c280100866c92f6f73dddb348bbe6a45bccbdfaa38919c0af32f7ea8f26e65e00000040b7adb37d7631ffe67d96f67b8c695c6702000000ecd73cc9aab8010000c6c23dcb00c010f98c0300bc340ff8000000d7f57178ab24efab23000080d1b98ebde80100000000f6c5fc15000000009e66860600bcb8a3ea0000b65a5607b093db244d75c440ac927c8c8d65baee38edf9695e9b317a9b24e749fe531dc2ce4e925ca6fdb90100c3b34cfb59996ef9189be676d5b23a809d5ca75dc7f0eb5649fe4cf28fe20e9e66ee050000000cc1ea9bf76f4d1f5e9324b3afde93e4747f59000000c0084caa03000060444eaa030000f660b6fd9f00003c8b077c0000001cde5592fbd89f13000038acabea00000000008001bba90e00000000808e334303005edcebea00009ed4c40323fa62511d30304d92bbea08b63a4d725e1d41ae927caa8ee059de2799574700002fee2cc9bbea08be7397768d49f73431f7ea8b4575c0c09ca7dd50996e3b8dfff601000080615b2759a5bdeea4493bb79a3fbc5e3dbcde3ebcfe95e422c99f49aee3ba2e000000e069b3ea00000018199fc1018021992479531d010000000003b4aa0e609456d5010000c0e85c550700000000000cd8a63a00000000003ace0c0d00787147d50100fcd02cc987ea08767291e4a63a626036491649fe2aee60bb26edcdb7ebda8cd15ba4fd191cd766f00ccbb4bfeb0d7d01601826697fbfd33d8bf8ccd545e65efd71116bfe97f679eef59fe20eb6bb4c3bf7f27b0400000018abd537efdf9aa49df77e7e4f92f9c3fbe9bea200000080ce9b54070000c0c8cc62bf0b00603866dbff0900000000003d7195e45d75040000301a77b1973600000000c03eadaa0300000000a0c3aeab030080613aaa0e00e08796d501ece43649531d3150ab241f93bc2feee069c769cf57f3da8cd1db245924f94f7107bb7b93f6f7c779710700f03296693f1bd32d1771a34a572dab03d889b9d7fe5c25f9149b2a77dde7b9d759710700000040576df2650e7ff5837f334b32f9ea7dfaf09a2439d96b1d0000005065561d001db6a90e000006695a1d0000f082cc1701000000603f56d5018cd25592ffad8e00000046e347fbdf000000000000000000000000f4d2517500008f6ae2e1ec7db1a80e18b826c9599237c51d3ced34c97992cbea9091bb4af229c9bbea1076f63eedcf6d55dc0100fc9ab3f80cd645b769d794744f1373afbe5854070cdc22c93ac9716d065bbc4bfbbbde0674000000003fe7e6e17df583bf9f24993dfc79fecdfb2ce667000000d04793ea00e8b09bedff0400e0d9e6d50100002f68b6fd9f0000000000cf745f1dc0686d925ca7ddc31e000060dfec1f0c00000000b05fabea0000000000e8b055750000304c47d501007c679ae44375043bf9180f0cdbb74d92f324ffa90e61ab26ed8db8ebda8cd13b4ffb90a1e3e20e76b74cfbf0844d710700f07326697f9fd33d8bea001e358bb9575f5cc4dc6bdf3669cf55e65eddb74c3bb7b7760700000078799b7cb9696ef5837f334bfb9dccf49bd724c9c9fed2000000809f64bd0e00008735ab0e000078413edb0000fbb0ae0e00008062f613a3d25592d3ea08000060f0eee3c1ef0000000000fb745f1d00000000001db7a90e000086e9a83a0080ef2cab03d8c95d92a63a6224ae927c4af2ae3a84271da73d7fcd6b33466f9df6dcf4efda0c9ee14dda9fd979710700f07396693f0bd32d17b1516e572dab03d8c96dccbd0ec5dcab1f3ecfbdce8a3b00000000c66adbcc7f9264f6f0e7f937efb3f82e070000002a4c62a31c00003894e324d3b4f7990300f4dd497500003048ebea00000028e67a3e2a5dc57ee90000c0fe5d550700000000000c9c678302000000c0d3ccd00080bd38aa0e00e0bf9c2739ad8e60278bd874e790166937fe3caecd608bd3b4e7b1cbea9091bb4c7216bf4ffae47dda9bd957c51d00c0f39c2579571dc1776e9334d5113caa890787f5c5a23a60641631f7ea8377697ff7db8c0e000000a07b36f972cdc5ea07ff6696649264facd6b12b36b000000d88759dc2301000087344b7b5d3a00409fcdab030000000060a03cf88e4aebb47b44ba97130000d8a755750000000000c0c06daa0300000000a0e3d6d50100c0301d550700f0ff4d9334c50dece663dc7478689b248b24ff29ee60bb26c9550cb3aa2dd26e0c765cdcc1ee96691f0ee5624a00e88749dadfdf74cfa23a8047cd927ca88e60271f63a3e94333f7ea8f65da39beb53b00000040ff6c9b7b4ed2ceb29364fecdfb2caec101000080e79a54070000c0c8ccd2dee30f00d067b3edff0400000000f809f64ca2da2ac949750400003068aea30500000000d82fcf360400000080a7adab030080617a5d1d00c0ffb78c879cf7c15d92a63a62a4ae927caa8e60abe3b4e7336aad935c5647f02c6fe2f70b00f4c955ace1bbe8226e4ee9aa6575003b31f7aa7395e4ba3a82adccbd00000000866b93f60168abb473d226c9fce13549f22ac9ef49de26f957daef24fe4c3bd7bb3b6829000000f4c3ac3a003a6a531d00000cd6bc3a0000e005982b02000000c07ed89f8f6acbea00000060d0aee39e1d00000000807d5b5707000000004087798e1d00b03747d501002449ce939c5647b09345dc70586991f642a3e3da0cb6384d7b5ebbac0e19b926c9599293e20e76f73ec9559255710700f0346bf86eba4dfb1998ee69625dd2178b987b555aa4dde4dbdcabdbdea59db75c55870000000070709f1fd2b7fac1df4f92ccbe7a4f92f9c3bbef960000000048becc9800005eda6cfb3f0100e83c9f6900000000603fd6d5018cde4d92fbd8630d0000d80ffb040300000000ecdfba3a00000000003a6c5d1d00000cd7517500009926698a1bd8cd9ff9f1c3e7398c4d924592ff1477b05d93f606dd756dc6e82d92fc5d1dc1b32cd33e506153dc01003c6e1a6bf8ae5a5407f0a859920fd511ece463ccbdaaadd3fe8ef9776d063b58a6fd4c60ed0e000000c0d736f93267fdd1830d6649268fbc4f93bcd96f1e0000001cd4bc3a00000046e638ed774eebda0c00805f72521d00000cd6ba3a0000008aadab0320ed7d97ffa88e00000006e947fbbc0000000000f0726eaa0300000000a0c3cccf0080bd39aa0e0020cbb40f83a0dbee939c574790a4bde9f3539277d5213ce938edf96d5e9b317a37492e927ca80e61676f9234f13b0700ba6a196bf82eba882fd5bb6a591dc04eeed2ae43a87799e42cc96975084ffa3cf73a2bee00000000a07f3e7f9fb1fac1df4f1f5e9324b36fde4ff69b06000000000040cfcd92acab2300007ed2bc3a000018b4757500000014baad0e80075749fe511d0100000cce5d7c17040000000070089bea0000000000e830f33300606f8eaa030046ee3cc96975043b59c402bd4b16696ffe3caecd608bd3b4e7b9cbea90916b929c253929ee6077efd36ea8b52aee0000fe9b357c37dda6fdcc4bf734b10ee98b45ccbdba6491e426e65e5df72eedbce5aa3a04000000804159e7cb43117e347b9a7ff33e4b3279783757040000a02b66d50100003042b3b8be1900e82f334500000000d80ffb8bd115becf060000f6c15a030000000060ffaeab0300000000a0e356d50100c0701d5507008cd8344953dcc06e3ec5cd865db3497bfcfcbbb883ed9ab4c7cfba3663f4ce93fc551dc1b32cd33e5cc1266f00d00dd358c377d5a23a8047cd927ca88e60271fe3a294ae59c7dcab2f96693f2358bb030000007048ab6fdebf354b32f9ea7dfad5ebcd3ec3000000e02bc7d50100003042f3ea0000805f30ab0e000000008081baa90e80af7c4af2ae3a0200001814cf940300000000d83fcf680300000080a799a101007b73541d003062cb78105b1fdc27595447f0a8cb2467494eab4378d271daf3ddbc3663f456493e26795fdcc1eede2469929c17770000ad65ace1bbe82236c5edaacbea0076729f76dd41f7987bf5c3e7b9d7597107000000007cedf37727ab1ffcfdf4e1354932fbe6fd64bf690000008ccc34c9bab801bae82eed7d4300002fcdf5e700409fcdaa030000000060a03cf88e2eb94af2ae3a020000188cfbfc787f1500000000005e8ee78502000000c0d3ccd00080bd39aa0e0018a9f378f8435f2c62839d2e5ba41d9c1c1777f0b4d3b4e7bdcbea90916b929cc5030efbe47dda9bddaf8a3b0060ecace1bbe936ed675cbac731d31f8b987b75d922e65e7df02eedbcc5da1d00000080be583fbc921fcfb5e63f7837ff070000e039a6f9b20605be58c7fd5d00c0fecc62e34a00a09f4eaa030000000060a056d501f095ab24ff5b1d0100000c86fd8001000000000e635d1d00000000001d76571d00000cdb517500c0084d9334c50dece653dc68d875ebb4c7d3bf6b33d84193f6785ad7668cda26c922c95fc51d3ccf32ed67874d6d06008cd634d6f05db5a80ee051d33866fac2dcabfbd631f7ea8b65acdd010000001896d537efdf9a2599fce0fd78cf6d000000000000fcd82cc94d750400c033cdab03008041bbae0e00008062f645a24b36496e939c548700000083b0aa0e000000000018897575000000000074d8ba3a000018b6d7d5010023b48c0774f7c17d92f3ea087672191b83f6c171daf31fb556493e5647f02c8e1d00a8b58c357c175dc4c334bb6a19c74c1fdc27595447b093cbb41b2dd36dd6ee000000008ccd4ddaeb902e933449ce92cc934c92bc4af25b92b749fe99f67b9d3fd35ee37777f0520000002acdab030000608466d50100003f615e1d00000000000366cf3eba66591d0000000cc655750000000000c048b80609000000007eccfc0c00d8aba3ea008091394f725a1dc14e9a24ebe20676b7483b44392eeee069a769cf8397d52123d7a43d661c2ffdf12ec959dcfc0e0087660ddf4db7693fd3d23d8e99fe5824d95447b0b34592bfab23d8cada1d00000000be58e7e9eb2fa7dfbc2649660fef277bec02000000000018ba79750000c04f98550700000000c040dd5507c02356d5010000c0205cc71edb000000000087701ff3580000000078caba3a000018b6a3ea0080119926698a1bd8cd7592cbea089e659df6f8fa776d063b68925cc5d0abd226c922c97f8a3b789e65dacf122eb80480c398c61abe8bee939c5547f0a8691c337df129edba9cfeb8497291e44375085b2d63ed0e00000000bb58e7e9ebc72649663f783fd9731b0000002f67561d001de5fa2200609f7c970200f4d1bc3a0000000000066a5d1d008fb8497297e44d75080000d06bf6d80600000000388c9bea0000000000e83833340060af5e5707008cc832c97175045bdd27595447f0532e935c5747b0d571daf321b5ae927caa8ee0591c3b007058cb58c37751131be176d5328e993e30f7eaaf26c96d75045b59bb03000000c0cbd82459a5bdc6a949729e649e6496e45592ff49f236c91f492e927c4c7beda0392a000040b74caa03a0a36c2661f3728300002000494441540500ecdbbc3a0000e019a6717f2a00000000ec8b6b95e8aaabea000000a0f7ac2b00000000000e635d1d00000000001db7ae0e000086eda83a006024ce939c5647b0932616e37db648f27fd5116c759af6bc78591d32728bb4e73b9bf8f7c7bb246771233c00ec9b357c375dc71aa2ab1c33fdd124d95447f0d31649feae8e602b6b7700000000d8bf4d92d5c39f1f9bc54d92cc1efe3cffe6dd771a0000000000c0d0cdf3e5bb140080ae9b570700008377531d00000085ec3946575d25795f1d010000f4d65d3c5f0e00000000e050d6d50100000000d071ebea000060d88eaa030046609aa4296e6037d7492eab23f825eb2417493e1477b05d937693a0756dc6a86d922c92fca7b883e759a6fd6c61033800d88f69ace1bbe83eed6757ba671ac74c5f987bf5df4dccbdfa62196b7700000000a8b449b27af8f3ea91bf9f2499fde0fd64ff79000000a3715a1d0000002335ab0e000078069f5d00807d73cf37000063b6aa0e801f58a5dd63f2b8b8030000e8a7abea00000000008011b9a90e00000000800ebbad0e000086efa83a00600496b101461fdc27595447f0229a2467f120f9ae3b4e7b7e9cd7668cde5592eb7828689f7c3e76ce8a3b0060a896b186efa226c9bab881c72de398e90373afe16862eed507d6ee00000000d06d9b7c79f8e2630fa5982499fde0dd7c160000000000e8ba79750000c033ccab030000000060c0d6d501f084ab24ffa88e0000007a69591d00000000003022ebea0000000000e8b075750000307c47d50100037796e4b43a829d5cc6427c481649feae8e60abd324e7698f3fea2c92dc24392eee6077efd27ec6b8aa0e01808169620ddf45d7b166e8aaf33866faa289b9d7902c62eed507d6ee00000000d05f9b24ab873f3f36e39b249925993ef27ab3df34000080de99a45d67015f382600807d3b4efb5dc64d750800c00e4eaa030000000060c0d6d501f084ab24ffa88e0000007ae73eae9105000000003824335900000000f831f3330060ef8eaa0300066c9264591dc14e6e9334d511bca89b2417493e5487b0559376a3a0756dc6a8add3fe1cfe5d9bc1332d934ce3a19500f05266b17ee8a2fb248bea081e358d594a5f5c27b9ac8ee045997bf5c732d6ee0000000030449b24ab27fe7efacd6b96f69ae25992e37d8601000074d02c4fafa1608c6c2805001cc22c3e770000dd37af0e000000008001bbad0e802d56d5010000402f5d550700000000008cc85d75000000000074dcba3a000018bea3ea0080015bc683a6fb62511dc05e3449ce929c1477f0b4e3b4e7cb796dc6e85da63d5e4eab43d8d9e763e7acb803008662591dc0a39af8d2bcab9631f7ea83fb987b0dd565da9fed9be20e9e66ed0e00000000e3b4ced3df71cd924cf2e59ab9cfefaedd0200000000005eca3cee970200ba6f5e1d00008cc2aa3a0000008a6caa03608b4d924f49de5587000000bd72551d00000000003022ebea0000000000e8b875750000307c47d501000375161b5ef4c545929bea08f66691e4efea08b63a4d729ee4b23a64e41669cf87c7c51decee5ddacf1c6e9007805fd32439a98ee03bd7b146e8aaf3b4eb38baef322e3c19aa4dda75fc5fc51d6c67ed0e000000007cebf335abab47fe6e9264f6d5fbf4abd79bbd97010000bcbc69750000008cd4bc3a00006007f3ea000000000018b0557500ec6015cff30000009e67551d00000000003022abea0000000000e8b855750000307cafab030006689264591dc14e6e9334d511ecd54d928bea0876d2c44329abade39cd847cbb49f3d00809f334bf2a13a82efdc27595447f0a869ac1bfac2dc6bf856493e5647b09365acdd0100000080dd6cd2ce7fafd2cef91749e669bfa37995e4f7246f93fc2bedb591d769bf13000000e8aa69750000008cd49bf83c0e0074dfac3a0000000000066c5d1d003bb8aa0e0000007ae553da7d390000000000388c7575000000000074d85d750000300e47d5010003b44c725c1dc14e16d5011c4493e42cc94971074f3b4e7bfe9cd7668cde65da73a3e3a53f3e1f3b67c51d00d057cbea001ed5c40d275db58cb9575f2caa03388826ed7af04d71074fb37607000000005ecacdc3fbea91bf9b249925997ef39ac5f73b000000d02537dbff0900c08b98c5fd39004077b99e0100000000f66b5d1d003b5827b98dfdd0010080ddacaa03000000000046665d1d00000000001db6ae0e0000c6e1a83a006060ce92bcab8e602717f1a0af31394ff25775045b9da6fd595d56878cdc22c9dfd5113ccbbbb49f41aeaa4300a0679ad8a8b28bae634dd055e769d76d749fb9d7786cd2aee3cdbdbacfda1d00000000d8b74d9e7ed8c63cc924c92cc9f4abd79bbd560100006337ad0e800eda54070000a3318feb970180ee9a57070000a3b1ae0e00008022f621a32fae625f5000006037ae8b0500000000382cd72001000000c08f999f010007f1ba3a006040264996d511ece42ec965750407b54af2b13a829d34f170ca6a37492eaa2378b665dacf2200c06e66493e5447f09dfb248bea081e354dbb5ea3fb6ee3673536ab987bf5c532d6ee00000000409d55da87713469bf939ba7fd0ee85592df93bc4d7bddd8c724d769afb5050000f855d3ea00000018b179750000c013e6d50100c068acab030000a0c07d924d7504ece8aa3a000000e885dbf8de0700000000e0905c8304000000004f5b57070000e370541d003020cb24c7d511ec641117ae8c5193e42cc99be20e9e769cf67c3aafcd18bd26edf17252dcc1ee3e1f3b67c51d00d017cbea001ed5c417e55db58cb9575f2caa0328d1c4dcab0facdd0100000080aeba79785f3df277b32493b4d7f44d1efef72cbe3b020000000080ae3b493bdbb7b70600d045f3ea000000000018b09bedff043ae326c95deca10600003c6d551d00000000003032ae410200000080a799a1010007f1ba3a006020ce92bcab8e60271fe386c2b1da24595447b093d3b4e7556a2daa0378b67749ceab2300a0079ab40f60a45bae935c5647f0a845da751add7711179b8c95b9577fbc8bb91700000000d02f3769afbb6dd25e9b344f3249f22ac9db247fa4fd8ee2cfb4dff90100007c6d521d001d755f1d00008cc6bc3a0000e011b324c7d511000000003060f622a36faeaa03000080ce5b560700000000008c8c6b9000000000e069666800c041bcae0e00188049dca0d61777691fa0cd78ad927cac8e6027cb784865b59b2417d5113c5b93645adc00005d364bf2a13a82efdc2739ab8ee051932497d511ece42e7e5663b74af26775043b59c6dc0b00000000188655da870336491649e6495e25f99f246f93fc33ed3568d769bfcb000000c6e7a43a003acac65200c0a1ccab0300001e31af0e000000008081db5407c033adaa030000804ebb8f7b7100000000000e6d5d1d00000000001d761ff7f1010007f2ba3a00600096498eab23d8c92216dcb40f4af720f4ee3b4e7b7ea5d6651c2f7de3d80180a72dab0378d422d6eb5db58cb9575f2ce23822394f7bd111dd66ed0e000000000cdd26ed43039769afd99c2799267995e4f7247f24b948f26792ebc3e70100000000c068ccab0300001e31af0e000046c3358a00008cd5aa3a009ee92af64f0300007eecaa3a000000000060846eaa0300000000a0c3cccf008083795d1d00d0736749de5547b0938fb1690ead4d924575043b7997f63c4b1dc74b3f9d2639af8e00800e6a929c5447f09d4fb1f94f57997bf587b9179f59c7f787b9170000000030563769bf1f6cd2ceb4e7495e25f92dc9db241749fe8c87c60300000000c04b384932a98e0000f8c6bc3a0000000000066e5d1d003f61551d00000074963dec01000000000eefa63a00000000003accfc0c003898d7d501003d3649b2ac8e6027f7691f740d9fad927cac8e6027cb78284eb5551c2f7dd424991637004097cc927ca88ee03bf74916d5113ccadcab3fee62eec57fbb4af2a93a829d2c63ee0500000000f0d93aedb56a4ddaef10e7495e25f92dc9db241749fe4c725dd0060000fc9a79750000008cdcbc3a0000e02bb324c7d511000000003070ebea00f80957d50100004067adaa03000000000046e63ec9a63a02000000003a6c5d1d00008cc7ebea00801e5bc646c87db1888b55f85e93e4ae3a82ad8ed39e6fa9d5c4f1d2378e1d00f86fcbea001eb588f57a572d63eed5178b388ef8de22ed0d7c749bb53b00000000c076ebb40f1369d2cebfe7495e25f92dc9db2417493e25b92d68030000809fb5aa0e000046655e1d0000f095797500000000000cdc757500fca4abea000000a0933ec5fedb00000000008776531d00000000001d678606001cccebea00809e3a4bf2ae3a829d7c8a4d4778dc26c97975043b7997f6bc4b9d4d92457504cf761ae73900489226c9497504dfb15eef2e73affef8180fb1e771d6f1fd61ee0500000000f073d669bf2769d2ce5967495e25799be49f69bf47f1c04d000000000070bd3200d02df3ea0000605456d501000050605d1d003f6913f783010000df5b550700000000008cd04d750000000000749c191a007030afab03007a689264591dc14eee932caa23e8b4ab249faa23d8c932edf9973aab241fab2378b626c9b4b801002acd937ca88ee03bd6ebdd65eed51ff7693fefc38f987bf5c732e65e00000000002f659576ee7a9ef6fbe257497e4bf247928bb40f31bcaf49030080d1725d040000d47a13f71a0300dd31af0e0000000080815b5707c02fb8aa0e0000003ac73a0100000000e0f0d6d50100000000d061f74936d51100c078bcae0e00e8a16592e3ea0876b2884536db2de261e47d709cf6fc4bad268e97be71ec00306693f83dd8558b58af77d532e65e7db188e388ed16b18eef036b770000000080fd5aa77d284993649ef6bbe4df92fc91e422c975ccd30100609f66d5010000fc3ff6eef02c6e2c5ddbe8732a01ea440027023311b826029808461d014c049633c019a833800c44069041914191c1f74333fdf534600b9baa572aad15c17d5d20905e6ded0dd95407000064b827f10d2b00000000ec575f1d00bfe0b63a0000009894c70cfb45000000000070580fd501000000003061e66700c041adaa030066e632c9457504a3dcc546238cb34bd2544730ca4586bfc3d471bdccd3e724d7d5110050a04d725a1dc10b9ed7a7cbdc6b3e5c478ce5397e3eccbd00000000000e6b9be17d4b9b6493649de46f497e4bf22dc34126000000b02f7d750000b0389bea000080b827010000008043d85607c02fd82679aa8e00000026a3af0e000000000058a887ea00000000009830f33300e0a056d5010033b24e72531dc128cf499aea0866e536c95d7504a37419fe1e53c7f5324f6d92b3e2060038a44d92abea085ef0bc3e5deb0ccf5b4c9feb88f7ba4d725f1dc1285dccbd00000000002a3d6498d55e27394ff23f49fe9ee46b863573cf65650000000000f06b36d5010000714f02001c5e5f1d00000005b6d501f08b6eab03000080c9e8aa03000000000016e839c9ae3a020000000026eca13a00005896557500c08cb4494eab2318a58d052abc5f13878bcfc1497c203c054d5c2f73e3da016049d6f17f6faa9a785e9faa2ec33d23d3d7c475c4fb35f11c3f079edd0100000000a6a7cfb02ef932c3bbe8bf25f95792bb98bd0300c058ebea00000020a749ceab230080455b27f95c1d010000000047eebe3a003e40571d0000004cc2731cf00e0000000050c16c1600000000be6f5b1d00002ccbaa3a0060263649aeaa2318e53ec94d7504b3b44bd2544730ca4586c3e0a9e37a99a7cf49aeab2300e000da0c872a322d77496eab2378d56586e72ca6cf75c4cfda66f8ffc8f4997b01000000004cdb438675ca9749d649fe96e45f19dee33c17760100c0949d570700000049867d530000aa6caa03000000006001b6d501f0011ee23b2d0000c03edc000000000055faea000000000098b8be3a00005896557500c00cac9374d5118cf29ca4a98e60d66e331c22cef47519fe3e53c7f5324f6d92b3e20600d8a74d92abea085ef0bc3e5de65ef3e13ae257dd24b9af8e60942ee65e000000000073f19061067f9961b6fbb724ff8a993c000000dfd7570700008b74591d00002cdaa63a000000000016605b1d001fe4b63a00000028e7b90000000000a0c6b63a000000000026eca93a0000589e557500c00cb4494eab2318a58dc529fcba26c97375043f7492a4ab8ec0f53243ae1d008ed93afecf4d559364571dc1abba0cf7884cdf755c47fcba269ee3e7c0b33b00000000c07c3d24b949b249f2bf49fe91e45b7c3c0c0000000040bdcfd50100c0a25d560700008bd457070000c081f5d501f0416eab03000080727d750000000000c0426dab030000000060c2b6d50100c0f2acaa0300266e93e4aa3a8251ee331cf80cbf6a97a4ad8e60948bd89cbeda2ec9757504eff6397e6e001ca736c96975042fdcc506a0537599e1b98ae9bb4fd255477014b631f79a0b732f0000000080f9db6578577a9de42cc9df92fc2bc96361130000000000cb668d320050e12cbe0107000000804378a80e800f62ff4a000058b6bb0cfb35000000000070787d7500000000004c585f1d00002ccfaa3a0060c2d649baea0846794ed2544770546e92dc5747304a97e1ef3575bab85ee6a84d725e1d01001f6893e4aa3a82173caf4f97b9d77cb88ef868e65ef3d1c5dc0b00000000e0983c6498d39f27f9df24bf6538380500008e9d6f17e075cfd50100c0226daa03008045baac0e000000008005784eb2ab8e800fe4bb2b000058aebe3a000000000060a11eab030000000060e21eaa030080e5595507004c589be4b43a82516e926cab23383a4d1c0237072749baea085c2f33e4da01e098ace3ffda545dc646b653d565b82764fada987bf1f19a788e9f03cfee0000000000c76b9761067c99e47f92fc23c9ef31bf0700e03859ab06afb3d1140050e1b23a000058a44d750000b048d6e30100b034d623716c6eab03000080329e0700000000006a6cab030000000060e2b6d50100c0f2acaa0300266a93e4aa3a82511e93b4d5111ca56dfc6ecdc5451c96536d1bd7cb1c7d8a9f1b00c7a14d725a1dc10bdf92f4d511bcea32c37314d3779fe4a63a82a3b48de7c1b930f702000000005886db244d9275927f24f93dc9736510000000000047e934c959750400b038be6905002a3c54070000c081b907e6d8f4d50100004089c738dc1d00000000a08a354800000000f07d666800c0c1adaa030026689da4ab8e60b4a63a80a37693e4be3a8251ba0c7fbfa9e37a99a72f49ceab2300e0176c925c5547f0c25392b63a8257997bcdc773ccbdd8af9b0c1bb2317d5dccbd000000000096e436c37ba275927f24f93dc3bb230000000000f80897d50100c0a2b8f70000000080c370f01dc7661bfba40100c012f5d50100000000000bd6570700000000c084dd57070000cbb4aa0e0098a036c9697504a37c8d4d71d8bf260efe9e8393245d7504ae9799eaaa0300e027ade3ffd854354976d511bcaacdf0fcc4f4b51936ce857d6aaa0318c5dc0b0000000060b96e33ccf3d749fe91e4f7d21a0000003e926f6301802a9bea0000605136d50100000000b010dbea00d883ae3a00000038b8ae3a000000000060c1b6d501000000003061dbea0000609956d5010013b34972551dc1288f49daea0816611bbf6b737191e4b23a62e1b671bdccd1a7f8b901304f6d92d3ea085ef896a4af8ee0559b987bcdc563929bea0816e121c9d7ea084631f70200000000e0364993e47f93fc96e4aeb4060000dee7ac3a002668571d00002cd6459275750400b018be890200aa3c54070000c081f5d501b0077d750000007050cff18e0700000000a0ca7386b3e90100000080d759e3080094585507004cc83a49571dc1684d75008b7293e4be3a8251ba3830a79aeb659ebe2439af8e008077d824b9aa8ee085a7246d7504af32f79a97a63a804569933c5647304a17732f0000000000925d8699f16592ff4bf2af0cef6a010060caceaa03000080ffb2a90e000016e13cc969750400b058bbea0000003820df9570ac1ee2f71b000096e4b63a000000000060c11eaa030000000060e2ccd0008012abea0080096963b3e3b9f81a0fd21c5e531dc02827190e66a7d67575003fa5ab0e008091d6b189cc54357180c354b531f79a0b732f2a34d5018c62ee0500000000c05f6d93dc24394bf2f724bf57c6000000f02ed6dc0200952eab03008045d8540700000000c042d8b78c6366ef510000580ef7ff000000000075ac410200000080efebab030080655a5507004cc426c9557504a33c653868190e6d9be46b7504a35cc4a139d51ee27a99a34f49daea080018a14b72521dc10bdfe2a5f7546d62ee35178f714f4e0dcff1f361ee0500000000c05bfa244d92ffcd30f77faa8c010000e0876cd80e0054b22619003884a63a000058b46d750000001c90b5481cb3dbea000000e060faea00000000008005b3060900000000dee61c2800a0ccaa3a006002d649baea08466b92ecaa2358ac36c9637504a37419febe53a78deb658ebe2439af8e0080efb84c72511dc10b4f19eeff981e73af7969aa0358b4369ee3e7a28bb91700000000006fdb6598fb9f25f92dc97d650c000000000093749264531d01001cb575924fd51100c0a26dab030000e0801eaa03608ffa24cfd5110000c0deddc59974000000000095ac410200000080b7999f01006556d5010013d02639ad8e60946f19360a814a4d7500a39c24e9aa2370bdcc54571d00006f58c7ffa9a96a62639fa96a63ee35175f63f108f59aea004631f7020000000060ac2ec926c9df93dc97960000000000303597d50100c05173af01000000008763ff328edd6d75000000b077eefb01000000006a598304000000006f333f0300caacaa03008a6d925c554730ca5392b63a02320c72be564730ca456c665fcdf5324f9fe27f2e00d3d42539a98ee0856f49faea085eb589b9d75c987b31159ee3e7c3dc0b0000000080f7e833bc3ffcbf24bf9796000000f01f369c0200aa598f0c00ec937b0d00000000388ce724dbea08d8b3be3a000000d8bbbe3a000000000060c1eeab030000000060e2faea000060b956d5010085d649baea08466b92ecaa23e0dfda248fd5118cd265f87b4f9d36ae9739fa92e4bc3a0200fee432c94575042f3c65b8df637accbde6a5a90e803fb9c9f0f79de9eb62ee0500000000c0fb6c33bc9bfabf24bf97960000b0349bea009820dfcb0200d54ee35b6200603fd6f15d380050afaf0e0000800379a80e8003b8ad0e000000f6ea31c35e080000000000d4d8560700000000c0c46dab030080e55a55070014bace70a002d3f72d3680647a9aea00463949d25547e07a99a9ae3a0000fe6d1dff97a6aa89c3b3a7aa8db9d75c987b3135bb788e9f0b732f00000000007ed636c3fb80bf27b92f2d0100000000a0d265750000709436d50100000000b0200fd5017000bb2477d5110000c0dedc560700000000002c9c354800000000f0b6e70c673d0100945855070014394ff2a53a82519e92b4d511f08a87245fab2318e5220ecfa9e67a99a74ff13f188069e8929c5447f0c2b7247d7504afda24b9aa8e6014732fa6aacff0779ee933f70200000000e057f419de2ffe3dc96369090000c0323d550700008b672d3200b00fee3100000000e0701eaa03e040faea000000606f6eab03000000000016ce1a2400000000789bf91900506a551d0050a4ab0e60b4eb24bbea0878431b0776cf4597645d1db1706d1caa38475f929c574700b06897492eaa2378e129c3fd1dd3b38eb9d79c3431f762bada788e9f8b2ee65e0000000000fc9a3ec33ab17f2579ae4d01000058946d750000b0789f929c5547000047e7b23a0000583cfb430200b0240ebf63296eab03000080bd788a675b00000000806a7d7500000000004c585f1d00002cdbaa3a00a0409be11005a6ef2e360461faaeab0318e52449571d419aea007e4a571d00c062ade3ffd0545d26d95547f0aa36c9697504a37c8b05234cdb2e9ee3e7c2dc0b00000000808f7293e42cc9efc51d00000000001cce6575000070542e337cef040050c99e2800002cc94375001cc836c96375040000f0e1faea00000000008085b31e0300000000becf377c0040a9557500c0819d27f9521dc128cf499aea0818a14ff2ad3a82512ee2009d6a7d5c2f73f429c94d7504008bd4c5014553f4355e724fd526c9557504a33c2569ab2360843e9ee3e7c2dc0b00000000808fb2cbb086fbef19de6b010000b03fdbea000080d8d70300f858be710200000080c3b9af0e8003bbad0e0000003e9cfb7c00000000805ace250500000080ef334303004aadaa03000eacab0e60b426c301c830076d1cd23d175d927575c4c2b571bdccd155924d7504008b7299e4a23a82171e33dccf313deb987bcdc975ccbd988f369ee3e7e226e65e00000000007c9c3ec95992afb519000000476d5b1d000090e45386793000c047b8ac0e000088c33f0000588e6d75001cd86d75000000f0e1dce70300000000d4b2fe1e00000000def61cdff10100c556d5010007d466383881e9bb8b8f0399975d92a63a82514e9274d5110be77a99af2ec9ba3a02804558c73ddb5435d501bca94d725a1dc128e65ecc8de7f8f938cdf0ff0000000000003e529be46f499e8a3b0000000000d89fcbea0000e0285c66d8db0700a0daae3a0000000ee4a13a000eec21be710200806372571d000000000080354800000000f01de6670040b9557500c0819c27f9521dc128cf499aea08f8097d926fd5118c721187e854ebe37a99a3d3246d7504008bd0c5e14453f4355e704fd526c9557504a3987b31577d92dfab2318e52ac3ff050000000000f8480f19d6e37b5f000000f0b176d5010000ffd65407000047c17e3e000000007058f6066489faea000000e0c3dc56070000000000602d06000000007c475f1d0000b0aa0e003890ae3a80d1aee3d02de6ab4df2541dc1285d927575c4c2b571bdccd155924d75040047ed32c94575042f3c66b87f637ad631f79a9326e65eccd77592e7ea0846e962ee0500000000c0c7db6578dff55bbc330000e0fd36d50130510fd5010000fff629c959750400307b97d5010000ffe61d0c00004bd157074081dbea000000e0c3f4d50100000000000bf7581d00000000001367ff0a00a0dcaa3a00e000da0c8725307df749baea08f805ff399c9be93b89bf37d55c2ff3d525595747007094d6718f36554d75006f6a939c564730ca5d6c78cbbc798e9f8fd30cff1f0000000000601fba249bd8641000000000e0d85c56070000b37699613f1f008029d855070000c001f8ae83a5ba4df25c1d010000fcb2c724dbea080000000080857ba80e00000000808933430300caadaa0300f6ec3cc997ea0846794ed25447c007e8937cab8e60948b38488c714d950000200049444154a75a1fd7cb1c9d2669ab2300384ab77130d1147d8d17db53759ee4aa3a8251ccbd3816b749eeaa2318e52ac9a63a020000000080a3f590610eedbd010000c0afd955070000fc49531d0000cc9a3d7c00000000e0b0ec0fc892f5d5010000c02fbbad0e0000000000c01a2400000000f88ee724dbea080080557500c09e75d5018cd6c68332c7a34df2541dc1285d927575c4c2b571bdccd155924d75040047e53ac9e7ea085e78cc70bfc63475d5018c761d87cc733c9a0c8b9e98be2ee65e0000000000eccf2ec96592dfab4300000066cc06ee00c0947c4a725e1d0100ccd665750000c09f78070300c012b8ef65c96eab030000805fe6be1e00000000a09e354800000000f036f33300601256d501007bd466382081e9bb4f72531d011f6897e4ba3a82514e9274d5110bb74bd25447f053ba24ebea08008ec259866778a6a7a90ee04d6dccbde6e23e9e3b392e9ee3e7e334eeb10000000000d8bf26c96fd51100000000007c88a63a000098a526c31e3e000053b1ab0e0000800370f81d4b765b1d000000fc92a778ae05000000009882be3a000000000026acaf0e00004892557500c09e9c27f9521dc128cf718805c7e936c95d7504a35c24b9ac8e58b83ec9efd511bcdb6992b63a0280a3d0c5a14453f43536f0992a73aff930f7e258997bcdc755924d7504000000000047af4bf25b75040000c04c3d55070000fc896fee01809fe11e02000000000eafaf0e8042bb24f7d5110000c04febab030000000000c8637500000000004cdc437500004092acaa0300f6a4ab0e60b436c9b6b801f6a549f25c1dc1285d927575c4c25dc7f53247574936d51100ccda7592cfd511bcf098e1799d69eaaa0318ad8db917c7ab89e7f8b9e862ee0500000000c0fe75497eab8e00000098a16d750000c09f9c2639af8e000066659de4a23a0200e04f1ca20b00c012b8ef85e4b63a000000f869eee70100000000ea3d540700000000c0c499a1010093b0aa0e00d88336c9a7ea0846794c72531d017bb44bd2544730ca4986c3d3a9e37a99af2ec3811200f05e67199ee1999ea63a8037b531f79a8bfb987b71dc3cc7cfc769dc73010000000070185d92bf25792eee0000000000e0e75d57070000b372591d0000f017bbea000000380007df41725b1d000000fc34f7f30000000000f5ac410200000080b73d27d95647000024c9aa3a00e0839d27f9521dc1684d75001cc06d92bbea0846b9884df1abb95ee6e934495b1d01c02c75494eaa2378e16b7c103255e65ef3f11c732f96e136c97d7504a35c25d954470000000000b0080f49aeab2300000066645b1d0000f017beb70700dec3fb6100000000383c7b05c2b0f6eea93a0200007837671201000000004c435f1d000000000013d657070000fcc7aa3a00e08375d5018cf63536b961399a24cfd5118cd2255957472c5c13d7cb1c5d25d9544700302bd7493e5747f0c26392b63a823775d5018cd6c681f22c4713cff173d1c5dc0b0000000080c3e892fc561d0100003013dbea000080bf38c9b04e1c00e047ce927caa8e0000f88bbe3a0000000ec0defe30b8ad0e000000decd7d3c00000000c034588304000000006f333f03002663551d00f081dad8cc782e1e33fcbc6029767148cb5c9c6438389d3aae97f9ea92acab23009885b378269caaa63a8037b531f79a8bc72437d5117040dbf8bf3e17a7f1b30200000000e070ba24bf55470000000000f0532eab0300805968aa030000000060a1faea009888ae3a00000078b7be3a000000000080dc570700000000c0c4f5d5010000ffb1aa0e00f8206749be5447305a531d00056e93dc554730ca451caa53cdf5324fa749daea080066a14b72521dc10bff4af2501dc1abce63ee35274d750014b8890f0ae7e22ac9a63a020000000080c5e8927cab8e0000009838eb77018029ba48b2ae8e000026afa90e000078c5ae3a000000f6cc5e4ff0ff3d2479ae8e000000467b4cb2ad8e0000000000c09e4700000000f003666800c064acaa03003e48571dc0685fe3c198e56a62339bb9e8e2509d6a4d5c2f73749564531d01c0a45d27f95c1dc10bf7496eaa237853571dc068e65e2c5913cff173d1c5dc0b0000000080c3b94e72571d0100003061bbea0000803734d50100c0a46d929c56470000bcc29e0f00001c3bf7bcf0df6eab03000080d1dcbf03000000004c83354800000000f0b6a7d8371c009890557500c007b84ef2b93a82519e92b4d511506817d7c05c9c24e9aa23166e17071bcdd56d9275750400937416f7c353f41cf75d53d626f9541dc1288ff1378e65dbc6353017a7f1b30200000000e0b09a0cefd30000000000988febea000060d29aea000000000058a887ea009898dbea0000006034f7ef0000000000d3d0570700000000c084f5d50100007fb6aa0e00f8456749dae206c66baa0360026e92dc574730ca4592cbea8885bb4d72571dc1bb9d24e9aa230098a42ec3ff09a6a54db22d6ee075e749be5447305a531d001360ee351f574936d51100000000002cc62ec3fbb4e7e20e00008029eaab030000de709ae1db160080bf5a27f967750400c01bb6d5010000b0670fd5013031b7d5010000c0284ff14c0b000000003005cfb1ee1e00000000bec77a4700605256d50100bfa84b72521dc128dfe2202df88f260ee19e8b2ec3a6f9d469e27a99a38b2497d511004cca7592cfd511bc709fe4a63a823775d5018cf6351683c07f34f11c3f175dccbd0000000000389c870c6b070000000000980f735d00e035f6130100a66c5b1d0000007bf41cfb9dc16beeaa030000801feaab03000000000048625e0b000000003fd257070000fcd9aa3a00e0175c27f95c1dc1284f49daea0898906d5c13737192a4ab8e58b85d92a63a829fd2255957470030096771ff3b45cf719f35656d924fd5118cf2187fe3e0cfb6714dccc569fcac000000000038ac2e0e8404000078cd53750000c01b2ee35b6100e0a5ebea000000000058a887ea0098a8dbea000000e087dcb703000000004c83354800000000f07d666800c0a4acaa03007ed25992b6b881f19a24bbea0898989b24f7d5118c7291e1701deadcc6a1f5737492a4ab8e006012ba0cff17989636c9b6b881d79d27f9521dc1680e5a83976e923c564730ca55924d750400000000008bd22479ae8e00000098986d750000c01b4ee23b7b00e0bf9d27f9541d0100f0067b3b020070ecfaea0098a8be3a000000f8a1dbea0000000000009258670100000000df63df0a00607256d501003fa9cb70d001d3f72d1694c05b9a38847b2eba24ebea88856be27a99a38b38980a60e9da249fab2378e13ec94d75046feaaa0318cddc0bded65407305a17732f00000000000e6717ef110000000000e6e4ba3a00009814f7060000000050e7a13a00266a9be4b13a02000078d35d750000000000007fb0060900000000de667e06004cceaa3a00e0275c27f95c1dc1284f49daea0898b06d5c23737192a4ab8e583887d6cf5797645d1d014089f3245faa2378e139eeaba6ac4df2a93a8251ccbde0fb1e927cad8e6094d3f87b0600000000c061ddc621330000007f66532a0060ca3e65f84e0c00609de4b23a0200e03b76d5010000b0677d75004c58571d000000bce9b63a00000000008024c963acbb0700000080efe9ab030000fe6a551d00f04e6749dae206c6bb8ec524f0233749eeab2318e52236d1afe6d0fa793a890dbc0096aaab0ee0556d926d7103af3b4ff2a53a82d19a987bc18fb4193e3864faae926caa230000000000589426c97375040000c044588f08004cdd7575000030099719f610010098aa87ea000000d8a3a7586704dfd357070000006feaab0300000000004862cd3d00000000fc88191a003039abea008077ea6203e3b9b84b725b1d0133d15407305a97645d1db1704d1c5a3f4717190ea2006039da249faa2378e13ec94d75046ff2b3998f6fb1e9158cd55407305a17732f00000000000e6797616d01000000c3331200c0945dc65a630020b9ae0e00000000800573f01d7cdf4392a7ea080000e085c724dbea08000000000092387b1100000000bee729d63c020013b4aa0e007887eb249fab2318e53949531d0133b24df2b53a82514e9274d5110be7d0faf9eae2702a80a5384ff2a53a82173cab4f9bb9d77c3cc53309bcc743ccbde6e234febe010000000070583771302400004032acb3020098b2932497d5110040a9f3249faa2300007ec03b1700008e595f1d0033705b1d000000bcd055070000000000f0076bee01000000e06de66700c024adaa0300463a4bd21637305e9364571d0133d32679ac8e60948b3860a7da4d92fbea08deed24360700588aae3a8057b549b6c50dbcee2ce65e73d2c4dc0bdeab8db9d75c5c25d954470000000000b0286d75000000000000a3b4d5010040a9ebea00008011ec050100c03173f81dfcd86d75000000f0425f1d00000000004092e439d62001000000c0f7f4d5010000af595507008cd42539a98e6094bbd8a0037e56531dc0685d927575c4c23519162e322f17492eab2300d8ab36c9a7ea085eb84f72531dc19bba987bcdc55d2cfe809fd55407305a17732f00000000000ea7cbf04e1b000060c96cec0e00ccc169924d75040050629de49fd511000023ecaa030000608ffaea0098813ef62c07008029798a6f660000000000a6c2bc1600000000beafaf0e000078cdaa3a006084eb249fab2318e53949531d0133f690e46b7504a39c6438349d3adb246d71033fa7cb70380500c7e73cc997ea085ef0ac3e6de65ef3e15a825f63ee351fa731730100000000e0b0daea0000008062bbea000080919aea0000a044531d00003092037501003856f7d5013023b7d5010000c01fdc9f03000000004c475f1d00000000001367cf0a00609256d501003f701607d2cec9751c9405bfaa4df2581dc12817492eab2316ee2636509ba393245d7504007bd15507f0aa36c9b6b881d79dc5dc6b4e9a987bc1afba49f2541dc128574936d51100000000002c461f6b670100009eab03000046f86786ef61008065b9ae0e00000000808573f01d8cd757070000007fe8ab030000000000f8435f1d000000000013765f1d0000f096557500c00f74494eaa2318e53ec3cf0bf8754d7500a37549d6d5110bd7c4018d737491e4b23a02800fd526f9541dc10b77496eaa2378531773afb9b84b725b1d0147601773af39e962ee0500000000c0e178b70d00002cdd43750000c0484d750000705097494eab230000467018080000c7acaf0e8019b1672000004cc373dc9f03000000004c495f1d000000000013d657070000bc65551d00f01dd7493e574730ca731c32011fe921c9d7ea08463949d255472cdc36495bdcc0cfe992acab2300f810e749be5447f08267f56933f79a0fd7127cac3ec9b7ea0846398d990b000000000087d32579aa8e0000000000e087aee3fb60005892ebea0000000000200fd5013023bb2477d51100008083dc010000000026e4b13a000000000026ce377c00c064adaa0300de7096a42d6e60bc36c9b6b8018e4d1b0bb3e6e222c9a63a62e16e92dc5747f06e2749baea08003e44571dc0ab9a0c9b67323d6731f79a9326ae25f8686d92a7ea0846b98ab91700000000008773531d00000050a8af0e000018e924c9657504007010e7493e574700008cb4ad0e0000803d798afb5d78afbe3a000000c86d750000000000007fe8ab030000000060e2faea000080b7acaa0300ded06538b480e9bb8fc382615faeab0318ad4bb2ae8e58b826c9737504ef7691e16707c07cb5493e5547f0c25d6cce33655dccbde6e23eae25d8875d3c0bce4917732f00000000000ea3ab0e00000000006094b63a000038087b1f010073b2ad0e0000803de9ab036086ec1f080000f5dc9703000000004c475f1d000000000013f69864571d0100f096557500c02b2e937cae8e6094e7244d75041cb13ec9b7ea0846398d8376aa6de36730573749ceaa2300f829e749be5447f08267f569bb8eb9d75cb89660bffa987bcd85b917000000000087b24bf27b750400007bb1ad0e8019d856070000bcc36986bd610080e37596e49fd5110000efe0301000008ed5437500ccd036c3c1910000400d07b903000000004c8b354800000000f036f3330060d256d501007fb14ed25547305a1b8762c1beb5499eaa2318e52ac9a63a62e16e92dc5747f06e2771ff0730575d7500af6a62639ea93acbf08cc73cb431f7827d6b63ee3517e65e00000000001c4a571d0000c05e6cab036006b6d5010000ef745d1d0000ec55531d0000f04e0e040100e058f5d5013053b7d5010000b0605d750000000000007f788abd8d00000000e07bfaea000080ef59550700fc4597e4a43a8251ee93dc5447c002ec6243f739e992acab2316ae49f25c1dc1bb7d8e83aa00e6a64df2a93a8217ee62a3cc29eb62ee3517e65e7018e65ef3d2c5dc0b0000000080fdeb336c6e080000b034bbea00008077fa9c64531d0100ecc53af600010000008029784ef2501d0133655f4e0000a8d357070000000000f087be3a000000000026aeaf0e0000f89e557500c09f5c26b9a88e60341b4cc3e1f449be554730ca6992b63a62e1b6f13398ab36c959710300e36c927ca98ee085e7244d75046fbace703027d3e75a82c3ea93fc5e1dc128e65e00000000001c8a0322010080257aa80e0000f8094d750000b01797494eaa230000dec9bb1600008e91fb5cf8790f499eaa23000060819ee2791600000000604afaea000000000098b0a724dbea080080ef59550700fcdb3a49571dc1685fe3433f38b43636bb998bab249bea8885bb49725f1dc1bb9dc4fd20c01c787e9fae26c9ae3a82579d6578a6631eda58e80187769de4b93a8251ccbd00000000003884ae3a00000000008051fe99e1bb1900e0b8b4d50100003fc19e2b00001ca3be3a0066aeaf0e00008005baad0e0000000000e0bf3c540700000000c084f5d50100003fb2aa0e00f8b72ec9497504a33cc606d3506197a4a98e60b42ec9ba3a62e19a24cfd511bcdbe724d7d511007c579be4b43a8217ee62539e29eb62ee3517f7496eaa236081ccbde6a58bb9170000000000fbf590e4a93a020000a0c07d750000c04f68ab0300800fd5c4b7e400c0fc586f0600c0b1eaab0360e6ecd109000087d757070000000000f087e70c7bbc0200000000af333f0300266f551d0090e432c9457504a335d501b0607d926fd5118c721a87ed54dbc6cf60aeda2467c50d00bc6e93e4aa3a82179ee3597dcaae937cae8e60b4ebea0058b0db2477d5118c62ee0500000000c02138201200000000601efe19df0503c03169ab0300007ec2b63a000000f6a4af0e8099bbcdb05f2700007018cfb14f0000000000c094f4d5010000000030717d750000c08facaa0380c55b27e9aa2318ed6b9287ea0858b836c9537504a35c25d954472cdc4d92fbea08deed24ee0f01a6c8f3fb74354976d511bcea2c0eea9a13732fa8d7c446cf7361ee0500000000c0bef5d50100000005ac630400e6aaa90e00003ec426c969750400c04fd856070000c01ed853193e465f1d0000000bd257070000000000f05ffaea000000000098b0e7d8131c009881557500b0785d9293ea0846794cd2564700d925b9ae8e60b42ec9ba3a62e19a0cc35ae6e573fcad03989a360e1c9aa2bb24b7d511bca98bb9d75c987bc134ece2e0e239e962ee0500000000c0fe78170e00002cd1ae3a0000e0275dc7da620038066d750000c04fda56070000c01e38f80e3e866f940000e070dc7f03000000004c4b5f1d000000000013d6570700008cb1aa0e0016ed32c9457504a35d5707007fb84d72571dc128a7b1397fb56dfc0ce6aa4d7256dc00c06093e4aa3a82179e9334d511bce932c9e7ea08466baa03803f987bcd87b91700f0ffd8bbbba3c8996d5da36f10e71e3c000fc003f0a0db832e0fc003aa2dd8b4054bcb03f04078001e141e501e9c0bedbfded5f427a08aa994c6b0e08920444953a94c00000038b4c7ea000000f6e6b53a001ab1a90e0000f8a0e3d89304005a7715dfc50200edf23e12008039eaab036026eeab0300006041dc7f03000000004cc736c9537504000000004c585f1d000030c6517500b0582749baea0846fb150fba3035ab0c8bb898beeb0c9bf453e72e0eb26fd171dc2f024c81e7f7e95ac5010a53e5ba69cbcff8400aa6661573af56987b010000000070487d750000007b638d168cb3a90e0000f8849b0cdfd400006d5a570700007c82f7910000cc515f1d0033f19ae4b93a02000016e039f6cc07000000009892be3a000000000026aeaf0e000018e3a83a0058ac2ec9717504a3bcc4e6d23045af4956d5118cd6c5813bd55649b6d511bcdb658603ab00a8b34e725a1dc18e8724f7d511bca98bb9572b9e63ee055364eed5962ee65e00000000001c465f1d000000f0c536d50100009f701cdf040340abae32ecef01000000004cc373867d9880fde8aa0300006001baea0000000000007ed3570700000000c0846d933c554700008c71541d002cd2f724dfaa23186d151bd5c054dd2779a88e6094d324ebea8885dbc4dfa055eb2467c50d004b7595e4ba3a821d2f199ed5992673afb6381815a6eb3ec9637504a3987b010000000070287d75000000c017db540700007cd24d9293ea0800e0ddd6d50100009fd457070000c09ef5d5013033f7d5010000b0007d75000000000000bfe9ab030000000060c2faea000080b18eaa0380c53949d2554730daaf78c885a95b25d9564730ca7592abea8885bb4bf2581dc1bb1dc7fd234005cfefd3b54af25a1dc11fb96eda62ee05d3b78ab9572bccbd00000000003894e7ea000000802f66cd1400d0b2e32437d51100c0bb5c25b9ac8e00000000007ed35707c0cc6c92bc54470000c08cbd2479aa8e0000000000e037e6b600000000f0b6be3a000060aca3ea006071ba0c070e307d2f49d6d511c03f7a4db2aa8e60b42ec94975c4c2ade220c7165dc68155005f6d9de4b43a821dbfe265f4947531f76a85b917b46113d76a4bba987b0100000000b07f7d75000000c017b3f13b00d0ba9b58570c002d59570700007cd263750000001c803544b07ff7d50100003063eeb70100000000a6c53a7b00000000f8bbbe3a000060aca3ea006051be27f9561dc168ab24afd511c028f7491eaa2318e53436eeafb689bf41abd649ce8a1b0096e22ac97575043b5ee23e66caccbddab28ab917b4e22e3e666c85b917000000000087e0d05500006069ac6f04005a779ce4a63a020018e52ac965750400000000f09b970cfb2703fbd555070000c08cf5d5010000000000fce6be3a0000000000266c1be72101000d39aa0e0016e324366668c9437cd807ad5965184c317dd71936f0a7ce5d92c7ea08deed3816b0027c05cfefd3b58a03a9a7ca75d3965f31f782d6ac62eed50a732f0000000000f66d531d0000c05e6caa03a02136ae0200e6e026c3f73600c0b4adab030000f6a0af0e0000803debab0360a69e622f33000038846d9c2303000000003035f6300200000080b7f5d5010000ef71541d002c4697e4b83a8251b64956d511c0bbbdc6a6f02de9e2d09d6aabd830aa45e7f1bf0ee0d0d6494eab23d8f12b5e444f591773af56bcc4fd24b46813d76e4bba987b0100000000b03f7d750000007bb1a90e8086bc56070000ecc171ac010780a9bb4a72591d0100000000ece8ab0360c6eeab0300006086faea0000000000007eb38dd92d00000000fc4d5f1d0000f01effaf3a005884ef49be554730da2a0eb88256dd65f89f6b73f8e93bcd70e8ce4d71c7926d32fc0dfea336830fb8cdb0d9d7537508c00c7d4f725d1dc18e9738b071caccbddab28ab917b4cadcab1de65e4095abea00000068c853cc4a0168cb4b86f9330000c012f85e0600988beb0cebc037c51d00c09f75d50100007be2dd0a000073d35707c08cdd27f9511d01000033735f1d0000000000c06ffaea000000000098b8be3a0000e03dfe5f7500307b27190e14a00d0ff1511fb46e956123d5e3e20efed97586ffb97d71c792dd25f99ee4b23a8477eb925c544700cccc491c343455ab24afd511fc91eba62d0ff1fc05ad5bc5dcab15e65ec057bacbf07f070000789f7f27b989771000b46193e4b43a020000e08b98d9010073b2ceb00e1c00989655bc830500e6c3bb150000e6e425c33714c061f4d50100003043ceba03000000009896be3a0000000000266c9be4a93a0200e03d8eaa0380d95bc746c5add8c6c10f30079b0cff7b694397e4a43a62e156197e0369cb79fcaf03d8b72ec97175043b7ec5471c53d6c575d30a732f98874d3c0bb6a48bb91770787749aeab230000a0513fe2000000dad157070000007c219b57010073f223c959750400b0635d1d0000b047dead000030277d7500ccdc6b9287ea0800009891e70cf7d900000000004c475f1d000000000013d657070000bcd7517500306b5749aeab23186d151ff4c15cdc2579ac8e6094d3d8d4bfda26fe06adba4d72511d013013df937cab8e60c74bdca74c99eba62dab987bc15cdc65d89c8ee933f7020eed2ade450300c0675d66989f020000001cd2b63a001ae4ba0100e6a4ab0e00007e7393e1bb1f0080b9b09704000073d25707c002dc57070000c08c74d5010000000000fc669be4a93a020000000026acaf0e000078afa3ea0060b64ee203b1963cc686193037ab38a8ae15d749aeaa2316ee2ec36f21ede9aa030066c0f3fb74ade29084a972ddb4e521e65e3037abea004633f7020e69551d00000033b1ae0e008011faea0000003ec566d6f07eae1b00604e2e634d31004cc549ac170200e6e5b93a000000f6acaf0e8005e8ab0300006046faea0000000000007ed3570700000000c0c4f5d5010000ef75541d00ccd63ac9697504a36c93acaa2380bddbc486f12de9326cf24f9d5586df44da721effeb003eab4b725c1dc18e5ff1f279cabab86e5a61ee05f3f494e4677504a37531f7020ee3aa3a00000066e234e6a8000000003035afd50100007b76571d000024496ee2fb5800605ebc530100604e5e32ec290e1cd626c97375040000ccc04b863d820100000000988ebe3a0000000000266c1b6b1f0180061d550700b37495e4ba3a82d1d6b1290dccd55d92c7ea084639cdf0ff983a9b24abe2063ee636c945750440a3be27f9561dc18e97b8379c32d74d5b5671e008ccd53a36806e85b9177028a7d5010000302377494eaa2300e02ffaea000000802f66132b00606ecee33b6e00a87696617f0e008039f14e05008039b9af0e8005e9aa03000060063cc702000000004c4f5f1d000000000013d6570700007cc4517500303b27b1e9424b1e331c3e0fccd7aa3a80d1ae935c55472cdc7d9287ea083ea4ab0e006890e7f7e95a2579ad8ee08f5c376d79884dac60ee56d5018c66ee05000000d3769ce4a63a0200000000f86fd61203d6bd728c00002000494441540073b4cef06d0e0050635d1d00007000dea9000030277d75002c485f1d0000003360ef6f000000008069d92679aa8e000000008009ebab0300003ee2a83a00989d7592d3ea0846d9265955470007b749f2b33a82d1ba3878a7da2ac36f246d398fc33200deab4b725c1dc18e5ff1e279cabab86e5ab14d72531d011cdc53ccbd5ad2c5dc0b000000a6ec269edd019836ebfa0000dab5a90e8006d9081e0098a3d3f8d60300aa5c25f9511d010070007d75000000ec515f1d000bf294e4a53a0200001ab68de7580000000080a9b9af0e000000008089334303009a74541d00ccca5592ebea08465bc7e16fb014eb24cfd5118c729ae1ef459dd724abea083ee436c94575044023be27f9561dc18e97b8179c32d74d5bd631f782a558c7dcab15e65ec0be6dab03000060668e93dc554700c05f3c55070000f0619bea0068d06b750000c081dc2639ab8e0080055a570700000000007ff51c6b86e0ab39701200003ecefd3400000000c0f4f4d5010000000030612fb15f3e00d0a8a3ea0060364e9274d5118cf61887cdc3d2acaa0318ed3ac95575c4c2dd2779a88ee043baea008006787e9faeefb171ec549dc41ca525e65eb03cabea004633f702f6e9a93a00000066e84792b3ea0800000000c03b710060d67cf301005f6b95e4b23a0200e040faea000000d893be3a0016a8af0e00008086f5d5010000000000ece8ab030000000060c2faea0000808f3aaa0e0066639de4b43a82d16eaa03802ff794e4677504a375494eaa23166e95645b1dc1bb9d67b82f05e06d5d92e3ea0876fc8c83a6a76c1d73af566c33dccb03cb62eed5962ee65e00000030655d750000000000902479a90e000038906f49aeaa230060214e92dc554700001c883de200009893be3a0016e83e9e2d0100e0a3eeab030000000000f8cd4b924d7504000000004c585f1d0000f05147d501c02c5c25b9ae8e60b49f499eaa238012eb24cfd5118c729ae1ef459dd724abea083ee436c9457504c0447dcf70c01fd3f21cf77e53761573af96ace3032858aabb0c1f41327de65ec0be78df09000087719961360e0053d357070000f061afd501d0a84d750000c00175d50100b010eb24c7d511000007e21b430000e6a4af0e8085baaf0e000080063dc6f762000000000053630d0400000000fc9d191a00d0aca3ea00a079277130404b9e336c2a0d2cd7aa3a80d1ae935c55472cdc7d9287ea083ea4ab0e009820cfefd3b5aa0ee04dae9bb63c26b9ab8e00cabcc66f6a4bccbd807db0692900001c4e571d00000000ccca537500346a531d00007040a7b1f709001cda45866f780000e6ca37860000ccc563dcdf4295be3a0000001ae400770000000080e9e9ab030000000060c29ee31b3e00a06147d50140f3d6190e06a00dabea00a0dc53929fd5118cd62539a98e58b855926d7504ef761e075701fc5f5d92e3ea0876fc8c83d9a76c1d73af96acaa0380727d925fd5118c76571d0034cfc25d0000389cd32437d51100000000b0709bea00008003bb4972561d010033e6db1d0060eeecd70200c05cf4d501b060f7d5010000d020f7d10000000000d3d3570700000000c084f5d50100009f71541d0034ed2ac9757504a3fd8c4d1681c13ac9737504a39c66f87b51e735c9aa3a820fb94d72511d013011df937cab8e60c773dceb4dd955ccbd5af2330e6a0706eb242fd5118c721ef742c0e778ef09000087b54e72521d01000000000be6bd38003077c749eeaa230060a656492eab2300000e6c531d0000007bd25707c082bd2679a88e00008086bcc43b1a0000000080a979ceb0060200000000f8b3be3a0000e0338eaa0380669d24e9aa2318ed39c381f200ffe5a63a80d1ae935c55472cdc7d6c24d5aafb0cf7ad004be6f97dba56d501bcc975d316732fe07f7b8ddfd896dc26b9a88e00000000fee838c95d7504000000300b9bea0068944de1018025f896e47b750400cccc49acfb01009661531d0000007bd25707c0c2f5d5010000d090fbea0000000000007698dd02000000c0df99a101004d3baa0e009ab54e725a1dc168abea006072fa24bfaa2318adcb704000755649b6d511bcdb6986fb568025bb4f725c1dc18e9f499eaa2378d33ae65e2d5955070093d3c7dcab255d7500d02ccf54000070783f925c544700000000cddb540740a3faea0000802f7217dfd103c03eade3db720060197c630800c01c3c5407000ea00400807770ff0c00000000303d7d7500000000004cd863750000c0671d5507004dba4a725d1dc168bf627345e0cfd6495eaa2318e534c3df8b3aaf4956d5117cc87586fb578025ba4972591dc18ee7b8b79bb2ab987bb5e467ccbd803f5bc7dcab15e7716f047ccc6b750000002cc45d7500000000002cd8b63a0000e00bf88e1e00f6e72abe91050096c337860000cc415f1d006493618f500000e0efb6f11c0b00000000303566b700000000f077f7d50100009f75541d0034e72449571dc1682f715003f0b6d724abea0846bbce70500075ee933c5447f0215d86fb588025398be7c1a95a5507f02673afb63cc7ff39e06de65e6db94d72511d0134695b1d0000000b7019731600a6e1a93a000000a0806721006029ae633d3100ec43571d0000f0451eab030000604ffaea0020896b110000c670803b00000000c0f4f4d5010000000030717d750000c0671d550700cdb949725a1dc168ab24afd511c0a4f5497e5547305a97e4a43a62e15649b6d511bcdb6992757504c017eb921c5747b0e3671c243d65eb987bb564551d004c5e9fe4dfd5118cd65507004df27c0500005fe32ed6ab0050cf9a780080363d560740e336d50100005fa8ab0e0080c6ade31b590000000068c94bec9b0153d1550700004003faea00000000000076f4d501000000003061dbf8860f009881a3ea00a02917496eab2318ed572cfe00c65967d8b08ae93bcdf0f7a2ce6b92efd5117cc87592abea08802f7293e4b23a821dcf712f37655719ee1768c3af58b0018c7393619117d3771ef74a0000003055c7f1dc0e40bd93ea00000080029bea0000802f643d31007c9cbde10080a5e9ab030000600ffaea00e0bf3dc51efd0000f04feeab030000000000d861760b000000006f333f030066e1a83a00684a571dc0682f71300330de6b92557504a35d27b9aa8e58b83ec9afea083ea44b72521d01706067f13c3855abea00de741273af96987b01ef61eed596db0c0766028cd557070000c08258af024035f363000060899eaa030000be98f5c400f0315d750000c017db54070000c01ef4d501c06ffaea00000098b0c70c7bfc0200000000301d2fb1b61e00000000fea6af0e0000d887a3ea00a019eb24e7d5118cb68a8ff680f7e993fcaa8e60b42ec94975c4c2ad332cb4a42da719fe760073d62539ae8e60c7cf38407acad619ee1368c32ae65ec0fbdc2779a88e60b4ae3a0000000078d35d7500000000d01c6b27e173ac97040096a8ab0e0080c6ac636f3800607936d5010000b007f7d501c06f5c930000f036f7cb0000000000d363760b000000007f67860600ccc2517500d0848b24b7d5118cf6ef247d7504d0a4759297ea084639cdf0f7a2ce6b925575041f729de4aa3a02e0406e925c5647b0e339eedda6ec2ac3fd016df815732fe0635649b6d5118c721ef74ec0784fd5010000b0309edb01000080f77aad0e80c6f5d501000005bc970480f1ec0d07002c956f0b010068dd73acaf83a9b98f7dca0000e02d0e700700000000989ebe3a000000000026cc377c00c06c1c5507004de8aa03186d9be4a63a0268d66bfc0f69c97592abea8885eb93fcaa8ee043ba2427d511007b761607f34dd136c9aa3a82379dc4dcab252ff17f0ef8b8d7f84d6ec96d86033401fe8985bc0000f0f56e32bc970200000000bec6b63a0000a080f5c400304e571d000050c4b7850000b4aeaf0e00fea8af0e000080097a49b2a98e000000000060475f1d000000000013d657070000eccb5175003079eb24e7d5118cb68acd1481cfb94ff2501dc1685d9293ea88855b67f8609eb69c66f8db01cc4997e4b83a821deb244fd511bc699de1be8036ac62ee057c8eb9575bbaea00a0099bea00000058a0e3786e07000000c6db5407c00c588b0c002c55571d000013b78ebde10080657aac0e0000803db8af0e00fec8b5090000bbdc2703000000004ccf639ce908000000007f63fd2300301b47d501c0a45d24b9ad8e60b487786005f66395645b1dc128a7190e14a0ce6b866b86f65c27b9aa8e00d8939b2497d511ec784c72571dc19bae32dc0fd0867f27e9ab23805958c5dcab15e731f702fed9a63a00000016ea32c3fb29000000807fb2a90e8019d85407000014398f6fb300e02df686030096cc21bb0000b46e1b7baac15439e703000076b94f0600000000981eb35b00000000789b6ff800805939aa0e0026adab0e60b46d92557504301baff13fa525d749aeaa2316ae4ff2ab3a820fe9929c5447007cd25992757103bb3ca74fdb49ccbd5ab24d72531d01cc86b9575b6e331ca809f037dbea00000058a87586f75400f055aeaa030000008a6caa0300000af98e1e00769dc4e17200c0b23d55070000c027f5d501c09b5e933c57470000c08438c01d00000000609afaea000000000098b0be3a0000609f8eaa0380c95a2739af8e60b455864d2d00f6e53ec9437504a375190e18a0ce3ac94b7504ef769ae16f07d0b22ec97175043bd67158f494dd64b80fa00dab987b01fb759fe4b13a82d1baea0060f21c36070000358ee3b91d000000f8679bea009881be3a0000a05817dfd103c0ffb68e6f64018065f34d210000adbbaf0e00feaaab0e00008009f10c0b00000000303d2fb1ae1e00000000fec6fa470060568eaa038049ba48725b1dc1680ff1b00a1cc62ac9b63a82514e331c30409dd70cd70cedb94e72551d01f04137492eab23d8f198e4ae3a8237997bb5c5dc0b389455ccbd5a711e732f00000098aacb0cefab00000000deb2a90e801978ad0e000028769aa4ab8e008089f89e618f0c008025f3ee040080d6f5d501c05fd9fb100000fe475f1d0000000000c08ebe3a000000000026aeaf0e0000d8a7a3ea006092baea0046dbc601f0c0e1bc2659554730da7592abea8885eb93fcac8ee043ba2427d51100ef7496645ddcc0ae6ddc434f5d571dc068ae27e09036712fd592db2417d511c064f5d5010000b070eb0cefad00e0d02eab030000008a3c550700004cc0b7d85b0500cee21b590080c437850000b4ed39c3de47c0746d92bc54470000c044dc57070000000000b0c3ec1600000000dee61b3e0060768eaa0380c9592739af8e60b4753ca80287759fe4a13a82d1ba2427d5110bb7ce3048a62da749eeaa2300dea94b725c1dc18e753ca74fd93ae65e2d592579ad8e0066ed2ec9637504a375d501000000c01f1dc7733b000000f067bead80fd713d01000cdf055d54470040a12ebe2d0700d856070000c027f5d501c028f7d501000030018fb13f3800000000c014f5d5010000000030617d750000c0be1d550700937291e4b63a82d11e93dc5547008bb08a0d5b5b719ae1f01d6aadaa03f8901f49be5747008cb44e72591dc10ecfe9d366eed59687d8b815f81aab987bb5e23ce65ec09ff5d5010000402e93dc544700306b17d50100007c88030a617f5c4f0000c971922ec9497107005458c7b7e5000049f2541d0000009f646f356843571d00000013e0191600000000607a1e622f2200000000f89bae3a000060df8eaa038049e9aa03186d9b64551d012cc66b868dec69c37592abea88857b4af2b33a820fe9e2e02a60fa2e92dc5647b0c373faf475d5018cb64d72531d012cc626e65e2db9cd703f0c0000004ccf3a9edb01381c6bba0000da64936bd89fbe3a00006022ce93dc554700c017bb8a6fcb0100fecb53750000007cc236d601412b9e325cb30000b064f7d5010000000000ece8ab030000000060c2b6b12f0500304347d501c064ac336cd44f1bd64936c50dc0b2dc2579ac8e60b42e0e6cafb64ef25c1dc1bb1d67b87e00a6acab0ee08fd6f19c3e65eb987bb5641dd713f0b5ccbddad25507009363612f00004c83f7ed001cd245750000001fe25d1eeccfa63a000060427e2459554700c0173949725f1d010030219bea000000f884be3a007817f379000096ec25decb00000000004c91f50c00000000f036f3330060968eaa038049b848725b1dc1688f49eeaa2380455a25d9564730ca69927575040e3f6ad4b724dfab2300deb04e725e1dc10ecfe9d366eed516d71350651573af569cc7dc0bf8dd6b75000000f0df3cb703702867d501000000c536d5010000137397e19b210098bbfb24c7d511000013f2541d0000009fe0f03b688b6b16008025733f0c00000000303d2fb10f1100000000fc4d5f1d0000700847d501c02474d501bccbaa3a0058ac4d92757103e35d27b9aa8e58b8a7243fab23f8902ec9497504c0ff7191e4b63a821ddb784e9fbaae3a80d15c4f40a54dccbd5a721b074e03bf7bae0e000000fedb6dac570160ffcc840100dab4a90e8019e9ab03000026e638c3e1e8be050660ceee925c564700004ccca63a0000003ea1af0e00dea5af0e00008042f7d5010000000000ec30bb0500000080bf3343030066e9a83a0028b74e725e1dc1683f63d344a0d65d92c7ea0846ebe2e09d6aeb24cfd511bcdb7186eb07604abaea00fe681dcfe953b68eb9574bd6713d01b5eee219be255d75003029afd5010000c06fee63bd0a00fb75511d0000c0876caa036066b6d501000013731a6b8a0198afef49aeab2300002668531d0000001ff41cf7b3d09ad7240fd511000050609ba4af8e000000000060c77d7500000000004cd8639c6f0d00ccd451750050ea2cc96d7504a33d27595747002459c58177ad388ddf8e29f81ed74c8bbe65f8db014cc13ac97975043b1e93dc5547f0a68b987bb5c4f5044cc5aa3a80d1ce63ee05fc8fa7ea000000e037c749baea080066e32cc36f0b0000c0d279370e00b0eb5bac2906607e2e62ed0d00c09f3c56070000c027f4d501c087dc570700004001f7c10000000000d3b38d354800000000f037d63f0200b375541d0094eaaa037897557500c07fdac4412e2db94e72551db1709bb8665ad52539a98e0016ef22c96d75043bb6f19c3e755d7500efb2aa0e00f84f4f497e564730da6d86fb6580d7ea00000060c7b72437d51100cc8239300040bbfaea009899a7ea00008089ba4df2bd3a0200f6e424c3f7b1c7c51d000053b4a90e0000804fe8aa03800fe9ab030000a08003dc0100000000a6a7af0e000000008089b3fe110098ada3ea00a0cc4d92cbea0846fb19874b01d37297e4b13a82d1ba0c871450c735d3a6e3d8e40fa8d75507f0473771b0c194ad939c574730dacfb89e8069592779ae8e60b4ae3a009804ef510100609afe23c945750400cdf35b02000030d8540700004c5817f36400e6a18bef630100deb2a90e0000800fdac6be18d0aa4dec470600c0f2f4d5010000000000ecb8af0e0000000080097b893d290080193baa0e004a9c2559173730de73fcbd80695a550730da69fc964cc12ac3a671b4e55b92efd511c062ade390a1297ac8700014d37491e4b63a82d1ccbd80a95a550730da79fc9600c96b75000000f0a6fb2427d5110034edaa3a0000800f715837ecdf53750000c0841dc7bb4900da7797617f0b0000feacaf0e0000800fbaaf0e003ea5ab0e0000802ff4107b3b02000000004c91354800000000f036f3330060d68eaa0380125d86cdf769c3aa3a00e00d9b243fab2318ed3a0e72afb649b22e6ee063ba38b40af87a17496eab23d8b18de7f4a9ebaa037897557500c01b9e62eed592db0cf7cfc0723d55070000006f3a8dd93d009f73591d0000c08738a810f6cfbb710080bf3b4dd2574700c007ad32ec0b0300c0db36d5010000f0410ebf83b6f5d5010000f085faea000000000000763cc69e5e00000000f037bee1030066eda83a00f8723771886b4b7ec5a152c0b4ad933c5747305a97e4a43a62e1ee322cdca42dc719ae1f80afd45507f047abf80063cad649ceab2318ed67ccbd80695bc7dcab255d750050ca731a00004cdbb70cb3160078af8bea0000003e6c531d0033f49a645b1d01003071e7b1ae1880f65c24f957750400400336d5010000f0417d7500f0294f495eaa230000e08b38c01d00000000607acc6e01000000e06ddbf8860f0098b9a3ea00e04b9dc521e02d7989bf17d086557500a39dc66fcb147c8f03235bf42dc3df0ee02bac331c96c7b43cc40718537691e4b63a82d19ee3d90468c3aa3a80d1cee3b70596eeb93a000000f8abdb2457d5110034c77a2d0080766daa0360a69eaa0300001af023c94d7504008c74161b5f03008cf1581d0000001ff490e4b53a02f834fb900200b004cff14d1800000000c01459b700000000006f333f030066efa83a00f8525d92e3ea08465bc5c632401b9e92fcac8e60b4eb2417d5110bf79ae1779ef674494eaa2380d9bb48725b1dc18e6dfc7e4f5d571dc0bbacaa03004632f76acb6dccbd60c9bc57050080e9bb4f72561d014053aeaa030000f830efefe0309eaa0300001af11ff1ed0a00d37792613d8d3de10000fed9a63a0000003ea8af0e00f6a2af0e0000802fd057070000000000b0e325d6d303000000c0dff4d50100008776541d007c999b2497d5118cf62b1e4a81b6ac933c5747305a571d40ee933c5447f06ec771fd0087d75507f047ab384c7dcad649ceab2318ed671ca00eb4e52ec38798b4a1ab0e00caf4d5010000c03f3aceb05ee2a43a0480269cc4f70f00002db3460c0e63531d0000d0907f25b9a88e0080bfe8e3db580080b136d5010000f041f7d501c05edc27d956470000c08175d5010000000000ecb0fe0800000000fece0c0d0098bda3ea00e04b9c2559173730de4bfcbd8036adaa0318ed3c7e6ba660151b4fb5e85b92efd511c06cade3a0a1297a8817c7537696e4b63a82d15e92dc554700bcd36bccbd5a62ee05000000d3761e736200c6b1460b000060d7537500004063fa2417d51100f0075d7c530e00f01e7d750000007cc073924d7504b037f624050060ceb6f1cd0a00000000c01475d5010000000030610f495eab2300000eeda83a00f8125d92e3ea08465bc50329d0a6a7243fab2318ed360edca9f69ae1779ff674494eaa2380d9b9caf0fbccb46ce3f77aeabaea00de6515732fa04d7d925fd5118c66ee05cbd45707000000a3fd48b2ae8e0060f2aeaa030000f894be3a0066aaaf0e000068cc71867b28df040330255d86f53300008cb7a90e0000800fe8ab0380bdeaab030000e080eeab030000000000d8b14df2541d010000000013d6570700007c85a3ea00e0e06e925c564730dabfe3811468db3ac9737504a375d501e43ec3ef3f6d398e4d1480fd3a89dfe5a95a2579ad8ee04de65e6df915732fa06deb242fd5118cd65507005fceb31b0000b4e536c37b180078cbf7ea0000008089b2860900e07d8e337ccf7252dc0100c9b05ee6477504004063b64936d5110000f0015d7500b057f6a2060060cedcef02000000004c8fd92d00000000fc9d191a00b00847d501c0419d2559173730de36c94d7504c01ef85fd68ef3b85798829b383cb24597f1ff0ed89f7592d3ea08763cc44be3293b8b7bd996bcc4df0b68df6b8643226983b9172ccf5375000000f06e77492eaa230098a4ef498eab230000f8b0c7ea0098b94d7500004083ce93f4494e8a3b0058b655927f5547000034c8b7830000b4e825ee65616e5e33ec510a000073d457070000000000b0c339aa00000000f0b6e7d8ab1b005888a3ea00e0a0ba38b8b525ab0c9b4f00b4ae4ff2ab3a82d16e935c54472cdc6b86fb00dab34e7256dc00b4ef2ac97575043bb6f1fb3c755dccbd5ab28ab917300f7dccbd5a62ee05cbf3521d000000bccb718679cb596d060013b4aa0e00000098b0be3a0000a051e771480f00755649fe551d0100d0a8a7ea000000f880be3a003888be3a0000000ee021f60e0700000000989a6d7c1b0f000000007fd3550700007c95a3ea00e0606e925c564730da432ce600e6659de4a53a82d1baea00d227f9551dc1bb1dc7f5037cce49fc1f99aa556c983365e65e6df9159bad02f3b28eb9574bbaea00e04b6daa03000080773bceb076f2a43a0480c93849f2ad3a0200804fe9ab0360e636d50100000dbb8cf5c5007cbd8b2477d51100000ddb54070000c007386f00e6c9b50d00c01cf5d5010000000000ece8ab030000000060e2faea000080af72541d001cc45992757103e36d93acaa2300f6ec35feb7b5e43cee1da6609de4a53a8277bb4c72531d01346b9de4b43a821d0fb131e4949dc5bd6b4bb6f1f702e6c7dcab2de65eb02c9bea000000e043cee3dd0c00ff63551d00000030714fd50100008dfb91a4ab8e0060312e326c727d5cdc0100d032ef46000068cd36be9783b9da2479ae8e0000803df30c0b00000000303d66b700000000f0b697d88b02005890a3ea00e020bad8b0b825ab24afd5110007d027f9551dc168b7190e3ea0ce6b86fb02dab34e7256dc00b4e72ac97575043bb6f17b3c755dccbd5ab28ab917304f7d927f5747309ab9172cc7a63a000000f8b0cb0cef0000e0a63a0000804febab0360e66c8c0500f0793fe2fd24008777916156e69b580080cfe9ab030000e09deeab038083eaab030000608f9e630f47000000008029b2060900000000de667e06002cca517500b07737190ef2a60d0ff1200accdb3ac94b7504a375d501a44ff2b33a82773b8eeb07789f93f8bf3155ab24afd511bcc9dcab2de65ec0dcdd24d95647305a571d007c89a7ea000000e0537ec4333cc0d25d2539ad8e00000068c073750000c00c783f09c0215d64d83fe4b8b80300a075f6300400a0457d750070505d75000000ec515f1d0000000000c08e87384f1500000000fea6ab0e0000f84a47d501c05e9d2559173730de36c9aa3a02e0c05ee37f5d4bcee35e620ad67190648b2e93dc544700cd582739ad8e60c7bf93dc5747f0a6b3b8576d89b917b004e65e6d31f78265f0013d0000b4ef47cc5c0096ccfa2b008079e8ab0360019eaa03000066e2476c3e0ac0fe5d6498911d17770000cc8177220000b4c87e86306f4f495eaa230000604fbaea00000000000076587f04000000006f7b89bd2800808539aa0e00f6aa8b4d8b5bb24ef25a1d01f005fa24bfaa2318ed36c36108d45a5507f021eb2467c50dc0f45d25b9ae8e60c74b929bea08feaa8bb9574b5631f70296e13ec9437504a3997bc1fcf5d5010000c05efc2bd64d002cd159926fd51100007cdab63a001662531d000030233fe2007600f6e722c3ba76dfc30200ec874343000068cd43ecbf064bd057070000c01e6ce35d0c00000000c014dd570700000000c084999f01008b73541d00eccdf72497d5118cf698e4ae3a02e00bad93bc5447305a571d4094b68dff00002000494441549e92fcac8ee0dd8ee3fa01feee24fe4f4cd52a367b9db29b987bb5e421165f00cbb2cab0e91e6de8aa038083f33f190000e6e15f19e62e002cc7ba3a000080bd7068217c8dbe3a000060667ec43a63003eef22c333fb71710700c09c78ff0800406becbf06cbe05a0700600edcd702000000004ccf739ca90a000000007fd3570700007cb5a3ea00602f4e6223fc966ce360756079fe3f7b7774145792b66bfbf988392f7e0bc003f82d000f605ba0da1688cf024a160859a01a0b1a2c506181c0021516345830fb20a51ea925d15512f066565d5704a19939ba2398b5582b3357e67d92b3ea0856761087c1f76096b6f093b11cc5fd0ef8b95992bdea08bef32e268a7bb61fcfa62331ee056ca3fbb8f78dc4b8176c3e07d20100c0e6789fe4b83a028017b19fe455750400004fc2c6d7f032cc8d03003cbd57b1770f00bfee30ed5be549710700c0a631270200c0682eab038017e15a0700601378ae0500000000e8cfbc3a00000000003af610eb1f01802db4531d003c89796c5c3c9259926571034085cb2457d511acec3ced80046a9da60d5e33965992fde206a03fc7495e5747f09dbbb4fb36fd9ac7b8d7486649eeab23000a18f71a8b712fd86c0ea4030080cd7219eff100db60561d0000c093315f072fe33e6d1d3400004feb551cea03c0fa0e932ce25b580080a7f610fbb602003096ebd8830db6893dc7000018dda23a000000000080ef5c56070000000040c78c9f01005b69a73a00f86da7494eaa2358d975928bea088042d3b40d6119c3bc3a802c93cc8a1b58df24ae1fe05bbb715fe8d534367aedd95992a3ea085666dc0bd876d318f71ac9bc3a007836def1000060b34cd20e3c382cee00e0f9ec2779551d0100c093595607c01659560700006ca857691b93ee5687003084c3b4b52d93e20e00804d74531d0000006b72f81d6c17d73c000023bb8a7d1b01000000007a731b7b0a01000000c0637ccf03006ca59dea00e0b7ec26995747b0b28724d3ea088062f7712f1cc94192597504b948725d1dc1da8e929c554700dd9825d9ab8ee03befd20e85a24ffbf12c3a12e35e00c6bd4663dc0b36d7a23a000000787293b467fdc3e20e009ec7ac3a00008027b5ac0e802db2a80e0000d8602769cf5bbbc51d00f46d9ae463dada1600009ede4d75000000acc9e177b05d5cf300008c6c511d0000000000c077e6d50100000000d0b187f89e0700d8523bd501c06f99c7e6c523b98803d80092361077551dc1cace931c56479069da4036639925d92f6e00ea1d27795d1dc177eed2eed3f46b1ee35e2399c5b81740d2c6bdaeab235899712fd84cf7d5010000c0b398a41d7ee05d1e60b31c2679551d0100c093baa90e802de27a0300785e07697394bbc51d00f4699ae47d750400c08633170200c0486e631f36d836f769d73e00008cc801ee0000000000fd31760b000000003f67fc0c00d85a3bd501c02f3b4d72521dc1ca6e93ccaa23003a324df2501dc1cae6d5016499e4ac3a82b54de2fa816db71b1391bd9aa66df8489fce921c5547b0b2eb2417d511001d99c6b8d748e6d501c09373281d00006cae49924592c3e20e009e8e79460080cd636d26bc1cf3e30000cfef20edb9cb1c25005f3b4bf2be3a0200600b980b01006024f3ea00a0c4bc3a0000007ec16ddaf9370000000000f4c3d82d000000003ceeb23a0000a0ca4e7500f04b76634382d14cab03003a731ff7c6911c24995547907992abea08d67694760009b09de64926d5117ce75d924575043fb51fcf9e237988773b80bf5bc6dfb29118f782cd745b1d0000003c9b49da3ccf61710700bfef346d6d1500009be3ba3a00b6cc326d1d270000cf6b2fe62801f8af7992b7d51100005be2a63a000000d6e0f03bd84eae7d000046b4a80e0000000000e03bf3ea0000000000e8d8437cc703006cb19dea00e097ccd30ee1660c6f62f343801fb94c72551dc1cacee3609d1e4ce370c911cde2fa816d749ae4a43a82efdca5dd97e9d73cc6bd46729176003a00dfba48725d1dc1ca8c7bc1e6b9af0e0000009ed524ed3084696d0600bf613736470400d844cbea00d842be5d06007819e62801f832c7f9aab80300605bf84e1b008091dcc6fa39d856cbb43d4e01006024f3ea000000000000be73591d00000000001d337e06006cb59dea00606da7494eaa2358d96d9259750440c7a6491eaa2358d9bc3a80dcc7e146239ac4f503dbe6cb2144f4679af6f7943e9d2639aa8e6065c6bd001e378d71af91ccab038027b5a80e0000009edd24c9fb58430130aa59dabd1c0080cdb2ac0e802db4a80e0000d8225fe628cfaa43007871bb69efe0af8a3b0000b6c9b23a000000d630af0e004a3900130080913c24b9a98e0000000000e01bb7b1861e000000001ee3fb1d0060abed5407006bd98d8d484633ad0e00e8dc7dda41e48ce1207e5f3db84cf2efea08d6e6fa81ed324f3b908ebebc8b439a7b66dc6b3cd3ea0080ce2de33d7024dedb61b32cab0300008017f33ec6ab0146739ce47575040000cfc2e185f0f25c7700002fef6d7c0305b04d0ed3debf0faa430000b68c3910000046e2f03bd86eee0100008cc4f32b00000000407fe6d50100000000d0b18758ff08006cb99dea00602df32493ea0856f626363e0458c54592ebea0856769e76c002b5ce92dc5547b036d70f6c87d32427d5117ce72ec9ac3a8247cd63dc6b24c6bd005663dc6b2cdedb61732cab0300008017f53ee6810046b11b1b2302006cb2fbea00d842d6720200d47895649136ee0dc0e63a4dbbdfef157700006c23732000008ce236f6b8806db7483b0813000046e000770000000080fe18bb05000000809f337e06006cbd9dea006065a7494eaa2358d95d928bea0880814c63939d91ccab03c87dda75c378e6d501c0b3da8debbc57d33818bd67c6bdc6729b64561d013090698c7b8d645e1d003c894575000000f0e2cee3bd1e60041749f6aa23000078368bea00d842cb589b040050e528c94d92c3ea10009ec559923f924caa430000b6d4a23a0000005634af0e00bae0204c000046b1a80e0000000000e01bb7697b0801000000003fe6bb1d0060ebed5407002bd98d4d4846334d725f1d0130906592597103ab3b88df570f1649de5547b036d70f6cb6791c44d4a377b1294ecf8c7b8d675a1d00309865bc078ec47b3b6c8e87ea000000e0c5bd4afb5870b73a04801f3a4dbb570300b099eeaa03608bdd540700006cb1bdb4efd64e8b3b00783a5fbe797d5bdc0100b0cd6eab030000600d0ebf0312f7020000c67015e7e90100000000f4665e1d00000000001d7b88ef760000b2531d00ac649e64521dc1cadea51d3000c07a2e925c5747b0b2f32487d51164169b2d8fc8f5039be934c9497504dfb94dfb7b49bfe631ee35923771d039c0afb888f7f791786f87cde0b9150000b6d349dafacddde20e00beb51f9b2202006cba6575006cb145750000c0969b24f923be6103d804fb69efd9af6a330000b69e6f03010018c56dac9d039a4575000000acc001ee0000000000fd31760b000000003f67fc0c0020c94e7500f08f4ed30ed4660c7771a800c0ef982679a88e6065f3ea00729f76dd309e797500f0a476e3baeed534edef257d32ee3596bb2417d51100039b5607b096797500f0db1c52070000dbeb20ede0bfc3e20e009addb40fba27d52100003cab4575006c31f3e300007d384f7b37da2dee00e0d71ca7bd631f1477000060ee03008071ccab03806edc27b9aa8e0000807fb0a80e0000000000e01bb769fb6803000000003f76591d0000d0839dea00e051bbb101c968a6699b4400f06b964966c50dacee207e5f3db849f2a63a82b5b97e60b3cc934caa23f8ce9b3894a067c6bdc6338d712f80dfe1fd7d2cdedb617ccbea000000a0d424ede084d3e20e00928bb43157000036dbb23a00b698f5d20000fd384a7b3e3bac0e01602d67493ec4b7e20000bd5854070000c08a1c7e077ccd3d0100809eddc6f75f0000000000bd9957070000000040c71ee27b1d008024c94e7500f0a8796c6a3c9277b1d921c053b848725d1dc1cacee3109d1eccd23efa672cae1fd80ca7494eaa23f8ce6ddadf47fa358f71af9118f702781ab3787f1f89f77618db4d75000000506e92e48f2467d521005bec2cc9abea0800005ec4b23a00b6d8326d332d0000fab097e463cc53028c60376d73eab7d52100007cc3b78100008ce036d6cd01df5a54070000c0231ce00e00000000d01f63b700000000f073c6cf00003edba90e007eea34c94975042b7b4832ab8e00d820d3ea00d632af0e20497b7e74e0e478e6d501c06fd98debb857d3ea001e65dc6b2c7731ee05f094a6d501ac655e1d00fc3287d40100005fbc4d7bc7df2dee00d836a769f7600000b683f939a8e51a0400e8cfdbb44d4fcd5302f4e930ed7ddab7ae00007db9ae0e00008015cdab0380ee2c93dc56470000c04f38c41d00000000a02fd7696b0d00000000801f9b57070000f462a73a00f8a1dd2417d511ac659ae4be3a0260832c93bca98e6065074966d5116419bf8711b97e606cf32493ea08bef3260e61eed96e4cd88f661ae35e004fe926c6bd46e2bd1dc6759fe4a13a020000e8c6ab248b24fbb519005be330e6850100b6c95dac31836a8bea0000007ee8246dfdf861750800df384bf231c95e75080000dfb15f0c0000a3b8ac0e00bae4de0000408fee620e0600000000a037f3ea0000000000e8d85decb90d00f0979dea00e08766b1b9f148ae62430880e7304b725b1dc1cacee3f09c1e5c24b9ae8e606dae1f18d369da0172f4e536ed39927ecd934caa2358d9bb586001f01c6631ee3592f324fbd511c02fb1512a0000f0b583b4f784d3ea10800d779836c7685e1800607b2cab0300f3e300001ddb4bf231be7903e8c16eda5ce6dbe20e00007ece9c07000023b88d7573c08f39af0400801e2daa030000000000f88e350600000000f073c6cf0000beb2531d007ce738c9ebea0856f690645a1d01b0c1a6d501ac655e1d4092e434ed1985b1ccab0380b5ecc675dbab6975008f3a4d72521dc1caeee2704c80e734ad0e602df3ea00e09738ac0e0000f8bb49923f62fc1be0b9eca67dc43da90e0100e0452daa0300d72100c000ced39edbf66b3300b6d669926592a3e20e00001ee79b4000004630af0e00ba7593b687230000f4c421ee00000000007db94a725f1d01000000001d9b57070000f464a73a00f8c66ebcb48c661a0b35009ed34d9237d511acec20c9ac3a82dca73da33016d70f8ce532c9a43a82efbc8983087a66dc6b3c6731ee05f09c8c7b8de528ed6f2330966575000000d0adf3248bb4f90b009ec66edabd75afb803008097b7ac0e00721f87de03008ce0286d1df9b4b803609bec26b948f2477c1b0e00d0bb87d837060080315c5607005d738f0000a0379e510100000000fa62dc16000000007eee2ef69e0000f8c64e7500f08d591cd83a92ab58a801f01266496eab2358d97992c3ea087299f6acc2585c3f3086b3b483e2e8cb6dda7323fd9ac7e15e2331ee05f0322ed216b431865992fde206603d160c0300008f394ab24c725c9b01b01176932c921c147700005063591d002431470e00308a4992f769dfedec16b7006cbae3b4f7e5d7c51d0000acc65c07000023b88a3573c0e316d5010000f01567d60000000000f4c7f99000000000f073c6cf0000fe66a73a00f8cb716c743c928724d3ea08802d32ad0e602df3ea0092b4ebe6a13a82b5cdab038047ed27991537f063d3ea001e759ae4a43a829519f7027839f771cf1dc924dedb61348bea000000a07b93241f925c5487000c6c376d1ce6a0b80300803a8bea0020896b1100603427499669df5d01f0f466696b42f68a3b000058dda23a00000056e0f03be09f5cc69ee00000f4c37b2c00000000405ffe9d76661900000000f063ce920300f89b9dea0020493bb4755e1dc15a66b14803e025dd2479531dc1ca0ed2fe5652eb3e0e2d1ad1414c6640cfe64926d5117ce74ddaf3227d32ee359e698c7b01bca4459277d511acec28c9597504b096bbea0000006008afd3e69b0eab430006b39f36ce7d509b01004021f371d00feba90100c63349f247da01f1bbc52d009be230ed1df9bc3a040080b599eb0000600497d501c010dc2b0000e8c5a23a0000000000806f585300000000003f779b64591d0100d09b9dea002049324bb2571dc1caae935c5447006ca159da201f63384f3bd8815a8b24efaa2358dbeb24c7d511c077ce921c5547f09ddbb4e744fa354f3b4c91315cc5c74900156649eeaa2358d92cc97e7103b0ba6575000000308c83b4751667c51d00a3384c729376ff0400607bdd5407007f5954070000f0cb4ed2d63b4e6b330086b69bb627d8c798c3040018d5a23a000000fec15592fbea0860088bea0000008843dc01000000007af310674402000000c063e6d50100003ddaa90e00729ce47575042b7b880dff012a9d5507b09679750049925992bbea08d6364f3b2405e8c37edafd94fe4cab0378d469da018a8cc1b817409dfbb8078f6412e35e3092457500000030944992b769ef12fba525007d3b4cbb574e8a3b0000a877531d007ce3ba3a0000805f3649f23ee62a017ec571da38957ddc0000c67597f6bd350000f4ecb23a001886fb0500003df05c0a00000000d017e3b600000000f038636800003fb0531d005b6e37c9bc3a82b5cc922c8b1b00b6d922c9bbea08567690f6b7935af7494eab2358db5e5c3fd09379da0170f4e54d1c7cdeb3dd2417d511ace52c0ef400a8b48871af911ca5fded04fae7bd110000f8154769ef13deff01be374df231d6510000d02caa03806f9823070018df51924ff18d31c02a76d3369bfe90b63f030000e35a54070000c03f7888f32480d5dd27b9ae8e000060eb39c41d00000000a02ff3ea0000000000e8d8559265750400408f76aa0360cbcd62e3e3915c27b9a88e0020b32477d511acec3cc9617504b949f2a63a82b5bd4e725c1d01e42cedd037fa721b87f0f56e16e35e23b98e0f93007a308b71af91cc92ec173700ff6c591d0000000c6b92e46dda81d8fba52500fd9825795f1d0100405796d501c03716d50100003c99f3b477aee3da0c806e9da5dd274f8a3b0000781a37d5010000f00f2eab0380e1b86f000050e92ee65f00000000007a72177b0301000000c0637c8b0300f0133bd501b0c58e93bcae8e60650f49a6d511002449eee39e3c9a79750049925992dbea08d6364fb25b1d015b6c3fedfe495fbca3f7ef38c6bd46e29a02e88771afb14c62dc0b4660e3540000e0771da5bd5bcc8a3b002aeda67da87d5e1d020040571e922cab23806f98230700d82c7b493ea48dd1efd7a60074e338edfdf76dda771d00006c864575000000fc0387df01eb72df0000a0d2a23a0000000000806f584700000000008f33860600f0133bd501b0a57693ccab2358cb451ca606d093459277d511acec20c9ac3a8224c969da21b18c632fae1fa8348fc38b7a348bc3957b66dc6b3cb318f702e8c922c9bfab2358d95192b3ea08e01f5d5707000000c39b24394f9ba33aae4d017871876963d727c51d0000f4c75a4ee8cf32c95d750400004fee24ed1d6c96f6ed16c036faf2edea87b43d4c0000d82ce61e0100e8d95d1c7e07ac6f99e4b63a020080ade53d1600000000a02f17d50100000000d0b17f27b9af8e0000e8d54e75006ca95992bdea0856769bf63b03a02fb338506f24e76907d9536b19cf35237a9de4b83a02b6d05992a3ea08be731d1f50f46e16e35e23714d01f4e92cc94375042b9b25d92f6e001eb7ac0e00000036c641920f49e649766b53005ec434c922edfe0700007f77531d00fc906b130060334dd2bed7bf491bbf07d826b3b435e1af6a3300007826d7d5010000f00f2eab0380612daa030000d85ade650100000000fa711be7e600000000c063ac7b040078c44e75006ca1e324afab2358cbb43a00801fba8f7bf468e6d50124492e62c3e611cd93ec5647c016d94f3bcc88be3cc4f35fef8e63dc6b24ae29807e19f71acb24c6bda07737d5010000c0c67995b6e9d7597107c073d94d1bf77c9f36060a00003f621e0efab4a80e0000e059eda58ddf2fd2bee502d864d3b4f519e7316f0900b0c916d5010000f00fe6d501c0b0e6d50100006ca5abea000000000000be31af0e00000000808e3d24b9ac8e0000e8d94e75006c992f07b9328e3771901a40cf1649de5547b0b28324b3ea089224a76903e88c632fae1f7849f338c8a847b3b483a6e89371aff1cce29a02e8d9656cfa3792a32467d511c04f99ef0500009ec324c9dbb4778ee3da1480277598766f7b551d020040f7ccc3419f16d5010000bc88a3241fd2d69defd7a6003cb9e3b4f7dbf769fb2c0000b0d9cc3b0200d0b3bb7866057edd4dda7d0400005e9243dc0100000000fa32af0e00000000808ecdab0300007ab7531d005b66161b228fe436ed770640df66b109cf48ced30eb8a7d67d926975046b7b9d76d80af0bcced20e6fa32fd7492eaa2378d42cc6bd46721bd714c008a6491eaa2358d92c0e7f865e2daa030000808d7690e443da010efbb52900bf6d96e463ccfd0200b09a9bea00e0875c9b0000dbe524c9a7b48d57f74b4b007edf7edadaef0ff1ad3700c0365954070000c023ecd506fcae45750000005b67511d0000000000c05faed2ce1007000000007e6c5e1d0000d0bb9dea00d822c7495e5747b096697500002bb94f72561dc15ae6d50124492e93fcbb3a82b5cd93ec5647c006db4f322b6ee07b0ff18edebbe318f71acdb43a008095dcc73d7b249318f7829edd56070000001bef24c9a7b4f946f3fac0680e93dc2439af0e01006018d7d501c0a35ca30000dbe755cc5702e3da4ffb1ee35392a3d21200005eda6d1cc60b0040df2eab0380e1b98f0000f0926e932cab230000000000f88b750300000000f0737769e7250100f0889dea00d822f3ea00d6f2265e2a01467299e4aa3a82951da41d7e43bdb3b4c174c6b117d70f3ca77992497504df99c586373ddb8d71afd118f702188b71afb11ca58db700fd5956070000005be33ced1d6496368f02d0b3ddb4fbd5c7b4757d0000b02a6bd0a06f8bea000000ca98af0446b29ff67deaa724af4a4b0000a862de1100809e5dc75e15c0efbbac0e000060ab78fe0400000000e8c7439cf109000000008fb9a80e000018c14e75006c895992bdea08567697f63b03602cd3b485758ce13cc9617504b94fbb7618cbeb24c7d511b08166498eaa23f8ce754cfcf66e16e35e23b98d712f80114d63dc6b24b3b4435481be38c80e0000784993b4b53137b12e03e8d771da7deabcb803008031997f83be2daa03000028f565be7299b6b679b73206e007f6d30e5dfb94e45569090000d516d5010000f088797500b031aeaa030000d81a97d5010000000000fcc5982d000000003cce181a00c00a76aa03600b1cc6a1aea399560700f04beee31e3e9a79750049da06ceefaa2358db3c0e8c82a7e4ddbd4f0ff17cd7bbe324afab2358cbb43a00805f62dc6b2c9318f7821e2daa03000080adb497e47d92658cef00fdd84ffb00fb43da7d0a00007ec54d7500f028d7280000495bd77c9e365f799136470050693fed7b8b4f495e95960000d08b4575000000fcc4431c7e073c1df71300005ec25d7c4f0200000000d0938bea0000000000e8d855da3e890000fc839dea00d802f3ea00d6f22e36310418d965dae02063384832ab8e20497296e4b63a82b5ecc5f5034f695e1dc00fcd62d2b767bb71ed8ce64d6c200530b2cb24d7d511acec286dbc05e88767610000a0d25e92f769735fd3d212609beda6cdc3df2439a94d01006003987f83beddc777420000fcd724c9eb249fd2be07dbaf8c01b6d27edafde7539257a5250000f4e42ef6950100a05f97696b70009ec265750000005b61511d0000000000c05fee629f2e00000000788cef6d000056b4531d001b6e96e4a03a8295dda5fdce0018db34c94375042b3b4f72581d419276ed3096d7498eab236003cce2ddbd47d7492eaa2378d42cc95e75042b33ee05b019a631ee3592591cee0c3db94f7b2e060000a8b497e47dda61dbd324bb9531c05699a66d5c789e64529b0200c006b8ae0e0056b2a80e0000a04baf927c4a328f6f9481e7779cf67efa29edfe0300005f73182f00003d73f81df094ee93dc56470000b0f1bccb0200000000f4c339ac00000000f0730f69fb210200b0829dea00d860876907bc328e69da060e008ced3eed9ece38e6d50124699b39ff6f75046b9b27d9ad8e80817977efd3433ccff5ee38c9ebea08d632ad0e00e0492c93cc8a1b58dd24c6bda0370eb40300007ab197e47dfe3bde63de1f782ec769f79af769f71e0000780a8bea0060258bea000000baf62ac987b4e7c6696909b089a6696bb73f2439aa4d0100a0638bea000000f889bb2497d511c0c69957070000b0f1bccb0200000000f4c3982d00000000fc9cf133008035ec5407c0069b5707b09677b18121c026b94c72551dc1ca0e92ccaa2348925c24b9ae8e602d7bf1ee01bf635e1dc00fcd922c8b1bf8b9ddb8764663dc0b60b378771fcb5192b3ea08e02f37d5010000007f3349729e3637364fb25fd8026c96e3b439c20f69eb8b0000e029997783312caa03000018c25192f76973966769df8e01fc8addfcf7fbe0f769fb880000c06316d5010000f0130ebf039e837b0b0000cfc9f94c0000000000fdb88ab35801000000e03117d501000023d9a90e800d358b0d94477297f63b0360b34c933c5447b0b2f32487d5112471ed8ce824c96975040c6816efee3dba8e09dfdecd92ec5547b032e35e009b691aefee239925d92f6e009a4575000000c04f4c92bc4af229ed10b2e3d21a6064c76963201f921c95960000b0c96eaa038095dc27b9ad8e000060187b49dea61d86348feffe81d51da6dd37fe4cdb37c4f7a70000ace221e61d0100e897bd1081e7b04cdb1b1200009ec365750000000000007f31660b000000003f7717fb4d0000ac65a73a0036d061da46ca8ce32ced20260036cb7d925975046b99570790a46d66352d6e607df324bbd5113010efee7d7a88bf41bd3b4ef2ba3a82b54c63dc0b60132d63dc6b249318f7825e58600c00008ce024c987b4779869ac050056334db248bb7f1c95960000b0e9eed2d62d00635854070000309c499257493ec69c25f0b869da7de263da7d030000d6b1a80e0000809fb88d3572c0f3b9ac0e000060632daa03000000000048d2ce639d57470000000040c72eaa03000046b3531d001b685e1dc05aae62b306804d7691e4ba3a82951d2499554790a43d1f5d5547b09649bc8bc03ae6d501fcd0596cd8dab3ddb87646f32e368e02d864c6bdc67294f6bc0bd4ba4f72571d010000b0a28324efd3e6cf2e92ec57c600dd9aa6dd27dea78d430200c073bba90e00d6b2a80e000060685fcf59ce931c56c6005d384c5bc370036c103200002000494441549f767f38a8cd010060608bea000000f80987df01cfc9992800003c87dbd8db1f00000000a017d60600000000c0e38ca10100ac69a73a0036cc2c36551ec943daa1bd006cb669da3d9f319cc7e135bd9826b9ab8e602d27494eab236000b37877efd155da2176f4eb2cc95e75042bbb4bbbdf01b0d9a631ee35925992fde20620b9a90e00000058d324c9eb249fd20eeb9e26d92dec01eaeda78d37de27791ff3b80000bcac457500b09645750000001b6192e455928f69eb30cf62ce12b6c96eda5a859bb4fbc0ebb4fb020000fc8e4575000000fcc0431c7e073caf45ec190600c0d39b57070000000000f0978bea0000000000e8d8559265750400c06876aa0360831c2639af8e602dd3b4837b01d86ccbb4c3da19c7bc3a8024ed39695a1dc1dae671e8133cc6bb7b9f1ee26f4eef5c3be3398b712f806db08c71af914c62dc0b7ab0a80e000000f80d4749dea78d0bcdd3e67080ed719c76ed7f4a9bbf9d54c60000b0b56eaa0380b5dc27b9ad8e000060a31c24799be4cf2497494e6b738067749a363ff967da5a8583d21a000036c943cc3b0200d0a7cbd8bb0d787e97d50100006c9c457500000000000049da3e3fd6ca03000000c0cfcdab03000046b4531d001b645e1dc05aae628306806d7291e4ba3a82951d2499554790a46d36f0ae3a82b54ce2dd041e33af0ee087a6b1596befe6d501acc5b817c076b948fbf894311c2539ab8e802de7637d000060134c92bc4af231c9326d9dcd7e5d0ef08c76d3c61497493ea45dfb00005069511d00ac6d511d0000c0c63a49f247dab781f32487a535c053384cfb4ee53eedfa363f0900c0735854070000c04fccab0380ad609f4800009ed25decaf0800000000d08b7975000000000074ec21beab0100f8253bd501b02166490eaa2358d94392697504002f6e9af63780319cc72135bd384b725b1dc15a4e929c5647408766f1eedea3ab98e8eddd2cae9d9118f702d84ed3ea00d6324bb25fdc00db6c511d000000f0c4f6d2d6d97c4a3b54e22cc61e60139ca66d3cf86792b769d73a000054bbae0e007ec9a23a0000808d3749f22ac9c724cb2417b14f008ce430edba5da65dc7afd3ae6b0000782e8bea000000f881bb7856055ec6a23a0000808d627f7f00000000807eccab0300000000a063f3ea00008051ed5407c006384c3bf899719c25b9af8e00e0c52d93cc8a1b58cfbc3a80bf4cab0358db3cc96e750474c4bb7b9f1ee26f4cef5c3be399c6b817c036ba49f2a63a82954d62dc0baadd56070000003c9383246f937c4a3b64621a6b07602487492ed2d63afe91e455690d00007cefa63a00f8258bea000000b6ca5e92d7493ea6cd795ca4cd81007df97a6ef263da75bb57190400c0565954070000c00fccab0380ad719fe4aa3a0200808db1a80e00000000002049f2ef383f12000000001e73511d000030aa9dea00d800f3ea00d6721dbf33806d7691f6b780311c2499554790a41d34fbbfd511ac6512cfbdf0b57975003f348d0f257a37af0e602d57492eab230028334b725b1dc1ca8e929c5547c0165b5407000000bc809324ef93fc99b6eee32cc97e6510f043fb69d7e74d928f495e27d9ab0c020080472caa03805f721feb8a0000a8b19736f7f131c932ed5bb5d3c21ed87687697bae2c636e1200803a0f69ebe50000a037f3ea0060abd833120080a7f010cf960000000000bd9857070000000040c7aed3f63f0300e017ec5407c0e066490eaa2358d9439269750400e5a6d501ace52cc97e750449da6124d7d511ace5240e7282a4ddbfbcbbf7e72a36b6e9dd2cae9d9118f70220f1b76034b318f7822a0eb8030000b6cd4192b7493ea5bd13cd921c5606c196db4f5b177793765dbe8db9590000c6609e0dc6b5a80e000060ebed257995e48f24f769df164e93ec1636c136384d3bf4ec3ec9c724afd3ae470000a8b2a80e0000801fb88ac3ef8097b5a80e000060232caa0300000000004892dcc5982d000000003c665e1d000030b29dea0018d86192f3ea08d6328b4d6000687f0bde5447b0b2490c02f7649ae4a13a82b5cce3f026b6db71da614af4e521ed6f0afd32ee359eb3b443e400d86e3731ee3512e35e50e7a63a000000a0d041da3cd0c7b47554f324a7b1b6009edb61928bb471894f49dea65d8f0000308abbf8361346b6a80e000080af4c929c24799fe4cfb4f99359da7c0af07bf6d3be35bc4cf29f247f24799576dd0100400f16d5010000f003f3ea0060eb2c93dc5647000030bccbea00000000000092587f04000000008f7988358f0000bf65a73a000636af0e602dd76987fe0240d20e30b141cf388ed20ec9a0de32c9b4b881f54ce2dd85edb51bffffefd534c97d75048f9a5707b096ebf89d01f05fb318f71a89712fa87193b60019000060dbed257995e48f247fa6bd2fcd921cd725c1c6d84d729a368f779fe46392d7490e0a9b0000e0772caa0380dfb2a80e000080471c24394f9b4fb94f9b5f9926d92f2b82717c3d2fb94cf229c9db242775490000f0a84575000000fc8dc3ef802aee3d0000fc2ecf9400000000007d9857070000000040c72ed3f6180400e017ed5407c0a0667178ec481ed236a60780af4dab0358cb2c0e99e9c565927f5747b09693b4836760dbcc92ec5547f09dabd8d4a677b318f71a89712f007e645a1dc05a6631ee05156eaa030000003a7490e43cc987b48f362f939c2539ac8c82811ca68df72d92fc99e48f24af924cea920000e0c92caa0380df729fe4b63a0200005630499b5f799fe4539265928bb4efa477ebb2a02bc769f39237f9765ed237d50000f4ee2ebeeb0300a03ff3ea00606bd997150080df711b87b90300000000f4e02aed7b6800000000e0c72eaa03000046b7531d0003da4f3b8c9971cc62010600dfbb49f2a63a82954d6253b79e9ca56d06cd38e6713013dbe538c9ebea08bef390645a1dc1a30e939c5747b096598c7b01f03de35e6331ee053516d5010000009d9b243949f236c9c7b4832b2ed3d68c1cd76541570ed3ae89cbb46be463da7ceb51651400003c93457500f0db1c760f00c088f6d2be15fd23c99f696be52fd2be53dc2fab8297b39b36473f4b1b9ff94f920f69f3920755510000f08b16d5010000f0030ebf03aadcc4fede0000fcba7975000000000000498cd702000000c0636ed3bea10100e037fccf7ffef39fea0618cd220e951dc96ddae1c000f033377130c348fe373677ebc571dae1268ce32ac9697504bc80ddb4bfef7bd5217ce7ffc4c1c7bdf36c3c96ebb4673200f811cfc5e331ee052feb38c6370100007ed775dabaea9bcfffde57c6c00b384e5b977efcf96752d80200002fe9216d1d0230b6e39827070060f3dce5db394b1bd432bafd7c3b27e97b4f000036c9ff8dc379a1da22f6d40680afd9c70da87691e4757504000043faff63bd1c3ca75992f3ea0800a06bff531d00c516b10e090092f69df37e75040000d09de3d8fb1300beb0cf0400c013f85775000ce62c16b88d665a1d0040f7a6493e5647b0b25992cb24cbda0cd23efe78131f4d8fe424c969da35049b6c9664af3a82ef5cc5fda777b338cc6c240f31ee05c0e3eed3fe5658783e8e598c7bc14bb2e12a0000c0ef3bcab7ebaaefd2deb7165ffd0ba3da4f72f8f9e738be21000060bb2daa038027b1a80e00008067b097e4d5e79f2faef3df39cb9b589f4ddf8e3fff7c999bf47d3400009b6c511d0000007f33af0e00b6de22c9ebea08000086f3656f0f00000000006acdab0300000000a0630f6967b50300f09bfe551d0003d94f322b6e603d6fe2633900fed94ddadf8cf3ea105632495b60795c9bc167b324a7490e8a3b58dd3cedf09a656d063c9be3d87caf470f49a6d5113cea309e8747338bbfe700fcb3459277f18c3c0ae35ef0b2ee93dcc6d8260000c053dafbfc73f2d5ff769bb63e6b99365e7593f64e063dd94d9b333dfefcef61daff9701008066511d003c99ab7c3b760300009be8e8f3cf170f69f3948bcfff7e99bf8497f4654ef2eb1feb980100d826b7f12e0600405f1ed2f67901a87499763f9a54870000301487b90300000000f4615e1d00000000001dbb8c73ca00009ec4bfaa036020f3f8787f24b74966d511000c6396e4340e7818c55192b32417d5212449a66907f678561ec324eddde6b836039ec56e2cc2efd53426777b37af0e602dd7f12c0cc0ea6669e35e7bc51dacc6b817bcac45cc0b0000003cb783fcf7ddebfcf3bf0f496ed2decb969f7f162f9bc5163b4cb2fff9dfe3cfff5af70400008f5b5407004f6691e4a43a0200005ed8246d9df6d1dffef7ebb479cbe5e77f6fe23b489ec6d773925f7e7cd30100c0b65b54070000c0dfccab03003e5bc4ba3e0000d6b3a80e0000000000205769df2803000000003fe67c76008027f2afea0018c459bedf849cbe4dab030018ce59920fd511ac6c96e432165bf6e026edf7f1b6b883d51da5ddf34cb6b069667180538ffe9df6379b7ecd921c5447b096b3ea000086729f366762dc6b1cb318f7829772531d000000b0a526696b17febe36fb2e6d4c649136ae75f3f9e7fe05dbd81c8749f63ffffbe53f9b17050080f53dc4bc1a6c92457500000074e4b139cb9baffe3567c9cf7c3d27b9fff9c71e650000f0638bea000000f81bfbb102bdb84c72521d0100c0301e62cf7f00000000801eccab0300000000a063b7b1b73d00c093f99ffffce73fd50dd0bbfdb49790497107ab7b9364561d01c0902e92bcae8e6065d7498eab23f88bcdaec6f2907618ceb2b8039eca71920fd5117ce72eed5ee370b67e1d26f9581dc15a8c7b01f0ab8c7b8dc5b817bc8cfd249faa2300000058c975dabce3cd0ffe657b1d26d94d1b4bdbfdfcdff793ecd5250100c0c6b94a725a1d013ca965bc3b0300c0aff87ace72f9f9e7cbbc259bebcb9ce4d77393fbf15e050000ebfaffe2fd097ab04872541d01001db0af0bd093dd247f56470000300cdf7ac1cb982539af8e0000baf63fd501506c11eb9000d86e7769df9a020000fcc871920fd5110050ecff2699574700006c8a7f5507c000e64926d511acec2eff8fbd3b3a6e1b4bfb3cfc1fd6772f65606d04f646206d045206c30cac89c070042b670047b052044345f04911ac14c19211cc5ec0dd6e37658ab045be38e4f3547579a6a72f7e356a8ac08b837386977700e05774195eb67658441bce935c27b9a90e214932cf70d08e6be7369c64b8d7b9a8cd8037711a0f0fa76a1e87074c5d5f1dc0288f31f702e0d77531f76a89b917ecc75386e7cb7e370200004cdf1f1b945ebef0bfad923c647836f9f0edef2dbefdf9c7dfa74d1f32ac09f8e3cfb3bffce57e1e0000f663511d00bcb945927f564700004083363db37cccf7e7952ffdc974bdf42cf28fbf3c93040080b7711ff74600004c4b5f1d00f017cb0cf7cee7affd83000090e4b63a000000000000eb8f00000000608355ac7704007853ff551d0013771d2febb7665e1d0040d39619be4bfe5ddcc1f6ba0c43e3a7da0c327c7eaee2f3d392f30cf73c37d521f09bba38046a8abec4a1e553d725795f1dc128f3ea00009a66eed59e2ee65eb00f0f315700000068dd49beaff7befcf6e7a7bffd33cff93e6779c8f783d017dffe5c7efbfbecc7c5b73f4f937cf8f69fcfbefd751acf310100604a16d501c09b5b24f967750400001c983f9e6ffd6c9faa55be3f8f5c7cfbf3292f3fc3e46d7cc8f0ec3179f9f9a43dc50000607f16d5010000f017ab247d7504c0dfdcc6f32b0000b6e3407700000000807a7d7500000000004cd86decab0700f0a6fef19ffffca7ba01a6ea2cc3e6de27c51d6cef4b92ebea08000ec24d928fd5116ced3edf0f0da19ecf4f5b56190eda792aee805f7591e4dfd511ac79cef0bbc583dde93a4bf27fab2318e57392ae3a028083d027f96775045b33f782ddbb4ef2bfab23000000989cfbbffce7a7fcb8aee2efff3d39dec3d52f36fcf7d30ccf8dffe0003d000068cf7386f586c061394df2ffaa230000809f7accf777339ff2e3b3c987fcf8dee6dffffb213acb8ff389bf3f87fcf0edeffdf1cfbedb4714000030caffcc70ff02d45bc49a5e00708e01304567b13f280000af7bcc8f6ba780dde9927caa8e000026ed1fd501506c11eb9000385e5f93ccab2300008049bb48f2efea080028f43fb27eb6170000bfe11ffff9cf7faa1b60aa16b198ad25cf195e903bf44dd501d88fd30c9bdd3a9ca21dff4a72531d4192e1f3b348f2beb883eddd67588c00adf17d3d5dff2bc37701d3b588b9574b6c0c05c05b3acdb000efa4b883ed997bc16e7d48f2dfd5110000001ca4c7fc7c5df3c386ffed254ff9f5176b2f46fcb367dffe7a89e78b0000707c6c940d87eb21defb0100804375ff93bfff94ed9f398e7d9e990cef2a6cfb0edc595e7e2e791af72a000070685619aef5816958c49a600070f81d3055d6f50100f01a7b93c2fe74493e5547000093f68fea0028b6887548001c2fe7b4020000afb948f2efea080028729f7167650100b085ffaa0e8089ba8e856cad9967fcc6e700f033cb0cdf2d1eccb5a34b721b9bc04dc11f9f9fff2eee607be719ee816c38416bba24efaa2358f3255e8a983a73aff65c5707007050feb86fff3fc51d6caf8bb917ecd2438643f04eaa4300000038389b0e8bf3bc0e000068c1a23a00d899db38e81e00000ed5cf9e457a4609000054b8ad0e000080bfb88ffd5b80e95ac4ba3e0000365b540700000000001cb9e798d502000000c0267d750000c0219a5507c0049d25e98a1b18e74b2cba00e0ed2d327cc7d0869318224fc943927f5547304a97e15e085a7195e46375046b9e63a6327567f1336a8db91700bb709be4ae3a82ad997bc1ee2daa03000000000000608216d501c0cedc56070000000000004761511d0000007f71531d00b0415f1d0000c0a43d6738030600000000803ad61f01000000c0cfade2fd1800809d985507c004f5494eaa23d8da7392ae3a028083d565f8aea10de749aeab23f8d34d92fbea08b676120f6268c769fcfb3a55f324cbea0836ea63eed512732f0076699e61511e6d30f782dd5a5407000000000000c0c43c2779aa8e0076e621d60e010000000000bb775b1d000000df3cc7f529306dd6f50100b0897b5a00000000805aab3843170000000036b9a90e00003854b3ea009898eb24e7d5118c729d64591d01c0c15a66f8aea11d5d92b3e206bebb8a8daf5a721ebff368439fe4a43a82355f922caa23d8c8dcab3df3987b01b03bcb0cdf35b4a38bb917eccaa23a0000000000000026c6a18670f87cce0100000000805d7a8c3d330000988ebe3a00600bd6f50100f0338bea00000000008023771bebe3010000006093be3a0000e050cdaa036042ce9274c50d8c73171b2900b07bb719be7368c3490c94a76499645e1dc1285d867b2398aaab2497d511ac798e99cad49dc5cfa8355f6253280076cfdcab2de65eb03b0f4956d51100000000000030218bea0060e716d5010000000000c041b3572c000053d25707006cc1bd3400002f59c5b5220000000040b59bea000000000098b0bb244fd5110000876a561d0013d22739a98e606bab24f3ea08008ec63cc3770f6d384f725d1dc19f6e937cad8e606b27b1b122d3751aff7e4ed53cc9b23a828dfa987bb5e43949571d01c0d198c7dcab25e65eb03b8bea000000000000009890457500b0730e2f05000000000076c9b3080000a6e26b1c7e07b4c1bd3400002f59540700000000001cb9fb240fd51100000000306137d5010000876c561d0013719de4bc3a8251e64996d511001c8d6586ef1edad125392b6ee0bbeb24cfd5116ced3cc3cf0ca6a64f72521dc19a2fb179cdd4997bb5671e732f00f6c7dcab3d5dccbd601716d5010000000000003011f7b1860d8ec132c9637504000000000070905671402f0000d3d15707008c70571d0000c0e4dc560700000000001cb9be3a000000000026ec39ce840600d8a95975004cc05992aeb88171eee2c53800f6ef3636ef69c9492cd09c926592abea0846e932dc2bc1545c25b9ac8e60cd73cc54a6ee2c7e46adb98b451200ecdf6d92fbea08b666ee05bbb1a80e0000000000008089f0ee261c0f9f77000000000060173c830000602a1c7e07b4c63d3500007fe71a1100000000a0ce739c1305000000009b74d5010000876e561d00137093e4a43a82adad92ccab2300385af30cdf45b4e13cc97575047f7a48f2b93a82ad9dc42267a6e334fe7d9caa79926575041bf531f76a89b9170095e631f76a89b917bcbd87f83d0800000000000049b2a80e00f6c621a60000000000c02e2caa030000e09bae3a006024ebfa0000f8abc738070000000000a0525f1d000000000013b68a77610000766e561d00c5ae925c564730ca3c5e8a03a0ce32c37711ede8929c1537f05d97e4be3a82ad9d27b9ae8e800c8bee4faa2358f3390e0b98baeb0cbfcb69c73ce65e00d4798a0df75bd3c5dc0bdedaa23a000000000000008aad923c5447007bf390e4b93a02000000000038380e180100600a1c7e07b46899e4b13a020080c9e8ab0300000000008e5c5f1d000000000013769be15d1800007668561d00854ee3c17d6bee63b31700eadd26b9ab8e606b2771cd3735f30c9bf8d186ff9de443750447ed2ac96575046b1e9374d5116c74163fa3d6dcc5dc0b807a37199ec5d006732f787b8bea0000000000000028661d1b1c9f45750000000000007050eee380110000a6a18f6b53a04d7d7500000093b1a80e000000000038625f933c554700000000c08475d5010000c760561d0085fa2427d5116c6d95645e1d0100df5c67f86ea20de7197e664cc3535cd7b5a6af0ee0689dc6bf7f5335af0ee0557dccbd5a62ee05c094cc63eed512732f785b8bea0000000000000028b6a80e00f6eeb63a00000000000038289e3d0000301537d50100bf68511d0000c0243c2779a88e000000000038627d7500000000004cd87d92a7ea0800806330ab0e802257492eab2318a58b1b4500a6e329c37713ede8929c1537f0dd6d92afd5116ced7dfccea3469fe4a43a82359f63c39aa9bb4e725e1dc128f324cbea0800f8e629ee015bd3c5dc0bdeca43868d5a010000000000e058dd5607007be7730f0000000000bc25cf1e0000980287df012db3070e000089672e0000000000951e932caa230000000060c26eaa0300008ec5ac3a000a9c26e9ab2318e53e6e1401989e9b0cdf51b4e124ae01a7e63a36c26ac9a7241faa23382a57492eab2358f398a4ab8e60a3b3f819b5e63e368202607accbdda62ee056f6b511d0000000000000045ee932cab23801277d5010000000000c041784ef2541d01000071a601d03e7b540200e09a1000000000a08ef54700000000f073cfb1ce1100606f66d50150a04f72521dc1d65649e6d51100f013f30cdf55b4e13cc97575047f5a26b9aa8e6094be3a80a3711affbe4dd5bc3a8057f531f76a89b9170053368fb9574bccbde0ed2caa03000000000000a088cd7ee078f9fc0300000000006fc133070000a6c0e177c021f07b0c00e0b8ad625f4400000000802acf719e2e000000006cd2550700001c93597500ecd95592cbea0846e9923c153700c0cf3cc540b3355d92b3e206be7b48f2b93a82adbd8fdf79ec479fe4a43a82359f33fcde66baae939c5747304a17732f00a6eb29ee015bd3c5dc0bdec2a23a000000000000008a2caa0380320eba070000000000de425f1d000000496eaa0300dec022c9aa3a02008032def30000000000a8d3570700000000c084ad629d2300c05ecdaa03608f4ee3a17d6bee63a31700a6ef26c377166d38896bc2a9e9e233d4924f493e544770d0ae925c5647b0e631c3ef6ba6eb2c7e46ad31f702a0053719ae056983b917bc8da7f8dd070000000000c0f1794ef2501d019459c6b3720000000000e0f7ace299230000f556b1ff0a70381ce6090070bc16d501000000000047ccf99200000000f0737d86fdac0100d893597500ec519fe4a43a8251aeab0300604bf30c1b94d186f3b8ce989a797c865ad2570770b0cee2dfafa99a5707f0aa3ee65e2d59c5e70a8076ccab0318c5dc0bdec6a23a00000000000000f6cc01d7405f1d00000000000034cd33470000a6a08fc3ef80c3e15e1b00e078b9160400000000a8f135d61f01000000c02637d5010000c766561d007b7295e4b23a82513e2779a88e00802d3d25e98a1b18a74b7256dcc0774f49e6c50d6cef7dfcce6337fa2427d511ac717f3e7d5749ceab2318a5cb70fd03002d78c8704d483bba987bc1ef5a5407000000000000c09e2daa0380720e370500000000007e87670d00004c81c3ef8043b2a80e0000a0c47d9265750400000000c091b2fe08000000007eee2ec953750400c0b1995507c01e9c26e9ab2318e53149571d010023dd6478919b369cc435e2d4dc26f95a1dc1d63e25f9501dc141b94e725e1dc11af7e7d367eed59efb78b90880f67419ae0d69c3495c6fc0ef72501e000000000000c76415cfc88061e32f6b840000000000805fe599230000d51c7e071c9a6586df6d00001c17cf5c00000000006adc2779a88e00000000800973663a004081597500ec419fe4a43a8251e6d50100f08baeab0318e53c7e6653739de4b93a82adf5d5011c8cb3245d71032f9b5707f0aa3ee65ead71fd0940abe6d5018c7299e4aa3a021a67f37e0000000000008ec5a23a00980c879c020000000000bfc2fb7800004c81c3ef8043b4a80e000060efbcdb010000000050c3fa2300000000f8b9c778cf0500a0c4ac3a0076ec2ac9657504a37c4ef2501d0100bfe821c37719ede8929c1537f0dd32c3353c6d789fe13304bfab4f72521dc11af7e7d367eed51e9f2b005a66eed59e3ec9697504346c511d000000000000007be25043e00f7e1f000000000000bfc233060000aa39fc0e3854eeb901008ecb7392a7ea08000000008023f41ccfe80100000060939bea0000806335ab0e801d3a4dd2574730ca6392ae3a02007e5397e13b8d369cc435e3d43c24f95775045bfb94e44375044dbb4e725e1dc11af7e7d367eed51e9f2b000e411773af96987bc1ef595407000000000000c09ed8341bf8c34386cdf4010000000000c6f0cc1100806a0ebf030ed553ecfb0500704c3c730100000000a8d1550700000000c0843dc739e900006566d501b0437d9293ea0846b9ae0e00803732af0e6094f3b80e999a9b24f7d5116cadaf0ea05967b1d07eaae6d501bcaa8fb9576be6d50100f046e6d5018c7299e4aa3a021af5906181330000000000001cb2bb24cbea0860521c760a00000000008ce199230000d51c7e071c3aebfa00008e876b3f0000000080fd5bc57c160000000036e9ab0300008ed9ac3a0076e42ac9657504a37c49b2a88e008037f290e4737504a37449ce8a1bf8d1558645b84cdffb0c9f2118ab4f72521dc19acf19ae65982e73aff6f85c017048ccbddad32739ad8e8046d920000000000000bc36e1e000002000494441548043b7a80e0026a7af0e0000000000009ae23d3c0000aaf5d501003be6de1b00e038ace25d2f00000000800a374996d511000000003051ab0c333400008accaa0360074e63b390d63c27e9aa2300e08d75491eab23d8da495c434ecd32c9bc3a82ad7d4af2a13a82a65c2739af8e60cd63dc9f4f9db9577b7cae00384437199eedd006732ff8758bea00000000000000d831075a037ff7106b83000000000080ed79e60800402587df01c7c0ba3e0080e3e0990b00000000408dbe3a000000000026ec36c9b23a0200e098cdaa036007fa2427d5118c328f9b43000ed3bc3a8051ce935c5747f083db245faa23d85a5f1d4033ce9274c50dac5b25b9aa8ee0557dccbd5ae3fa128043b48cb9576b2ee37a1f7e854d5c01000000000038648f499eaa238049f2bc1c0000000000d8c67dec250b00402d87df01c7c2ba3e0080c3b7a80e000000000038425f631f2e00000000d8a4ab0e00003876b3ea00786317492eab2318e54bbcfc06c0e17a48f2b93a8251ba2467c50dfca8cb70302ed3f73ec94d75044de8939c5447b0a68b971fa6ee2ae65ead31f702e0902d327cd7d18e3ec969750434e8ae3a0000000000000076a4af0e0026abaf0e0000000000009a705b1d0000c0d1ebaa0300f664511d0000c0ce79ee0200000000b07f5d7500000000004cd8d7244fd5110000c76e561d006fe8340ec469cd732cae00e0f07519bef368c3495c534ecd32c93cc9aab883ed7c4c72511dc1a45d2739af8e60cd7d929bea083632f76a8fb91700c7a08bb9574bccbde0d72caa0300000000000060471c6a08fccc43ac0b0200000000005ee79923000095eee2f03be078dcc6fedc000087ec3ec3b92c0000000000eccf7dac3f02000000804dfaea00000092597500bca12ec9bbea084699c78b6f001c87797500a39c27b9ae8ee0070f19aef769439fe4b43a82493a8bcff214ade25aa5057d9293ea084699c7dc0b80c3b78c6bc9d65c26b9aa8e80c638400f00000000008043f4181b67039b795e0e00000000006ce299230000d56eaa0300f66c511d0000c0ce7887030000000060ffbaea000000000098b0fb78970500601266d501f0462e927cac8e6094bbb83104e0782c927ca98e60942ec95971033fbac9700dc9f4bd8b85d4bcac4f72521dc19a2e0e0398baab2497d5118cf225e65e001c8f45ccbd5ad32739ad8e80863c6538480f0000000000000e495f1d004c5e5f1d0000000000004c5a5f1d0000c05173f81d708c6eab030000d819d77a0000000000fbf518eb8f0000000060939bea00000006b3ea007803a7b1715d6b5649e6d51100b0675d92e7ea08b67612d7985334cf702dc9f47d4c72511dc1a45c2739af8e60cd7d3cb89d3a73aff63c67b8f6078063d2c5dcab25e65e30dea23a00000000000000de98430d81d73cc49a200000000000e0e73c730400a0525f1d0050c0bd3800c0617a4ef2541d010000000070649ce10a000000003ff71cefb100004cc6ac3a00de4097e45d7504a3cc932cab230060cf9619be0369c77992ebea087eb04c72551dc1d6fa24a7d5114cc259867b77a66515d7262de8939c544730ca3ce65e001c1f73aff65cc68c05c6e8ab03000000000000e00d3dc6a186c0766c12060000000000bce43e9e39020050e739f681008ed332c33d39000087c5bb1b0000000000fb65fd11000000006cd655070000f0ddac3a007ed345928fd5118c72172fbd0170bc1649be5447304a97e4acb8811f2d927cae8e602befe2a11083db2427d511ace9e22080a9bb4a72591dc1285f335cab00c0315a64f82ea41d7d92d3ea0868c443860d04000000000000e010f4d5014033faea0000000000006092faea0000008e5a571d0050c8392f000087c7351e00000000c07e75d501000000003061cfb1a70400c0a4ccaa03e0379cc60d466b5649e6d5110050accb3028a50d2771cd39455d92c7ea08b6f231c9457504a5ba24efab2358739fe4a63a828dccbddab34a725d1d0100c5ae337c27d206732f1867511d000000000000006fc4a186c0b61ee23d380000000000609d678e00005459c5f52870dcfc0e0400382cabd8e71000000000609fac3f0200000080cdfaea0000007e34ab0e80dfd02579571dc128f324cbea080028b6ccf09d483bce935c5747b0e62ac3c25da6af4f725a1d41890f493e5547b06615d7222de8939c544730ca3ce65e0060eed59ecb0c3316e0753610000000000000e0103c2679aa8e009ae279390000000000f05777b1bf060000756ee27a14386e4f19d60303007018bcb30100000000b05fd61f01000000c0cfad32ccd000009890597500fca28b241fab2318e53e5e7803803f2c927ca98e60942ec95971033f7a4a725d1dc156de65f80c717cfaea005ed4c5c1e3537795e4b23a8251ee62ee05007fb8cdf0dd483bfa24a7d511d080db0c0ba1010000000000a0657d7500d01c1b860100000000007f657f0d0000aa38fc0e60b0a80e0000e0cd2caa0300000000008e88f54700000000b0d94d9265750400003f9a5507c02f388d43b25ab34a32af8e008089e9327c47d28693b8069da23ec9d7ea08b6f231c94575047bd525795f1dc19afb78e961ea4ee367d41a732f0058378fb9574bccbd607b8bea00000000000000f84db7d50140739e923c564700000000000093e19923000055fa38fc0e20b15f1400c021f1dc0500000000607ffa587f04000000009bdc54070000b06e561d00bfa04bf2ae3a8251ba0c07140100df2d93ccab2318e53cc97575046bae933c5747b0953ec96975047bf121c9a7ea08d6ace2daa3055dccbd5a338f978900e0efccbdda7399e4aa3a021a6083570000000000005a761fef7902bfa6af0e00000000000026e12ef6d80000a08ec3ef00060f19f6980500a06df7f1dc0500000000609fac3f02000000809ffb1aeb1a01002669561d00235d24f9581dc128f7b1a802007ee636c366bcb4a34b7256dcc08f9649aeaa23d8cabb0c9f210e5f5f1dc08bba38747cea2e62eed59abb0cd7f400c03a73aff6f4494eab2360e25cff030000000000d0b2be3a006896e7e5000000000040e29923000075bec65e8a007f655d1f0040fb5cd30100000000ec8ff54700000000b059571d0000c0cb66d50130c2696c56d79a5592797504004cdc3cc377266d38896bd2297a48f2afea08b6f231c94575043bd525795f1dc19afb2437d5116c64eed59e5592ebea080098b879ccbd5a62ee05af5b26b9ab8e000000000000805fe45043e0573d6558930e00000000001caf553c730400a04e571d003031eed10100dae79a0e00000000607fbaea000000000098b0af19f6a00600608266d501304297e45d7504a37471430800af592699574730ca7992ebea08d6dcc46198ade8939c5647b0131f927caa8e60cd2aae355ad0c5dcab355dccbd00e035e65eedb94c72551d011367a3570000000000005a7497e1393ec0afeaab0300000000008052dead0300a0ca5decf906f077eed30100daf61cf7ba0000000000fbf23566b200000000b049571d0000c0cfcdaa03604b17493e564730ca7d929bea080068c46d86cdd0684797e4acb88175574956d511bcea5d3c3c3a547d75002f9ac70b0f53771173afd6987b01c0f66e337c77d28e3ec96975044c98cdfb01000000000068515f1d0034cff3720000000000386e9e15000050c59e6f002fb3a73d0040bb3c770100000000d81feb8f00000000e0e7ee923c55470000f073b3ea00d8c2691c8ed5a27975000034669e64551dc1d64ee21a758a9649aeaa23d8cac72417d511bca92ec9fbea08d6dcc526345367eed59e55ccbd0060ac79ccbd5a62ee059b2d63f37e000000000000dab28af5a4c0eff3bc1c00000000008ed7733c730400a0c67d92457504c044b957070068976b390000000080fdb84ff2501d01000000001376531d0000c066b3ea00d84297e45d7504a37c4ef2541d01008d592699574730ca7992ebea08d62c325c8f327d7d92d3ea08dec487249faa2358b38a6b8b167431f76a4d17732f0018eb29c37728edb84c72551d011366c3570000000000005ae2f916f056faea000000000000a084678e000054e9aa030026ccfd3a00409b5619ce54010000000060f7baea000000000098b0fb58d308003079b3ea0078c545928fd5118cf2180b2a00e057dd26b9ab8e60942ec9597103ebba0cd7a54cdbbb38bcf450f4d501bc689e64591dc1461731f76acd7d929bea080068d44d86ef52dad12739ad8e8089b2793f0000000000002db1ee0d782bb7190e4a0500000000008e4b5f1d0000c05172f81dc066cbd8831b00a045f6320400000000d80feb8f0000000060b3ae3a000080d7cdaa03e0157d7500a3cdab0300a071d771905f4b4ee29a75aaaee2b3d482cb0c3f2bdad525795f1dc19abbd88066ea4ee31aa245f3ea000068dc3ceed55b62ee053fb7cc70ef0d00000000000053f79ce4a13a0238287d75000000000000b0578ff1cc1100801a37d501000de8ab03000018cdf9010000000000fbd1550700000000c084dd275954470000f0ba5975006cd02579571dc1289f63634100f85d4fb140b135e749aeab2358f394645edcc076fa24a7d511fc920f493e5547b06615bfff5ad0c5dcab359f335c5f0000bfee29e65eadb94c72551d011365e3570000000000005ad057070007a7af0e000000000000f6aaaf0e0000e0283dc7be0e00db585407000030daa23a0000000000e008dcc73c160000000036e9aa030000d8ceac3a007ee243924fd5118cf218378300f0566e322c54a41d5d92b3e206d6dd26f95a1dc1ab4e6293f256f5d501bc689e64591dc14617493e5647308ab91700bc1d73aff6f4494eab2360821c74020000000000400bfaea00e0e03c64585b0b00000000001c87be3a000080a3d455070034e221c973750400005bbb8b33040000000000f6a1ab0e000000008009bb4fb2a88e0000603bb3ea00f889be3a80d1e6d501007060e64956d5116ced24ae61a7ea3a0ec66cc16592abea0846b949f2be3a823577496eab23d8e834ae195a34af0e008003338fb9574bccbde065cb0cf7e10000000000003055f7499eaa238083d457070000000000007b7197e15d3a0000d8a7e7589f0230867d680100dab1a80e000000000038028f318f05000000804d6eaa030000d8deac3a005ed025795f1dc1285f923c544700c08179ca705d443bce935c5747b06699649e6455dcc1ebfa24a7d5116ce522c9c7ea08d6ac32fcbe63daba24efaa2318e573ccbd00e0ad3dc5dcab359749aeaa2360826cde0f0000000000c094f5d501c0c1eaab03000000000080bde8ab030000384a5d75004063ec810300d00ed76e0000000000bb77531d000000000013f61ceb1901009a32ab0e80bff990e4537504a33cc7662e00b02b3749eeab2318a54b725a1dc19a87b8666dc1496c58de82d3f8394dd53cc9b23a828d2e927cac8e6094c7b88600805db9c9f05d4b3bfa987bc1df59300d0000000000c054ad62cd2fb03bcb2477d5110000000000c04eade21d3a0000f6ef39d6be018cb5c8701f0f00c0b43d2679aa8e00000000003870d61f01000000c0665d75000000e3ccaa03e06ffaea00469b6738680800d88d796cfed39293b8a69daa9b381cb3059749aeaa23d8a84bf2ae3a823577b1e1ffd49dc635428be6d5010070e0e6d5018c62ee05eb963173040000000000609aac2b0576adaf0e00000000000076aaaf0e0000e02875d501008db276180060fa16d501000000000047a0ab0e0000000080097b8ebd2400009a33ab0e80bfe892bcaf8e60942ff1621b00ecda532c5e6ccd6592abea085e34cff0308369eb939c5647f0a28b241fab2358b3caf0fb8d69eb92bcab8e60942f491eaa2300e0c03d24f95c1dc128e65eb0aeaf0e0000000000008017dc54070007ef36c35a760000000000e030f5d50100001c1d87df01fcbadbea0000005ed5570700000000001c38eb8f0000000060b3ae3a000080f166d501f0cd87249faa2318e5396e0401605f6e92dc5747304a9fe4b43a8235cb2457d511bcea24166d4fd169fc5ca66a9ee1f71bd37591e4637504a3987b01c0fe74491eab2318a58fb917fcd56d92557504000000000000fcc5639287ea08e028f4d5010000000000c04e78e608004085ae3a00a0618bea000000365ac5b31700000000805debaa030000000060c29e633f69008026cdaa03e09bbe3a80d1e64996d511007044aeab0318e524ae71a7ea21c9bfaa2378d56592abea087ed02579571dc19abb24b7d5116c741ad7042d9ac7dc0b00f6695e1dc028e65eb0cebd390000000000005372531d001c0dbf6f0000000000e03079060000c0be39fc0ee0f72c33ec510b00c034d9af100000000060b7ac3f0200000080cdbaea0000007ecdac3a0032dc50bcaf8e6094af4916d5110070641e927cae8e6094cb2457d511bce826c97d7504afea939c56479024b948f2b13a8235ab24f3ea085e759de45d7504a37c89b91700ec9bb9577bccbde0477d7500000000000000fc85030d817d798af7730000000000e01079e60800c0be75d501000760511d0000c04f79f60200000000b05b5d7500000000004cd8739cbd0c00d0ac59750047ef43924fd5118cb24a725d1d010047aa4bf2581dc1287d92d3ea085e7495e1da96e93a89075053701a3f87a99a27595647b091b9577b9ee3052200a8d2c5dcab357dccbde00f8b0cf71300000000000050ed6bac2f05f6abaf0e000000000000de94678e0000ec9bc3ef00dec66d750000003fb5a80e00000000003860d61f01000000c0665d75000000bf6e561dc0d1ebab03186d1e9b090240a5797500a39cc435ef542d935c5547f0aacbf83955eb92bcab8e60cd97d818b0057d7500a3cd63ee050095e6d5018c62ee053f729f0e0000000000c014f4d501c0d1b94db2aa8e000000000000de4c5f1d0000c0d1e9aa03000ec45392c7ea080000d6dcc5bee70000000000bbd4550700000000c0843dc73e1200004d9b550770d4ba24efab2318e52ec3414200409d87249fab2318e532c95575042f5ac4e7a9057d92d3ea88237591e46375046b9ee32587167431f76acdd70cd70600401d73aff6987bc17737d5010000000000001cbde7580707ecdf32de3d07000000008043e199230000fbe6f03b80b7653d1f00c0f42caa0300000000000e98f54700000000b059571d0000c0ef99550770b43e24f9541dc128ab24f3ea080020c930987dac8e60943ec96975042fea92dc5747b0d1492ce8ae701affbf4fd53cc321bf4c97b9577b5649aeab23008024c94d86177b69471f732f4892a798db03000000000050abab0e008ed64d75000000000000f026ccfc0100d8b7ae3a00e0c0dc56070000b0c6351a00000000c0ee74d501000000003061cf19ce1e0700a061b3ea008e565f1dc068f324cbea0800e04ff3ea004639896be0299b27595547b0d16592abea8823d32579571dc19a2f4916d511bcaaaf0e60b479ccbd00602a9631f76a8db9177ce7703e000000000000aaace23043a0ce4392c7ea080000000000e0b7f5d50100001c1587df01bcbd870cbf5f01009886c7244fd511000000000007cafa2300000000d8acab0e0000e0f7cdaa03384a5d92f7d5118c7217879701c0d43c24f95c1dc1289749aeaa2378d15392797103afeb939c15371c8b8b241fab2358f31c0f685bd0c5dcab35e65e00303d8b245faa2318c5dc0b06ee2d000000000000a8729b64591d011cb59bea000000000000e0b77c8d678e0000ec57571d0070a016d5010000fc69511d000000000070c0aeab030000000060c21e93f4d5110000fcbe59750047e743924fd5118cb28a45140030555d92e7ea0846e9939c5647f0a2db245faa23d8e8241e4eedc369fcff3c55f3d8e47feaccbddab3caf0d90200a6a78bb9576bfa987bc132c3217d000000000000b06f37d501c0d1eb33accd050000000000dad45707000070549ee31a1460576eab030000f8535f1d000000000070a0eee3f938000000006c725d1d0000c0db9855077074faea0046eb923c153700003f37af0e609493b8269eb2eb248fd5116c741e0fa976ed26c9bbea08d67c49b2a88ee0557d7500a3cd932cab230080172d63eed51a732f18d8a0000000000000807dbb4ff2501d01106b470000000000a055cfb1b70d0000fbd55507001cb0db24abea080000b28a77be000000000076a5ab0e000000008009bb8f3d2400000ec6ac3a80a3d225795f1dc128f7496eaa2300808d1649be544730ca6592abea087eea2a36d89aba2ec95971c3a1ba4af2cfea08d63cc70b0e2de862eed59abb0c1b6b0200d3b588b9576bccbd60b8cf78ae8e000000000000e0a8f4d50100dffc7ff6eef0b871ecdcf3f0dfacfd2e65d0bd114c6f04a38da07b23301c41f34630500466476028822b45602a822b456031822523f07e807d77ec19a905b5c817077c9eaa29fb93fdabd290045e1c9ce39d7400000000006893193f0000a7b48b756f00c7b6ad0e0000c0fee7000000000047721fcfc501000000e0257d75000000ef67551dc0d9f898645d1dc12487245d750400f02a7dc6cdd768c790e4b23a82dff514d7c17377111b6e1cc3c7d8c473aeba24fbea085ef429c92fd5114c7288592500b4a28fb9576b86987bc1501d000000000000c0d9d8c5f329603e9e326ef00f0000000000b4e310cf1c010038adbe3a00e00cd8bb1900a09e6b320000000080e3e8ab030000000060c6ee936cab230000783fabea00cec690e4a23a8249fa8c07050100f3b74fd2554730c9456cd83c67b749be5547f0a29fe233f49e2e33fe7befbe7d7ebec5c3d9160cd5014cd6c7dc0b005a61eed51e732ff019000000000000e07486ea00807fb3a90e00000000000026b9cdf83e2f00009cc22ed6bd019cc26d75000000ce1700000000003882fb98bf02000000c04bfaea000000ded7aa3a80b3b04ef273750493dcc7014100d09a6d926fd5114cf239c997ea089eb54ef2581dc18bfe98a4ab8e58884d929faa23f88d5d3c9c6d411f9f9fd6987b01407bb6496eaa2398c4dc8b73f794e4ae3a02000000000080b330540700fc9bdb8c6be101000000008036d88303008053eaab0300cec43ee3de9b0000d4b8cb784d0600000000c0fbeaab030000000060c6ee339e050f00c082acaa0358bc8ff130be455d750000f0267d1cf0d79a21c9657504cfea921caa2378d15f925c554734ae4ff2c7ea087e57179bcbccdda724bf544730c921e65e00d0aa75dca3b76688b917e7edb63a00000000000080c5bb49f2541d01f03b86ea000000000000e055ee933c544700007036ee635d09c029d9ff0600a0ceb63a00000000006081ee63fe0a000000002fe9ab030000787fabea00166f4872511dc124d771681900b46a9fa4ab8e60928bd83c6fce1e92acab23f8aedb249faa231ad525f9a53a82dff52d5e6e68c1501dc0647dccbd00a055e65eed31f7e2dc0d490ed5110000000000002cdaa63a00e019be9f0000000000a00d437500000067a5af0e003833b7d501000067ccb51800000000c0fbebaa030000000060c66e926cab230000787fabea00166d9de4e7ea0826798c0d5c00a075db24dfaa2398e473922fd5113c6bc8f89084f9bac8f8ddf7a9b8a3355d92bf5447f0bb76716fde823ec94fd5114c721f87610340eb6e93dc55473089b917e76ea80e00000000000060b1ee933c5447003c631fefe20000000000c0dc1de21d3800004ee73e0ebf0338b5a78c7bdc0200705a8f19afc50000000000783f37317b050000008097f4d50100001cc7aa3a80c5fa1837122deaaa03008077d167dc1898760c492eab2378d63ae3460fccd745c6cd283f1577b4a24bf297ea089ef525e381bdccd7a724bf544730c921e65e00b0145dccbd5a33c4dc8bf3b5a90e00000000000060b186ea0080eff0cc1c0000000000e6cd2c1f008053eaab0300ced46d750000c019da560700000000002c505f1d0000000000337693e4a93a020080e3585507b05843928bea0826b94ef2501d0100bc8b7d92ae3a82492ee200d939fbe767ea50dcc1cb2e326ec8f1a9b863eeba247fa98ee059eecddb30540730d926163d00c052987bb5c7dc8b73f694e4be3a02000000000080c5d9c5735860fe1ee299390000000000ccd9501d0000c0d9b8cfb8572800a737540700009ca1a13a000000000060616ee21c4a0000000078495f1d0000c0f1acaa0358a475929fab2398e4316efe0060696e93dc554730c9e7245faa2378d643c67b1de6ed22e3c6943e4bbf6f9de42fd5113ccbbd791bfa243f55473089cf16002c8fb9577bccbd38679bea0000000000000016c73328a0154375000000000000f0bb1ce00b00c029d9cb15a0ce439243750400c0193964bc060300000000e07d1c62fd1100000000bce43af68f000058b45575008bf331495fdcc0745d75000070145d6c0ed49a21c9657504cf1a326ebccdbc5d24f9cfb8cff97743923f5747f0a2ae3a80effa182fa0b4a8ab0e00008ea28bb9576b86987b719e6e93ecaa23000000000000588c43c6e7af002d18e299390000000000ccd1501d0000c0d9b849f2501d0170e66eab030000ce886b2f0000000080f7b549b2af8e0000000080993a649ca10100b060abea0016674872511dc124df62f3160058aa7d92ae3a82492e6263e7b95b2779ac8ee055fe92f1f37459dc51ed63c67bbe3f1677f0b2ebb8376fc11073afd6f86c01c072997bb5c7dc8b73365407000000000000b018436ca60db465a80e000000000000fec57d926d7504000067a3af0e0020b7d501000067c4b51700000000c0fb3924d9544700000000c08c6d62cf7a0080c55b5507b028eb243f574730c92e366f0180a5bb4d72571dc1249f937ca98ee059fb245dc685c8ccdf1f336e96fea9b8a3ca97240f497eaa0ee1458f716fde0273aff6f86c01c0f2dd663c248b76987b71ae86ea0000000000000016c366da406b36f10e0e0000000000ccc9501d0000c0d9b849f2541d01406eab030000cec8b63a000000000060413619cf9006000000007eeb107bd603009c855575008bf131495fdcc0745d2c9e008073d0c5417fad19925c5647f0ac8724ebea085eeda78c9b759cd3dfec32e383beff4c7251dcc2f775d5017cd7c7987bb5a8ab0e00004ea28bb9576b86987b717e9e321eac020000000000003fe226e3b3278096ec93dc564700000000000049925dc6f73c0100e0d80e39af3d4001e6eeae3a0000e00cdcc559800000000000ef6517e78702000000c04bd6b16e1100e02cacaa03588c21c9457504937c4bb2ad8e00004e629fa4ab8e60928bd8e479ee868c0700d3868b247fce780ff4b1b4e4f8ae923c24f95adcc1eb5c67fc7b316f43ccbd5ae3b30500e7e3295e166e8db917e76aa80e000000000000a0797d7500c01bf5d50100000000004012efb90100703a9b38fc0e604e6eab030000ce806b2e0000000061ca1bb4000020004944415480f7d3570700000000c08ced62ff080080b3b1aa0e6011d6497eae8e60925d2c9e008073739be4ae3a82493e27f9521dc18bd6491eab2398e4e7247fcb783f74599bf2ee3e66fcaeff6b920fb529bcd263dc9bb7c0dcab3dbb8c9b160300e76393e4be3a8249ccbd3847db9825020000000000f076f7499eaa2300dee829de6b0300000000806a87d88f030080d370ed09303fdbea00008033b0ad0e00000000005888c72443750400000000ccd8ba3a000080d3595507d0bc8f49fae206a6eb92ecab230080935b67dcc48d760c492eab2378d63ee3b5b5cf557b7ec97800ea121e8a5d66dc9cf36f493e17b7304d571dc0777d8cb9578bba987b01c039eae2febc3543ccbd383f0e58010000000000e0adfaea00801fe499390000000000d4ba8dfd380000388d3eae3d01e6e629c963750400c0823d66bce60200000000e0c72de19c61000000003896fb8cfb470000702656d501346f4872511dc124df926cab230080124f7168696b2e325e73335f0fb138b9551749fe9cf1bb719de4b2b466ba8f19bfd39f927cad0ce14dae337e7f306f43ccbd5a63ee0500e7eb29e65ead31f7e21c0d490ed51100000000000034e73ed6c601eddb663c90150000000000a8d1570700007016764936d51100fcaea13a000060c11c040f00000000f03eecb705000000002febab03000038ad5575004d5b27f9b93a82490e71e30700e76e93713125edf89ce44b75042f1a92dc5447f0661f92fc39c953c6efc88f9531af7095f1dfb9bf25f925c945650c6ff218f7e62d30f76acf2e3e5b0070eeccbdda63eec53972d00a0000000000005379c6042c85ef330000000000a87193717f25000038b6be3a0080676dab03000016ecb63a00000000006021d6d50100000000306377f17e0800c0d9595507d0ac8fb109488bba24fbea0800a05c97e4501dc1244392cbea085ed42579ac8ee0875c24f99ae46f191f987599cfe7ee63c685f04f49fe9ae48f9531fcb0ae3a80effa1873af167531f70200ccbd5a34643ef7df700a4375000000000000004dd9c50186c0720c19bfd7000000000080d31aaa030000380bf771ed0930670fb1860f00e0187619afb50000000000f83137316f050000008097acab03000038bd557500cdda24b9a88e6092bb38a80c00183d25e98b1b98e62236e16bc1972487ea08dec5cf49fe92e4ff66bc8f5a27f978e2864ffff8ff7d48f2b7247f4ef2e1c40dbcbfeb78a9a10543ccbd5af32dc9b63a02009885a7987bb5e622fe669c97a78c9b1e000000000000c06bf4d50100efacaf0e00000000008033731f7b720000701a7d750000dfe5bc1a0080f7b7ad0e00000000005888be3a000000000066ec26e399c800009c993ffcfdef7faf6ea03d5f92fc677504931c927c4cb22fee0000e6659be4e7ea0826f93fb1c9d3dcb95f5ab65dc6efce877ffcb37da7ffddcb249f925cfdea3f2fdee97f9bf978ccf8f765ded649fe5c1dc124e65e00c0ef7948f253750493fcefd87893f3f129c97f5547000000000000307bbb8cebe30096e432e34667de99000000000080d3b06f19f04fdbd87b1280e3b9cbb81f2b00f37695e4afd51100000be3590c2c4f9fe497ea080060d6fe501d00c5b6b10e0980f7779d712e030000d0baab58af0bc0fb3b64dcaf7e5fdc010040813ffcfdef7faf6ea02d0e85699397d40080dff331c9435cdbb5c440bf0d9b245fab2338995dc6fbe47ffe937ffbefbff629e37df5affffba7f81e3e17ff2be3ef2ef3f531ae8d5a64ee0500fc9e4f49feab3a82497619ff6ee65e9c8b6d6cae030000000000c0cbfe9464a88e0038823e0e7104000000008053d865dc4f0520f16e2b00c7f53ff3fb7b7002303ffbd8771500e03dfda13a0078777dbcfb0400bccc7d00e76e1beb9000785fceea06000096e42ac95fab2300589ceb8ceb9a00003843ffa33a80e60cf132796bee92dc56470000b3f4947138fce7da0c26b8c8784dfea5b88397ad333edcffa9b883d3f8f08f7fbc0cc54bfe23c9437504df35c4dcab35e65e00c0731e322e8cb4d95b3b3e649c55ae8b3be054fa783908000000000080e7ed32ae6b0458a24dc63522d66e0300000000c071f5d50100009c856f19f73806a00db749fe581d0100b01077d50100000000000bd027d9574700000000c04ced32eee70c00c0995a5507d0942f493e574730c92149571d0100ccda26c97d7504937cce786dcebc7dc9783d0e701f0f645bb04ef273750493987b0100dfd32779ac8e6092af49aeaa23e044b6191771030000000000c0efe9ab03008e689f64a88e00000000008085dbc53c1e0080e33bc47a3780d66cab03000016e4b63a0000000000a071bb38eb15000000005ed267dccf19008033b5aa0ea01997b1f15c8bfab8e90300be6f5d1dc06443c66b74e6eb294957dc00d43bc477410b3ec6c6b72dea62ee05007c5f571dc06443ccbd381f7d7500000000000000b3b48bf77981e573700000000000001c97593c0000a7b089fde0005a735b1d0000b020dbea000000000080c675d501000000003063f7b15f3d00c0d95b5507d08c21c945750493dcc7868100c0eb3c24b9ae8e60928b18f0b7e0363e5b70eefa244fc50d7cdf1073afd6dcc5a69700c0eb987bb5e743c67b29380743925d7504000000000000b3d35707009cc053929bea08000000000058a843ec510600c0f1ed62bd1b408bf619f7f40400e0c73cc6190400000000003fe23ec9b63a020000000066acaf0e0000a0deaa3a80267c49f2b93a82490e49baea0800a0297dc617dc69c7e78cd7eacc5b9f715133707eee936caa23f8ae75929fab2398c4dc0b0098aa8fb9576bbe26b9aa8e801319aa0300000000000098955d3c4302ce475f1d0000000000000bb549b2af8e000060f1faea0000de6c5b1d0000b000b7d50100000000008d5b570700000000c08cddc5fb1f000024595507307b9771d8558bfa244fc50d00407bbaea00261b325eb3336f5f921caa2380933ac4ef6a0b3ec6c6b72deae3900c0060baae3a80c986987b711e36313b040000000000e0ffebab03004ee829c94d750400000000002ccc21e37b6b0000704cf7717e0540cb6eab03000016c0351500000000c0dbdd2479a88e0000000080195b57070000300fabea00666f4872511dc124f7b1592000f0360f49aeab2398e42236ec6bc13ec997ea08e0a4fa8c87e9326f9b987bb5c6dc0b00782b73aff67cc8786f054bb78ffb1c00000000000046bb783f00383f7d750000000000002ccc26e37b6b0000704c7d7500003fe429c96375040040c37619f739050000000060ba439275750400000000ccd875c6773f000020abea0066ed4b92cfd5114c7248d2554700004deb63e3a0d67cce78edcebc6d333ea00196ef3ee346fecc9bb9577bccbd00801fb5c9b8c923edf89ae4aa3a024e6093f19e07000000000080f3d657070014784a72531d0100000000000b71887d6f000038be9b8c7bac02d0b6dbea000080866dab0300000000001ab649b2af8e000000008099b26f040000ff62551dc06c5d2619aa23986c93f1a01e00801fd1550730d990f11a9e79eb93dc554700477588dfd116987bb5a98fb91700f063f671bddea221e65e2cdf3e36f40700000000003877bb58db089cafa13a00000000000016c241be00001cdb21e39e7000b4cf7e3700006fe75a0a00000000e06d76b1fe08000000005eb28e7d230000f895557500b33524b9a88e6092c758340100bc8f8724d7d5114c72118735b6a2cbb8e01958a63ec9537103df37c4dcab35f7190fc90000f851db24dfaa2398e4433c03e53cf4d50100000000000094eaab03000a6d33ae170600000000007ecc501d0000c0e26d62bf4580a578887db20100deeab63a0000000000a051ebea000000000098b1c7d8370200807fb3aa0e6096be24f95c1dc1645d750000b0287d6c1ed49acf19afe599b77dfc9d60a9ee336ea8cabc997bb5e710732f00e07df531f76acdd72457d51170644f496eaa2300000000000028b18b0d8100faea00000000000068dc4dc6f7d40000e05876b1df22c0d26cab0300001a74571d0000000000d0a8fb24b7d511000000003063ebea000000e667551dc0ec5cc641572dba4ef2501d01002c4e571dc06443c66b7ae6ed21c97f544700efea10bf9b2d30f76ad3260ec80000ded73eaedf5b34c4dc8be5ebab0300000000000028d1570700ccc036e321030000000000c0dbf4d50100002c5e9f71df160096e3b63a0000a041aea10000000000dea6ab0e000000008019bbc9b847330000fc8b557500b33324b9a88e6092c7d8281000388e6d926fd5114c7291f19a9ef9db647c78032c439fe4a9b881ef1b62eed51a732f00e058b631f76acd87b83664f99e6266080000000000706e76f10e00c03ff5d5010000000000d0a89bd8fb060080e3ba8fb56e004b749be4501d0100d0986d7500000000004083bec59a770000000078ce21f6660600e019abea0066e54b92cfd5114cd6550700008bd6673c1095767cce786dcffcad933c5647003fec3ec9a63a82ef32f76a53571d00002c5a1f73afd67c4d72551d0147d6570700000000000070525d7500c08c6c33aecf070000000000a6e9ab03000058bc7575000047b3ad0e000068c86392a7ea080000000080c61c62cd3b00000000bc6413eb13010078c6aa3a80d9b84c32544730d9759287ea080060d1f671206a8b868cd7f8ccdb3f3f5f87e20ee0ed0ef13bd90273af36997b0100c766eed5a621e65e2cdb53929bea080000000000004ee23e0e7c06f8777d7500000000000034e6260e220100e0b86e624f388025bbad0e000068886b270000000080e9d619cf8902000000007e6b177b320300f082557500b33124b9a88e60925d924d7504007016b649be554730c945c66b7ce6ef2149571d01bc591f1bf8b76088b9576b1e63a10300701adb8c8724d08e0f71adc8f2f5d5010000000000009c445f1d003043db24f7d5110000000000d090be3a000080453b24595747007054b7d50100000d71ed040000000030cd639caf0d000000002ff1fe1e00002f5a5507300b57493e5747305997645f1d01009c8d3ec9ae3a82493e27f9521dc1abdc26f9561d014c769764531dc1777d89b9578bbaea0000e0acac331e96403bbe667cc60d4bf594e4a63a02000000000080a3ba4fb2ad8e0098a9ae3a0000000000001a719df17d34000038963ece420058ba7dc6b5cd0000bc6c97e4a13a0200000000a031ebea000000000098b1fb24b7d5110000ccdbaa3a8072974986ea0826fb1687930100a7b58fc3ff5a3464bce667fed6491eab2380573bc4ef620bccbdda741d9b300100a765eed5a621e65e2c5b5f1d000000000000c05175d5010033f694e4a63a02000000000066ee9064531d0100c0a23dc63527c0b970d82900c0f76dab0300000000001a7313b355000000007849571d0000c0fcadaa0328d727f9501dc124bb8c7f37008053db26f9561dc124174986ea085eed2ae3a6e0c0fc7549f6d5117cd790f1b79076987b0100556e93dc554730c987b87664d99e326ea6000000000000c0f2dc647c1e04c0f3faea00000000000098b94dec7f0300c071adab03003899dbea00008006b866020000000078bd43ac3f0200000080975cc75ef50000bcc2aa3a80525749be56473059179b04020075fa8c8b3869c7e7245faa2378957dfcada00577b1494c0bbe64fc0da42d5d75000070d6ba987bb5e66bc667deb0547d7500000000000000efee10cf81005ee329c94d75040000000000ccd421c9a63a02008045bb4bb2ad8e00e0649e92ecaa23000066ced9040000000000afd7673ca31900000000f8ad5dec190100c02badaa0328739964a88e60b26fb1610b00506b9fa4ab8e60b221e33d00f3b74df21fd511c0b30ef13bd80273af36997b0100d5ccbdda34c4dc8be57a4a72531d010000000000c0bbda647c0e04c0f7f5d501000000000030539b38cc170080e33924595747007072b7d50100003376571d0000000000d090c78c6bde0100000080dfb78e3d23000078a555750065fa241faa2398e41007ed0000f3701b2fc8b7e622c9501dc1ab6de2330673d5c583d8160c197ffb68c72ee65e00c03c987bb5e7435c4bb26c7d7500000000000000efe6109b6a034cf194e4a63a02000000000066c6734700008e6d9371dd0600e765a80e000098b1dbea00000000008086acab030000000060c6ee635d22000013acaa03287195e46b7504937549f6d5110000ffd065dcc498767c4ef2a53a8257eb923c564700ffe22e1ec4b6e04bc6df3cdad2c5dc0b00988f2ee65eadf99af119382cd15392ebea08000000000000dec53ad6ca014cb58eb53c0000000000f06b9b78ee0800c0f1ec92f4d51100947888f57a0000cfd95607000000000034e22666aa00000000f092ae3a000080b6acaa0338b9cb2443750493dd25b9ad8e0000f8957d0ca45b3464bc2760fefef919b36917ccc3217ef75a60eed5a66ff1a21000302fe65e6d1a62eec5726d624e080000000000d0ba5dac7104788b7dc6e7e60000000000c0f8dcb1af8e000060d1baea00004a39130700e0b71e933c5547000000000034e090645d1d010000000033761d6b1201009868551dc0c9f5493e544730c921366c0100e6e936c95d7504935cc4a1b72d7988c5d330175dc6836f99b721e36f1ded703006003057b749eeab2398e4435c5bb25cfb249bea080000000000007e48571d00d0b04dc6f7ed0100000000e0dcf5d50100002cda5d926d750400a56eab0300006668a80e000000000068441f67be02000000c0737671363100006fb0aa0ee0a4ae927cad8e60b22e164c0000f3d5c50180adf99ce44b7504af3624f9561d0167ee2e36d06bc155c6df38dab28eb91700305f5dccbd5af335e3bd012cd126be930000000000005a759f645b1d01d0b07d6cae060000000000bb8cfb510100c0311c32ee0b07c079b3ff2e00c06f6dab0300000000001af018fbc300000000c04bd619f7590600804956d5019ccc656c34d7a2bb78491f0098b77d92ae3a82c9868cf708b4619d713135707a87f89d6b81b9579bccbd0080b97b4ad2173730dd10732f96691f87bd000000000000b4aaab0e0058803ec9ae3a0200000000000a75d50100002c5a9f71af1500b8ab0e000098915d9287ea08000000008006384f05000000009e779fe4b63a02008036adaa0338993ec987ea082639c4068100401b6e6353a1d65c2419aa2398e42ae33d02705a5d927d7504dfd5c7dcab35e65e00402b36191768d28e0f19ef116089868c9bd8020000000000d08e6f499eaa230016a2af0e00000000008022f749b6d51100002cd663c63d56002071202a00c0afb9360200000000f8be6fb1de1d000000009e7348d255470000d0ae557500277195e46b750493f549f6d5110000afb4ce38b0a61d9f937ca98ee0d5f619efed80d3b9898d615a701573af167531f70200dad1c5dcab355f638ec272adab0300000000000078b543c6f74401781f4392c7ea08000000000028d057070000b068f63100e0d7b6d501000033b2ad0e00000000009839fb6c01000000c0cb36499eaa23000068d7aa3a80a3bbcc78180b6db9cf78c30700d08aa758f0d9a24dc67b06daf090e44fd511702676b1916a0bccbdda7497e4b63a02006082a7987bb56888b917cb749b713d01000000000000f3d727d95747002c8c75fe00000000009c9b9b24dbea08000016eb5b5c6f02f0af9e923c56470000ccc021f6520700000000f89e75ecb30500000000cfd9c5b9e80000fca055750047d727f9501dc12487245d750400c01b6c92dc574730c98778d0d09a21e386e2c07175f122430bfa987bb5c6dc0b006895b9577bccbd58b2be3a00000000000080ef7accf8ac1980f7b58d753c00000000009c97be3a000080c53ac4f52600bf6fa80e000098816d750000000000c0ccddc7f365000000007849571d000040fb56d5011cd55592afd5114cd627792a6e000078ab2ee30674b4e36bc67b07dad1c5619b704cd7b1294c0bae62eed5a275927d750400c01b7531f76a8db9174bb54d72531d010000000000c08bd6d501000be63b16000000008073f12df6a70500e078ec0b07c073b6d501000033705b1d000000000030735d750000000000ccd84dbc9f0100c03b5855077034974986ea0826bb4fb2a98e0000f8014f49fae206a61b32de43d08e2f491eab236081eee377ac05e65e6dba8fbf1b00d0b6a7b85f68d110732f96a9af0e000000000000e05936050238ae878cdfb50000000000b06487788f0c0080e3b12f1c002f7948b2ab8e000028765b1d00000000003063d719cf7202000000007eeb90645d1d0100c032acaa03389a3ec987ea08263924e9aa230000dec126e34674b4e3436c54dd9a7dc6fb874371072cc921c997ea085ea58fb9576bccbd0080a5d82479ac8e6012732f96ea29e3860c000000000000cccb219e51029cc23adea9010000000060d9fa8cfb4c0100c03174d50100ccde6d75000040a1c7784e0300000000f09c5decb305000000002f59c73a440000dec9aa3a80a3b84af2b53a82c9fa244fc50d0000efa58b43005bf335e3bd04ed7888bf19bca72ff110b6055731f76a511f732f006039baea002633f762a9363187070000000000989b4dac970338857dc6ef5c000000000058a25dccc10100389eeb58e706c0f7dd56070000141aaa03000000000066acab0e000000008019bb8f75880000bca35575004731540730d9636c0e08002ccb5392beb881e9862497d5114cf290e44fd511b000d749b6d5117cd765ccbd5a741f732f0060591e32de43d09621e65e2ccf3ec9ba3a02000000000080ffb68bf728004e6993f1bb17000000000096c67b6300001c8b756e00bcd636c9a13a0200a0c8b63a000000000060a6bec50c15000000009e7348d255470000b02cabea00de5d9fe44375049375d501000047b049725f1dc1241f6223c1160d49fe541d010dbb8befbe56f431f76a8d450e00c052f5491eab2398c4dc8ba51ae2fb080000000000602ebaea008033b38ff52000000000002ccf7d92dbea08000016abab0e00a029661400c039da2579a88e000000000098a143ecf502000000002fd92479aa8e0000605956d501bcab4f497ea98e60b2eb78e10c0058ae757500937d4d72551dc16443929bea0868d0636ca2da8aab8cbf51b4a58f450e00c07275d5014c66eec55299c3030000000000d4bb49b2ad8e0038434392fbea0800000000007847de170300e058bec53a3700a6d95607000014b8ad0e000000000098a92ec9be3a020000000066ea31495f1d0100c0f2acaa03785743750093b9d9030096ee21c9757504930d492eab2398accb78f031f03a877889a1159731f76ad163924d750400c011997bb56988b917cbb38db920000000000040a54392757504c019f31d0c00000000c052dc647c7f150000dedb21ce430060badbea00008002dbea00000000008019ba8b67c800000000f092ae3a000080655a5507f06efa243f55473059571d000070027d92c7ea0826f9101b0bb6aacbb80939f07d5d6cd8df8a3ee36f136de9aa0300004ea08fb9576bccbd58aa3ee381310000000000009c5e9f645f1d0170c61ee25d1a0000000000da7748b2ae8e000060b1ba58e706c074fb2477d5110000277448725b1d01000000003033d6ba03000000c0cbbe65dc23190000deddaa3a8077f129c92fd5114c761d377b00c0f9e8aa0398ec6b92abea08dea44b725f1d0133f7a7d800a61557197f93688bb91700704ebaea002633f762899e926caa23000000000000ced07d3ca701988375c6c30e0000000000a0557d927d750400008b74177b2f02f076dbea00008013da56070000000000cc509ff14c1400000000e0b77619676800007014abea00dec5501dc0646ef6008073f390e4ba3a82c9862497d511bcc997248fd511305337314b69c565fcad5af418732f00e0bc987bb56988b917cbd3675c8b000000000000c0e9acab03004892ec630d330000000000ed7a4cb2a98e000060910eb1ce0d801f735b1d00007042ae7d0000000000fed57dac750700000080977419f746060080a3585507f0c3fa243f55473059571d000050a0cfb84932edf8108737b66a9fe42a3e73f0efeee29ebc257dc6df22dad25507000014d824d955473089b9174bd555070000000000009c91eb240fd51100fc376b78000000000068d5ba3a000080c5ea933c153700d0b6a7d8e31a00381fb7d501000000000033d3550700000000c08cdd24d956470000b06cabea007ec8a724bf544730d9b7b8d90300ce57571dc0645f935c5547f026fb8c7f3b1b7cc1e8317e875a7295f13788b65c2779a88e000028b08ffb8d16997bb144db2477d51100000000000067609764531d01c06f74d501000000000030d15dec510b00c071dcc73a3700dec7b63a0000e0041e33ee2d0a00000000c0e83ac953750400000000ccd421c9ba3a020080e55b5507f04386ea0026db25e9ab2300000a3d645c404a5b862497d511bcc93ec955c60d2fe09c3d66fc2cd8f8a51d43750093997b0100e76e9be45b7504930d31f76279ba8c0bd1010000000000389e2ed6a502ccd136c95d75040000000000bc9203490000389643c6756e00f01e86ea0000801318aa03000000000066e431cea504000000809774b14f3d000027b0aa0ee0cdfa243f5547305917377b00007d925d7504937c8885bf2ddb27b9cab8801bced121e367c0fd783bfa8cbf3db4a5ab0e000098813ee65ead31f76289f6f1ef350000000000c031dd24d9564700f0ac75c6f708000000000060ee36499eaa23000058a43eae3501783f0fb1b71600b07cdbea00000000008019e9aa030000000060c6ee92dc56470000701e56d501bcc9a724bf544730d9b778c90c00e09fbaea0026fb9ae4aa3a8237db67fcfbdd1777c0a91d32febbbf2feee0f5ccbdda64ee050030dac7dcab45e65e2cd126c96375040000000000c0021d92acab230078d153c6e7e600000000003067bb247d750400008bf4186b2700787fdbea00008023da2579a88e00000000009889eb989902000000c0730e717e39000027b4aa0ee04d86ea0026b3312000c0bfda26f9561dc1644392cbea08de6c9fe42ac94d71079cca21e3bff35e5e68cb501dc064e65e0000ff6a1b73af160d31f76279baea0000000000008005ea32aecb0660defa8ceb9c010000000060aebaea00fe1f7bf777dcd699ad79f86dd4dc8b1d81e40844476076046647703623101581c00cc808068c60c0081acc00c8808c6080083c175f7bda6d4b14370572ed3fcf53e5ea53dd37bf53942960ed6faf0f0060b2baea000026695d1d0000f08a7cd601000000006876712f25000000003ca58b3df50000bca1457500bd2d937cac8ea0b7cbf8b20700f067cbb808706cdec741e029e892dc5647c02b3b24394bb22deea09f65ccbdc6688e01da0000200049444154a88bb91700c09f2d63ee3536e65e4cd136c94d75040000000000c084dcc565840063d255070000000000c037dc26d954470000304957b1831180d7b14edbf70b0030459bea00000000008081e8aa030000000060c0eca90700e0cd2daa03e8e534c997ea087af3650f00e0ebf671b0748c3e2539ab8ee08775694bcc618a0e69bfa72c4e1d1773af71ba89c54a00005f63ee354ee65e4cd132c96375040000000000c0041ce23930c0d86ce2dd19000000000086e790e4b23a02008049daa5ed180080d7b2a90e0000780587b85f10000000002049aee20e5800000000f8167bea010028b1a80ea097557500bdf9b20700f0b44d929bea087a5b2539a98ee08775492eaa23e0c80e49cee2c585315a5507d0db632c29060078ca26c96d7504bdad62eec5b4ece3cc020000000000c0317469cf5e001897cbb4f70c0000000000602896f1ec110080d7d15507003079ebea00008057b0a90e000000000018805ddc4b09000000004fe962570400000516d5013cdb32c9c7ea087aebe2cb1e00c0f72c933c5647d0cbfb38183c15ab2417711927d370487296645bdc417fcb987b8dd165ccbd0000bee732be738f8db91753b44972571d01000000000030627771d932c058ede32c080000000000c3719fe4ba3a02008049ba8a3d8c00bc3e67aa018029f219070000000020e9aa030000000060c0eca90700a0cca23a8067394df2a53a82de7cd90300789e7d1c341da34f49ceaa23388a55dacff2509b013fe490f6e7d8d2d4f131f71a27732f0080e731f71a27732fa6a88bf91f0000000000c04b1ce2b92fc0d85d27b9af8e0000000000802497d50100004cd22ec9b23a028059d8a7fdbd0300302576ad0300000000737715f7c002000000c0b7d8530f0040a9457500cfb2aa0ea0375ff60000fad924b9a98ea0b7559293ea088e629be4341680314ebbb43fbf5e5a18a7557500bd997b0100f4b34e72571d416fab987b312dfbf82e070000000000f0125ddab31600c6edb23a000000000080d973a92f0000afa5ab0e00605656d501000047b48b77c7000000008079db2559564700000000c0807571d6100080428bea00be6b99e4637504bd5dc6973d0080be96490ed511f4f23e0e0a4fc94392b32477b519d0cb2eedcfed436d062fb48cb9d7187531f70200e8ab8bb9d7d8987b3145eb98fd010000000000f47197f68c0580f1db26b9aa8e000000000060b61e935c5747000030495769e72200e0ad385f0d004cc9aa3a0000000000a058571d000000000003664f3d0000e516d5013ce94392cbea087abb8f17cb00005e621f074fc7e85392b3ea088e669fe43cc94d75083cc35ddaef9f7d71072f739ae44b7504bd39e40000f032e65ee364eec51475490ed511000000000000237088e7bc0053739de4b13a02000000008059ea62470e0000c7b74bb2ac8e0060761ee22c1e00301d9bea000000000080425749b6d511000000003050f6d4030030088bea009eb44af2ae3a825e7cd90300f831eb2477d511f4b64a72521dc1515d26b948fb8e0343749be43c16f38fd9aa3a80deccbd00007e8cb9d738ad62eec5b4ece3bb1d0000000000c07374714e15606a3c330700000000a0c25d924d7504000093632f1c0095d6d501000047f098645b1d010000000050649764591d010000000003d6c59e7a00000660511dc0375d26f9a53a82de96491e8a1b0000c6ae4b5b84c778bc8f83c353b44a7296b63c0386e42296a58edd32c9c7ea087aebe2900300c08fea62ee3536e65e4cd13aedd243000000000000beee2e2e550698aa4d92dbea08000000000066e3107b720000781dcb24dbea0800666b551d00007004de1f0300000000e6acab0e000000008001b3a71e0080c1585407f0551fd2167f302ef749aeab23000026601f0751c7e85392b3ea088e6e9be434ede116543b24f9672ca91bbbd3245faa23e8ed3e0e3900001c83b9d738997b31455ddaac05000000000080fff618cf7501a6ee329e990300000000f036bab4774b0100e098dc870040b56d9cc30300c6cfce750000000060ae3ea73df70500000000feca9e7a00000665511dc057ad92bcab8ea097437cd9030038a67592bbea087a5b2539a98ee0e8f649ced30e8943955d92b358e63205abea007a33f7020038ae75da45108ccb2ae65e4ccb3ebeeb0100000000007c4d97f62c0580e9f2cc1c0000000080b77017bb720000383e7be100180a730f0060cc0e4936d511000000000005ee935c574700000000c08075b1a71e008001595407f01797497ea98ea0b7659287e2060080a9e9d25edc673cdea77d36669aae93fc9ce4b13a84d9b94b7296645bdcc18f5b26f9581d416fcb987b01001c5b1773afb131f7628ad66973170000000000009a9bb87810602e3c330700000000e0351dd2f60b0300c0b15dc65e380086615d1d0000f0037c960100000000e6e89076671200000000f075f6d4030030388bea00fecb8724cbe206fadb25b9ae8e000098a07d1c4c1da34f49ceaa237835db24a7496eab43988dcf49ced3fe4e60dc4e937ca98ea0b7fb987b0100bc8687782e3c46e65e4c5197b62402000000000060ee76492eab230078535d3c330700000000e0752cd3de2505008063ba4bb2aa8e00807fdb54070000fc804d7500000000004081cb38e70e00000000dfb28bfbc6010018a0457500ff6595e45d7504bd75d501000013b64e5b90c7b8ac929c5447f06af669df83fe191775f27a1e93fc9ce4ba3a84a3595507d0db21e65e0000afe93ac97d7504bdad62eec5b4fc3eeb0300000000009833e7e500e6c9337300000000005ec37deccc0100e0f89c73036068f6b13b1e0018af75750000000000c01bbb8bfb4401000000e0295ddabb12000030288bea00febfcb24bf5447d0db55926d750400c0c45da62dca633cde27595647f0ead6493ec4a2308eef2ec9697cdf9e9265928fd511f4b64cf250dc000030755dccbdc6e67ddabc12a6649de4a63a020000000000a0d032cead02ccd53ade8b0100000000e0780e69ef8e0200c0b17571f91d00c3b3ae0e00007881fbf88e0d00000000cc8b73ee00000000f0b4abd8530f00c0402daa0348927c48bbe08a71d9c5cf0d00e02d3cc4e7ae31fa94e4ac3a8257b74f729ee473daa172f81187b43f4be7b1b8654a3e24b9ac8ea0b7fb24d7d511000033f01073af31fa92e4b43a028e6c99e4b13a020000000000a0c05d9c970398bb2ede890100000000e0389669ef8e0200c031dd2459574700c0576caa0300005ec0776c00000000606edc0f0b00000000df761ff78b030030608bea009224ab24efaa23e8adab0e00009891ebb4813be3b24a72521dc19bb84ef221ed026778895d92d3b8007c8a5631f71aa3cbea0000801931f71aa75575001cd93e6d69040000000000c09c1ce23d5100da33f3ae3a020000000080d1bb8fdd3900001cdf635c7e07c0703da4ed140600189375750000000000c01bba49b2a98e000000008081b2a71e0080c15b540790cb24bf5447d0db55926d750400c0cc74698377c6e37d2c3a9c937d92f324ff4c5b7209cf7595e4346de91cd362ee354ee65e00006faf8bb9d7d87c8cb917d3b34dfb4e0800000000003017e76967a001609de4ae3a020000000080d17229090000afc5393700866e551d0000d0c363dc870000000000ccc72eeed60100000080a75cc6b9420000066e511d30731fe2c1fb183dc6cf0d00a0c2437c0e1ba34f49ceaa237853eb24a7496eaa4318bcfb243fc7eff6a9fa103fdb31f2a21000408d87f81c36465fd266203025cbb4990d0000000000c0d45d25d954470030285d924375040000000000a3e4521200005ec355926d7504007cc7a63a0000a08775750000000000c01bea92ecab230000000060a0ee92acaa230000e07b16d50133b74af2ae3a82debaea00008019bb4e725f1d416fab2427d511bca97dda52f59fe3df59feea90e47392b358883a65ab987b8d51571d00003063d74976d511f4b6aa0e8057d0a5cd6f000000000000a66a9764591d01c0e0ece33c350000000000fdb994040080d7701fe7dc0018876d92c7ea080080675a57070000000000bc91cf71572c000000007ccb63ec210600602416d501337699e497ea087abb49b2a98e000098b92ec9a13a825edec7e2c3b9da26394b72118bc4686e937c48725ddcc1eb32f71aa7ab78510800a05a571d406f1f63eec5f43cc4ef23000000000060ba0e49ceab230018ac7592bbea08000000000046e310ef620100707c3e67023036ebea0000806738c4dd8300000000c03cdcc77db100000000f0942ec9be3a0200009e63511d30531f922c8b1be8ef317e6e000043f0109fcbc6e85392b3ea08caac929c26b94a5bcec1fcec92fc231ea4cec187f87b7a8c76f173030018826dda7767c6e54bdadc03a6649de4a63a020000000000e0157469ef2400c0b774f1ee0b0000000000cfd3c52e1d00008eaf8b736e008ccba63a0000e019d6d50100000000006fe090e4bc3a020000000006ec2ade830000604416d50133b54af2ae3a82deba580c08003014d749eeab23e86d95e4a43a8232fb24cb241f92dc9496f0960e492e929cc643d4b958c5dc6b8c2eab030000f8ff964976d511f4b6aa0e8057b08cdf470000000000c0b4dcc44583007cdf3e6daf0000000000003ce5369e3f0200707c3e67023046ebb41dc4000043b6a90e000000000078035ddaee1400000000e0af766977f50200c0682caa0366e832c92fd511f476132f9001000ccd657500bdbd8f0729b4c3e897497e4a5b8ec9341d925c25f99064555ac25b32f71a27732f0080e1e9aa03e8ed63ccbd989e7ddaef23970300000000000053b08b77100078be75da396b0000000000f89ac778fe0800c0f1f99c09c098adab030000bec3e7150000000060ea6e62160a00000000df7248725e1d0100007d2daa0366e64392657103fd3dc6cf0d006088b649aeaa23e8ed5392b3ea0806e1214997e4a724b7a5251cdb6dfe3303d99796f0963ec4fc648cccbd000086c9dc6b9cbe2439ad8e8023dbc605370000000000c0f8590a04c04b2cd3ce5b0300000000c09f75b157070080e33b8fcf99008cd7a63a0000e009f7f19d1b0000000098b65ddc2d02000000004fe9923c14370000406f8bea8099b94ef2ae3a82deba78790c0060a89669875c1997559293ea0806e321ed7bd74f496e4b4bf851b7693fc72ebe47cfd12ae65e63d4c5bfaf000043b58cb9d718adaa03e015ac626e0700000000008c5b174b8100e86f9fe4bc3a020000000080c1b94ab2a98e000060723e27d9564700c00f58570700003cc167150000000060ca0e697bb60000000080afbb8db38400008cd4a23a6046ce93fc5a1d416f77b118100060e8baea007a7b9f64591dc1e03ca4fdfbfc53929bb443ec8cc36ddacfad8bcbbde7ea32c92fd511f47613732f0080a1ebaa03e8ed63ccbd98a6cb24bbea0800000000008017b889a54000bcdc36c9557504000000000083b18b7708010038befb24d7d51100f083f669f7fb00000c91f7cb000000008029bb4cdb910200000000fcd52e6d86060000a3b4a80e98899324abea087a3b24e9aa230000f82e17018ed3a72467d5110cd243dac3b70f493e2779ac8ce19b0e69bf7bff9ef6ddf9a13286521fe26285317a8c9f1b00c018987b8dd39724a7d5117064fbb419d0a1b8030000000000a08ffb580a04c08f5ba62d9a030000000060de0e49ceab230000981c9f330198924d750000c0573cc63d0a00000000c074dd2659554700000000c0401dd2eee2dd17770000c08b2daa03666295e45d7504bd75f1850f00602c967111e018ad929c54473058fb24d7493e24f967da05d2d47b4c7291f67359c6f766ccbdc6aa8b7f7f0100c6e23aedbb18e3b2aa0e8057b04d72591d010000000000f04c8724e7d511004cc679dadf2d0000000000ccd7659287ea08000026e73c76c201301debea000080aff019050000000098aac7b84304000000009eb24cbb8b170000466b511d3003e7497ead8ea0b7bb78710c00606cbaea007a7b9ff6b005be679de42cc94f496ee2d2cf0ab749fe91e44392552c39a5b94cf24b7504bddd25d954470000f06cfb987b8dd1c7987b314dabb439110000000000c0d09dc57957008ee7212e6c000000000098b3bbb477ab0000e098ae62271c00d3f29064571d0100f027ee210400000000a6ea3cf66c01000000c0b7dc25b9ae8e0000801fb5a80e98b8935830374687245d75040000bd6dd396ef312e9fd22e0786e77848bbf0f324c93fd31ed8f17a1e937c4ef2f7b4efc99bca1806e74392657103fd997b01008cd326c94d7504bd7d49725a1d01afa08b8b0200000000008061fb9cf67e01001cd32ac96d750400000000006fee3176750000707cf7b1cb0f8069da54070000fcc1213e9f0000000000d364cf16000000007c9b3d1100004cc6a23a60e25649de5547d05b97645f1d0100c08b2cd386f88ccb2ac9497504a3b34e729ee4ef492e92dcd5e64cc621c94d929f937c48721ddf91f9ba55ccbdc6a88b7fa70100c66a1973af315a5507c02b394f9b230100000000000ccd6ddaf95700780d9771860700000000606ece6357070000c77548fb9c090053b4aa0e0000f88375750000000000c02bb88b3d5b00000000f0147b220000988c4575c0849d27f9b53a82deeee3a5310080b1ebaa03e8ed7d92657504a3b54f5b4c769ee4ef492ed20ec4f37c87b4cbbaff99e424ed42d56d6911437799e497ea087abb8bb91700c098ed63ee35461f63eec5343dc485380000000000c0f0ecd2ce3802c06bd9c7f372000000008039f91c7b780000383e97df013065db248fd5110000ffb6a90e000000000038b2c7b8bf08000000009e624f04000093b2a80e98a89324abea087a3bc4a109008029d824b9a98ea0b74f49ceaa2318bd7ddaf7f1f3247f4f7291e436edfb1eff6d97f6bbf2e7b4394697645d19c4687c48b22c6ea03f732f008069d8c4dc6b8cbe2439ad8e8057b0493b580f0000000000300487b433c4fbea1000266f1bcfcb0100000000e6e03ec97575040000937395f6ae3e004cd9a63a0000e0dfdcbd00000000004c8d3d5b00000000f06d77b127020080895954074cd42ac9bbea087a5b2679286e0000e03896491eab23e86d95e4a43a82c9d8a7fd99ead2fe5cfd9c7641e87d5d52a94392db2417497e4a729ae432ede254e8e33ae65e63d4c5cb42000053b18cb9d718adaa03e0955ca7cd9c000000000000aa9dc7fba100bc9debccf7fd1400000000803938a43d8304008063ba4fdb1b020053b7ae0e000048fb1e6e2f3b0000000030259fe3fe5900000000f896c7245d750400001cdba23a6082ce93fc5a1d416ff76917c50000300dfb18ea8fd1fb58a6c8ebd9a67def3b4bf2b724ff483b407f97f620706a1e93dca6fdfff8739293b4df8babb89c9b9733f71aa7fb58de08003025e65ee3f431e65e4cd765925d75040000000000306b9f936caa2300989df32487ea0800000000005ec579dafb9c0000702c87b4cf99003007eb385f0700d4b3971d000000009892bbb4fb780100000080afb32702008049fadb6fbffd56dd302527491e92bc2beea09f4392d3b49f1d0000d3729de4537504bdfd232e10e6ed7d48fb6ef8c77fde5706f5b04bfb4ebb4dfb77671b0f36393e73af7132f7020098ae5592ffa98ea0b79fd3beb7c3d47c48fbb36d6e000000000000bcb5db245d750400b37596e45fd51100000000001cd55592657504c02bd824f9a53a0260c6ec5905606ed6497ead8e000066eda7d8cd0ebccc32c997ea080060d0fe561d00c536710e09e0adedd2769cb8a316000060f8ce62472540858bb4bbbe01006072fe5775c0c4ac92bcab8ea0b765bc2806003055cb24e749de1777d0cf2ac9691c6ee66d3dfcfb9ff59ffefbb32427697f263ffce19fb7febdf298ff343e24d9fee13fe12dac62ee3546cb987b01004cd565dadccbe7f47159a5cd18606a1ed27e2779e1090000000000784bbb245d750400b3b6497215975202000000004cc57ddaae0e000038a6abb43306003027eb24bf56470000b3f5fbbd0e0000000000637748dbb3e57e6700000000f8badbb4fba201006092fef6db6fbf55374cc57992ff531d416ff749ceaa23000078556749fe551d416f37492eab23e019cefefd9f27494efff4bf7df8f73f4f79c85f17986cf39f03fe7ffcbfa18ab9d738997b01004c9fcfeae3741517d8315d5d92ff5d1d010000000000ccc221ed9cae73b6000cc126c92fd5110000000000fc90c7b4fd419e410253b589675a0015ec830360ae4e92fcdfea080060b6dc7502fc8865922fd51100c0a0fdad3a008a6de21c12c05bba48b2aa8e000000e0d9ce92fcab3a0260467669bf7bed89000060b2fef6db6fbf55374cc149928724ef8a3be8efe724dbea0800005edd75924fd511f4f68fb4974c00a863ee354e87b44b311e8a3b0000787deb24bf5647d09be7d44cd92ac9ff54470000000000009376485b08e4991b0043e1dc3d00000000c0f879ef0f98ba4d925faa230066e6316d1f9ccbef0098ab6d928fd51100c02cb9e704f811cb245faa23008041fb5b750014dbc4392480b7729ba4ab8e000000a097b324ffaa8e009809bbea010098854575c044ace2329131ba8a2f7d000073b14c1bfc332eabb40b1c01a8b38ab9d7182dd32e40060060faba987b8dd1aa3a005e519764571d0100000000004cda65bc1b0ac0b0ec939c57470000000000f0629fe319240000c7779e76a60000e66a551d0000ccd221c9a63a0200000000e007edd2eefe0000000000beae8b3d110000ccc0a23a6002ce93fc5a1d416fbb24cbea080000decc3e0ece8ed1fbf8dc0e50c9dc6b9cee935c57470000f066ccbdc6e963ccbd98b6b3b47319000000000000c77615171903304c9bb4bfa700000000001897dbd8d30100c0f17d8ecbef00605d1d0000cc92cf2000000000c0d81dd2ee110500000000beee26ce0b020030138bea80913b898baec6aaab0e0000e0cdad93dc5547d0dba72467d511003364ee355e97d5010000bc3973af71fa92e4b43a025ec93eed5cc6a1b80300000000009896db24cbea080078c232cef100000000008cc92ef6740000707cb749aeab230060001e923c56470000b3e3427a0000000060ecced39eb702000000007f751f7b22000098914575c0c85d2779571d416f5749b6d511000094e8921caa23e86d95e4a43a0260665631f71a23732f0080f9ea62ee3546abea007845dbb4c516000000000000c7b04b7b2e0a0043d72579ac8e0000000000e0bb0e6933dd7d71070000d3b28bcbef00e08fd6d50100c0ec6caa0300000000007ec055cc3901000000e05b0e714f2e000033b3a80e18b1b324ff531d416fbb24cbea080000caece3d2da317a1f9fe301ded279925fab23e8cddc0b0060deccbdc6e9637c8e67da36492eaa23000000000080d17b4c7ba71700c6609f7626ff501d0200000000c093ba24dbea08000026e5f7cbeff6d521003020abea00006056eee27b3900000000305e7771870d000000003ce52cce09020030338bea80913a89979cc7eab23a00008072ebb443b58ccba7b87418e02d987b8d57571d000040b97592fbea087afb92e4b43a025ed12ac94d75040000000000305a8724e7b110088071d9c65e03000000008021bb497b271300008ea94bf250dc000043b34d3b130e00f01636d50100000000002fb48bbb2801000000e0291769ef280000c0ac2caa03466a99e47d7504bdddc40b620000345d2c2d1aa3557500c00cac92bcab8ea0b7ab38f0000040d3c5dc6b8c56d501f0ca2e93dc5647000000000000a37416e7e30018a7553c2b070000000018a2fbb4f79d0000e098ae92acab230060a0fc1d0900bc159f3b0000000080313aa4dd37b42fee0000000080a1ba8dbb9f010098a94575c0089d25f9541d416f8f4996d51100000cc63eed702de3f23e3ed703bca6f324bf5647d0db2efe7e0400e03f1ee2f3e1187d8c9f1bd37799f61d160000000000e0b92e926cab2300e00774f1ac1c0000000060481ed3f6ab0000c031ddc5ce080078caba3a000098855dda3e4e0000000080b1b98c5d5b00000000f02dbbb4191a0000ccd2a23a60644e92acaa2378912ec9be3a0200804159a72df9635cbe2439ad8e00982073aff1eaaa030000189ceb24f7d511f466eec5d4ed939ca51dde070000000000f89eab38d708c0349c253954470000000000904392f3d84d0b00c071ed62171c007ccfa63a000098854d750000000000c00bdcc4ae2d00000000f8167b22000098bd4575c0c82c93bcaf8ea0b79b78390c0080afbb8c0b00c768551d003041ab24efaa23e8ed26c9b63a02008041ea62ee3546abea007865fbf8fd0400000000007cdf6ddafbbc003005fbb445770000000000d4ba8c1d1d00001cd721edfd7997df01c0d3f649eeaa230080c95b55070000000000f4749f76ce1d00000000f8baf3240fd51100005069511d302267493e5547d0db635c540600c0b73dc4e7c531fa183f3780633a4ff26b7504bd997b0100f09487f8bc3846e65eccc136ed0ccea1b803000000000018a6bb245d7504001cd926c9e7ea08000000008019bb4ab2aa8e00006072bab4f7e70180ef5b57070000937688efe800000000c0b8ecd2ee100500000000beee226da72f0000ccdaa23a60244e62d1dc587549f6d51100000cda7592fbea087afb92e4b43a026002ccbdc6ab8bb91700004f33f71a27732fe6609bf6bd160000000000e08f76f10c0180e9ba4e725b1d01000000003043774996d51100004cce5592757504008cc8a63a00009834dfd101000000803139c43d9400000000f094db24abea08000018824575c0482c93bcaf8ea0b7bb78091d0080e7e9d20ee0322eabea008009582579571d416f3731f70200e079ba987b8dd1aa3a00dec03ac945750400000000003018bb2467b1501b8069ebd2fece0300000000e06decd266b30000704c776977570000cff710e7e70080d7b3ae0e0000000000e8a14bb2ad8e000000008081b227020000fe60511d300267493e5547d0db21befc0100f07c0fb1fc6f8c3ec6cf0de0479c25f9b53a82de1ee3ef3f00009eef213e3f8e91b91773b14a72551d01000000000094fbfd7dd07d710700bc85b3b4bffb0000000000785d8724e7f11c120080e372f91d00bcdcba3a000098ac4d750000000000c0335dc5b35300000000f89643daee5e0000e0df16d50103779264551dc18b74b1241000807eae93dc5747d0db9724a7d511002364ee355e5dccbd0000e8e73aed020cc6c5dc8bb95826b9ad8e000000000000cafcbe0c685bdc01006f651f8bf00000000000dec2599287e2060000a6e590e43cf6c001c04badab03008049ba8befea00000000c038dca6ddcf0100000000fcd5effbea9d090400803f5854070cdc32c9fbea087abb8b17cf010078992eed81022eaecab50000200049444154e3b2aa0e0018a165ccbdc6e836c9a63a02008051eaaa037891557500bc912eed3b2f0000000000303f6749b6d51100f0c6b6492eaa23000000000026ec229e430200707ce7491eaa230060c4b6491eab230080c9d9540700000000003cc32ec9657504000000000cd865ec89000080bf5854070cd859924fd511f47648d255470000305a0f4996c50df4f7317e6e007d9cc5dc6b8c0ef1e21000002fb74d72551d416fe65ecc4997e4be3a020000000000785317b10c0880f95a25b9a98e000000000098a09bb4192c00001cd345924d7504004cc0ba3a0000981c9f2f0000000080a13b24394fb2af0e010000008081b227020000be61511d305027f12562acba38400100c08fb94e725f1d416f5f929c5647008c80b9d7787531f70200e0c72c93ecaa23e8cddc8b39398fdf530000000000301717719e11002e93dc554700000000004cc86ddaec1500008ee936cebb01c0b16caa03008049d92579a88e0000000000f88eb3986502000000c0b7dcc59e080000f8a64575c0402d93bcaf8ea0b7bb24ebea08000026c18385715a5507008cc032e65e6364ee0500c0b174d501bcc8aa3a00dec83e6d79c6aeb8030000000000785d9fe3191800fcae8be7e40000000000c7b08bdd6100001cdf7decea0080635a27395447000093b1a90e0000000000f88e8b24dbea080000000018a85dbcbf0700004f5a54070cd059924fd511f47688458100001ccf36c9557504bd7d4cb2ac8e0018b0b3987b8dd1210e3e0000703ce65ee364eec59cecd36618bbe20e0000000000e075dc26b9ae8e008001d9a79d173f147700000000008cd921ed9da47d71070000d3b24b725e1d010013b4ae0e00002663551d0000000000f0849b986302000000c0b71cd2dedfb3270200009eb0a80e18989378103f56cb240fc50d00004ccb326d5920e3f225c9697504c000997b8d5717071f000038ae65ccbdc6c8dc8b39d9a75d187928ee0000000000008eeb36ed4c1c00f0dfb6690bf30000000000e8ef90f62e92dd1c00001cd32176c001c06bd9540700009370483b8b0f00000000304477492eab230000000060c0ce923c14370000c0e02daa03066699e47d7504bddd27b9ae8e00006092baea005e64551d003040cb987b8dd15d92757504000093d45507f022abea007843fbb417020ec51d0000000000c071dcc6734a0078ca26c945750400000000c0087549b6d51100004cce797cce0480d762cf2a00700c3e53000000000043b58b7d5b00000000f0948b787f0f00009e65511d302067493e5547d0db210e510000f07ab649aeaa23e8ed6392657504c0809cc5dc6b8c0e492eab230000982c73af7132f7626eb669738d4371070000000000f0636ee33d5000788e55dadf9b00000000003ccf4592757504000093739164531d010013b64f725f1d01008c9e674400000000c0101dd2eed8d8177700000000c0505da5ede00500009e61511d3020d7d501bcc832c94371030000d3b64cb2ab8ea0b72f494eab230006e0241ea08fd532e65e0000bcaeeb248fd511f466eec5dc6cd3166c1c8a3b00000000008097b94fd2554700c0887449eeaa23000000000046e02676aa0000707c3e6702c0db5857070000a3b7a90e0000000000f89343dadd1afbe20e0000000018aadb24cbea08000018934575c0402c937cac8ea0b7fb24d7d5110000cc42571dc08bacaa0300066099e47d7504bd997b0100f016f631f71aab557500bcb16ddaa28d4371070000000000d0cf2ec9797504008c5097f6f72800000000005f779be4b23a020080c9f1391300deceba3a000018b5bbb47d9a000000000043d2a5ddad0100000000fcd52eeed1060080de16d50103709ae44b75042fd255070000301bdb2457d511f4f631c9b23a02a0d059924fd511f47688b91700006f6793e4a63a82deccbd98a36ddaace350dc0100000000003ccf2e6db6ef224000e86f9fe43c9e9103000000007ccd7dece50000e0f876492eab230060461ed2fefe050078894d750000000000c09f5c2459574700000000c040fdbeb31e0000e869511d3000abea005ee42aed85720000782bcb248fd511f4f625c9697504408193987b8dd532e65e0000bcad65ccbdc6c8dc8b39daa6bd347028ee0000000000009ef6fb22a07d7107008cd9433c230700000000f8b35d92f3ea08000026e731cebc0140854d750000305aebea0000000000803fb88d7b4301000000e05b0e49ba787f0f00005e64511d506c99e4637504bdedd27e760000f0d6baea005e64551d00506099e47d7504bddd27b9ae8e00006076f631f71aab55750014d8a65dfe7328ee000000000000be6e9736cbb70808007edc36c965750400000000c0403cc6b34800008eef90e43c3e67024085d5ff63effe6edb48d3360fdf20f65ccea09581e408a48ea0ed08868aa0d511988e60a508968c60a90ca808968c60a50cc80cf6e06def37f3d9729b148b4f55f1ba8001e648fa01468bc5a7de3fd50100c0206d92bc54470000000000fced29eefc01000000809fb94d3b6317000038c0a43aa0d075922fd5111c645a1d0000c0d95a2579ac8e606f574966d5110027749be4cfea080e32ad0e0000e06cad62ee3544e65e9cab75dafc6357dc010000000000fca74dda0c7f5bdc010063324f72571d0100000000506c97e453bc8b0400e0f83ec5e5770050659de4b53a0200189c55750000000000c0df3671f72400000000fccc5decdf03008077995407149a57077090aff1451000805ab338d46888be24b9ae8e0038810f31f71aaaaf495eaa230000386bb3987b0d91b917e76a9de436edf2490000000000a0de266d76bf2dee0080319a27595447000000000014d9a5bd8b74162d0000c7769764551d0100676e551d00000ccebc3a000000000020ed7e9fdb38730b00000000def257acf9030080779b5407149925b9aa8e606f9bb47f3b0000a8b44d32ad8ee020f3ea0080139825f9ad3a82bd997b0100d007e65ec335af0e8022ebb4433976c51d000000000070ee3671903600746d9a64511d010000000050609ab68f0800008ee96b9cd500007db0ac0e0000066517ef8d00000000807abb249fe2cc2d0000000078cb22c943750400008cc1a43aa0c075922fd5111c645a1d0000007f5b2579ac8e606f574966d511001dba4df2677504079956070000c0df56698b741916732fced93a6d26b22bee00000000008073b5499bd53b481b00ba779ff6d90b00000000702eee922cab230000189d459cd100007d61f60300ecc3b30300000000d007b769f7640000000000df7b4a32ad8e000080b1985407149857077090c7584c010040bfcc92bc5647b0b72f49aeab23003a32af0ee0205f63ee050040bfdc27d95547b037732fced93aed900e7fbb0000000000e0b4366933fa6d7107009c8b6dda67efa6b80300000000e014eee22c1500008ecfe57700d03f4fd50100c0602cab030000000080b37717f74e02000000c05b36b17f0f00008e6a521d7062b32457d511eced35eddf0e0000fa641b2f2d866a5e1d00d0815992dfaa23d8db26e65e0000f48fb9d770cdab03a0d03ac96d925d710700000000009c8b4dda6c7e5bdc0100e7669be453bc1f0700000000c6ed31f6cb0100707c2ebf03807e5a5607000083b1aa0e0000000000ceda5dac730700000080b738b71e00003a30a90e38a1eb245faa2338c834be0c0200d04fabb483ae1996ab24b3ea08802332f71aae6975000000bc6199e4a93a82bd997b71eed6691b0e76c51d000000000030760e0102805a2ff17e1c0000000018af4592fbea08000046c7ba3700e8af6575000030084ff1bd1e00000000a8b34832af8e00000000809eda2599c63a3f000038ba4975c009cdab0338c863925575040000fcc42c2efb1ba22f49aeab23008e645e1dc0411e93acab230000e027a631f71a22732fcedd3aede2207fbf0000000000a01b9bb459bc438000a0d6b7f7e3000000000063b248dbdb080000c7e4f23b00e8b76dda3a7500809f595607000000000067cb3a770000000078db2eed8cdc75710700008cd2a43ae0446649aeaa23d8db6bdabf1d0000f4d93616020fd5bc3a00e0086631f71a22732f000086c0dc6bb8e6d501506c9db6016157dc01000000000063b3499bc16f8b3b0080669de4ae3a0200000000e0485cea0b0040175c7e0700c330af0e00007a6f551d00000000009ca5e758e70e000000003ff329f6ef0100406726d50127709de44b75040799c6456600000cc332c95375047bbb4a32ab8e00780773afe19ac6dc0b00806130f71a26732f681b106e936c8a3b0000000000602c3669b3776bdf00a05fe649eeaa230000000000de6993e4be3a0200805172f91d000cc3b23a0000e8b54d9297ea0800000000e0ec6cd2d61f01000000003f769764551d0100006336a90e38817975000759c41742000086659a64571dc1debe24b9ae8e0038d0bc3a80833cc6dc0b00806199c6dc6b88ccbda05d24749b76b007000000000070b845dabba76d750800f043f3247f554700000000001c6893b607c8fb4800008ecde57700301c2f495eab230080de5a5607000000000067c73a7700000000f8b9bbb433710100800e4daa033a364b72551dc1de7649eeab230000604fdb24d3ea080e32af0e0038c02ce65e43f49af66f0700004362ee355cf3ea00e8816ddac11e9be20e000000000018aa45bc2f0480217848fbdc0600000000181297fa0200d01597df01c0f02cab030080def29c00000000009cd22ec9a758e70e000000006f798cfd7b0000701293ea800e5d27f9521dc141a6b1a8020080615a2679aa8e606f574966d511007b30f71aae69ccbd000018a66592e7ea08f67695e4be3a027a609b7691e5a6b8030000000000866691b6ee0d00188669dae73700000000c0106cd2f6fc38870300806373f91d000cd3b23a0000e8a5d724ebea0800000000e06cecd2d6b9bfd46600000000406f2de2ae640000389949754087e6d5011ce42936850300306cd3b405c30ccb9724d7d51100bf685e1dc041164956d5110000f00ed3987b0dd12cc9657103f4c136eda08f45710700000000000cc522ed1d2100302cd378370e00000000f4df266dafcfb6b8030080f171f91d000cd72aceb80200beb7aa0e0000000000cec62e6d9dfbbab80300000000facad9f50000706293ea808edc27b9aa8e606fbbf8520800c0f06de3b976a8e6d50100bf601673af21dac561c600000cdf4bda771286e522e65ef0cdb7f9fda2b8030000000000faeeaf58130f0043364df25c1d0100000000f0864ddaa5bedbe20e0000c6c7e57700307ccbea0000a0773c1f0000000000a7324db2ae8e00000000809edac4fe3d000038b9497540072e93cc8a1b38cc340e100400601c96499eaa23d8db557c9f04faed3ac997ea080e328db9170000e3f090e4b93a82bddd24b9af8e801e99a65d3e0400000000007cef2eedbd2000306c9fd20ef60300000000e8935d9cc1010040379ee2f23b00188365750000d03b9e0f000000008053b88b792400000000bc6593e4b63a020000ced1a43aa003f32417d511eced2916560000302ef7698765332c5f925c574700bc615e1dc041ccbd0000189b69ccbd866896e4b2b801fa649a7608080000000000f05fee62ad22008cc536ed60bf4d710700000000c037bbb4b9e5bab8030080f1d9a4ed1f0700866f551d0000f4ca5375000000000070169cbd05000000006fdba49d15b12dee000080b334a90e38b2fb2437d511ec6d97f66f07000063f2926456dcc061e6d501003f304b72551dc1de7671a0310000e3f31273af21ba88b917fc77f3b4c3400000000000e0dced927c8cf749003036dbb403fe36c51d0000000000bbb479e5bab8030080f171f91d008ccb36c953750400d01bcbea000000000060f4eee2ec2d00000000788bfd7b0000506c521d7044974966c50d1c6696e4a5b8010000baf090e4b93a82bd5dc5f74ba05fae937ca98ee020d358100100c038997b0dd34d92fbea08e8997992dfd32ec104000000008073b44b3bfc675ddc010074639bf659bf29ee0000000000ce977792000074c5e57700304ecbea0000a03756d50100000000c0a82dd2eeab0000000000beb74b328dfd7b0000506a521d7044f32417d511eced39c9437504000074689af6528461f992e4ba3a02e06ff3ea000ef214871e0200306ed3987b0dd12cc9657103f4cd2aed62227fd3000000000038379bb419f9bab80300e8d636ed337f53dc01000000009c9f5dbc930400a01bdfd6bfb9fc0e00c667551d0000f4c226c94b750400000000305a8bb47b770000000080ef392b0200007a62521d7024f7496eaa23d8db2e16570000307e2f4966c50d1c665e1d0090f61972551dc1deccbd000038072f31f71aa28b987bc18fac935ca71d560c0000000000e7601387ff00c039d9a67df67b2f0e000000009cd26dbc930400e0f8be9df3b62dee0000baf1126bdd008064591d00000000008cd622ee990400000080b7ece2ac080000e88d4975c0115c26991537709859dac66f000018bb8724cfd511eced2abe6f02b5ae937ca98ee020b338d4180080f3f010077d0fd14d92fbea08e8a197b48d0efeae01000000003076cf693371ebdc00e0bc6cd39e0176c51d00000000c079b88b0b490000383e97df01c0795856070000e53c0f00000000005d582499564700000000404fd9bf0700003d33a90e388279928bea08f6f69ce4a13a0200004e681a97fb0dd19724d7d511c0d99a57077010732f0000cecdb43a8083cc925c1637401f6dd3363c2c8a3b0000000000a02b8bb459f8b6b80300a8f1edbdb87d6e000000004097eee2dc1400008ecfe57700703e96d5010040a9d7f8fe0f000000001cdf22eed80100000080b7d8bf0700003d34a90e78a7fb2437d5111c645a1d00000027f6926456dcc061e6d501c0599a25b9aa8e606fbb987b0100707ed649be5647b0b78b987bc15bb669dfef17c51d0000000000706c8fb1c60d0068eb7d6ed3d6bf03000000001cdb5dec5d0300e0f85c7e0700e7659de4b53a020028b3aa0e000000000046e739cedf02000000809ff914fbf70000a07726d501ef70996456dcc061be2679a98e000080020f698b8e1996abf8fe099cd66592fbea080e328bb9170000e7699664531dc1de6ee2fb27fccc34edc24c00000000001883bb78370400fc977592db24bbe20e00000000605cee92ccab230000189d5dda3b6e97df01c0795956070000653c070000000000c7b449f2a93a02000000007aec2ec9aa3a020000f8dea43ae01de6492eaa23d8db26c9ac3a0200000ab9f47798be24b9ae8e00cec63ce65e43f49ce4a13a0200000a4dab0338c82cc9657103f4d93cc9e7b44b8d0000000000608876497e4f9b790300fcbb7592db78270e000000001cc75dbc970400e0f87669efb6d7c51d00c0e9adaa03008032cbea000000000060343669eb8fb6c51d00000000d057ce8a0000801e9b54071ce83ec94d750407995607000040b17592afd5111c645e1d009c0573af61dac5dc0b0000ccbd86e922e65ef04f9669878aec8a3b0000000000605fbbb419f7aa360300e8b175daf3c26b710700000000306c2e240100a00bdfd6c0ad8b3b00801acb38ef0500ced153750000000000301a9bb4f547dbe20e00000000e82b6745000040cf4daa030e70996456dcc061bec6212f000090b4ef349bea08f67615df47816e5dc6df99a17a48f2521d0100003d308bb9d710dd24b9af8e809e5ba7cd6efc8d030000000060283669b36d7b3a01807fb24e721defc40100000080c3b8900400802eec92dcc61a38003877cbea0000e0e47cfe0300000000c7b0495b7fb42dee0000000080be72560400000cc0a43ae000f32417d511ec6d9364561d0100003d32ad0ee0205fd22e6404e8c23ce65e4364ee050000ff695a1dc04166492e8b1ba0efb669878c2c8a3b0000000000e09f3cc5c1d900c07ebebd13df14770000000000c3e242120000ba729b645d1d0100945b5507000027b7aa0e0000000000066f13677001000000c0cf382b0200000662521db0a7fb2437d5111c645a1d0000003db34ef2b53a8283ccab03805132f71aae6975000000f48cb9d7305dc4dc0b7ec5366d16f058dc0100000000006f794cf2290ece0600f6b74dbb806353dc0100000000f4df2ec9c7d89306004037eed2ceae0000585607000027b549f2521d01000000000cda26edec0c677001000000c08fddc559110000301893ea803d5c269915377098af71d00b0000fcc82c2ef41ba2abf87e0a1cd765fc5d192a732f0000f8b18724afd511eced26c97d75040cc47ddac6090000000000e893bb78df0300bccf36ed220e7bde0000000080b7ecd2e688cedb0000a00b2ebf0300fedd36c9737504007032cbea000000000060d036696bddb7c51d00000000d057f6ef0100c0c04caa03f6304f72511dc1de5e933c54470000408f4dab0338c89724d7d511c068cc63ee35449b24b3ea080000e8a96dccbd866a96e4b2b80186629ee463daa59b0000000000506997e4f738f40700388e6dda851c9be20e00000000a07f7669f3c37571070000e3b34bdbbb3d2fee0000fa67591d00009c8ccf7d00000000e0509bb4b5eedbe20e00000000e8abbbd8bf0700008333a90ef845f7496eaa2338c834165b0000c0cfac937cad8ee020f3ea006014ccbd866b5a1d0000003db74af2581dc1de2e62ee05fb5827b94e3b900400000000002a7c3b347b559b01008ccc36ed19c3fb7000000000e09b5ddadc705ddc0100c0f878d604007e66591d00009cc46bcc060000000080c37c3b876b5bdc01000000007d751777150300c0204daa037ec18724b3ea080ef218979e0100c0af98a51d88c0b05cc5f755e07d2ee3efc8507d8d838c0000e057cc62ee35443749eeab2360405ed20e2459d466000000000070869ed266d4d6b301005dd8a63d6b3c15770000000000f576f16e1200806e78d60400fec94b924d750400d0b95575000000000030489bb4f547dbe20e00000000e8abbb24f3ea080000e03093ea805f304f72511dc1de5e93ccaa2300006040a6d5011ce44b92ebea0860b0e631f71aa2d7240fd51100003010db987b0dd52cc96571030cc9b7bf775f8b3b0000000000381f8f493ec5a1d90040b7b669cf1c8bea1000000000a0cc6bda85beebe20e0000c66717cf9a00c0af59550700009d5b5607000000000083b3495b7fe41c2e00000000f8b1bb24f3ea080000e07093ea807ff029c91fd5111c641a0b2e0000601fabb44b84199e7975003048f7496eaa2338c834e65e0000b08f55ccbd86e822e65e70885992cf69972501000000004057eed2d62102009cca34c9a23a020000000038b94d92eb24ebea100000466797e4369e3501805f33af0e00003ab7ac0e0000000000066593b6fec89d9200000000f06377b1161f0000066f521df0131fe24bc7503d265955470000c000cd92bc5647b0b7abb47f3b805f75197f3786cadc0b00000e338bb9d710dd24b9af8e80015aa61d56b229ee0000000000607c76493ec6de5b00a0c634c9a23a0200000000381917fa0200d0955ddab3e6bab80300188e759c61050063f6541d00000000000cca73ac750700000080b7ec92dcc559f60000300a93ea809f9827b9a88e606fbb24b3ea08000018a86dda457e0ccf9724d7d511c060cc63ee3544af31f702008043997b0dd72cc96571030cd13aedd01207220300000000702c9bb4f736ebe20e00e0bc4dd30e210400000000c66d1317fa0200d08d5ddab3a6b57000c0be56d50100406796d50100000000c0602c62ad3b00000000bce5dbfebd796d060000702c93ea80377c4af24775040799c6a20b0000788f5592c7ea080e32af0e0006e13ec94d75040799c6dc0b0000de6395b6919f61b988b9171c6a9bb606ea6b7508000000000083b748721d6bd800807e9827b9ab8e00000000003ae3fd2400005df976f9ddbab8030018a665750000d0995575000000000030088bb4fb240100000080efd9bf0700002334a90ef8810f691756303c4fb1611b00008e6196e4b53a82bd5da5fddb01bce532fe4e0cd5631c60040000c7709fb6209961b949fbb7030e334bf239fefe01000000007098bb38301b00e89f79da738a77e100000000302e2ef40500a02b2ebf0300decb7d4800304e9b242fd5110000000040ef59eb0e000000006fb37f0f0000466a521df003f32417d511ec6d170b2f0000e058b6f17c3d545f925c574700bd358fb9d710ed92ccaa2300006024ccbd866b96e4b2b801866c99b6216353dc0100000000c070bc26f998b6f61000a08fe669efc277b51900000000c0913cc6fe3f0000bab1493bafc0e57700c07b3d550700004737af0e00000000007a6f116bdd01000000e02dbbb4f361eddf030080119a5407fc379f92fc511dc141a649b6d51100003022abb403bd199e797500d04bf7496eaa2338c834e65e0000704ccb38047c882e62ee05efb54edb98b128ee0000000000a0ff9e935cc7613f0040ff7d7b17be2bee0000000000dee72eed6c14000038b64dda7b6567b90100c7b0ac0e00008e6e551d0000000000f4da22ed2e4900000000e07bbbb4fd7bceb3070080919a5407fc9b0f49e6d5111ce429366903004017667179df105da5fddb017c73197f1786cadc0b0000ba318db9d710ddc42584f05edbb4bf817f15770000000000d05f8f6987fd6c8b3b00007ed53a6ddfc4a6b8030000000038cc5d9c070c00403736b11e0e00382e67c402c0b8bca6ad470700000000f891bbb4bb1d0000000080ef6dd2ce83b50e0f0000466c521df06fe6492eaa23d8db2e165f00004057b6f1bc3d545f925c574700bdf11073af2132f7020080ee987b0dd72c6d8139f03e0f497e4f9b3f000000000040d266c69f93dc578700001c609be436edf04200000000601876493ea69d070c0000c7f69cf61e795bdc01008ccb36d6a901c0982cab030000000080deba8bb5ee00000000f0964decdf030080b330a90ef8dba7247f54477090597c790400802e2d933c5547709087ea00a017ccbd866b1a732f0000e892b9d7305dc4210d702cab249769972f010000000070de3649aee3c23d0060d8b669cf348bea1000000000e01fedd22e235917770000304e8bb8fc0e00e8cebc3a0000389a55750000000000d04b77f15e1000000000deb289fd7b0000703626d501493ec44bfca17a4ef2501d01000067609a76e037c37293e4be3a022865ee355c4f4996d51100007006a631f71a22732f389e6ddae68dc7e20e0000000000ea2cd266c52fb519000047338df7e000000000d0679b249749d6c51d00008cd322edbd310040579c170b00e3b08bcf7500000000e03fed927c8efb3f01000000e02d4f6967da6f8b3b00008013995407a4bdc4bfa88e606fbb38000600004e651bcfdf43354b3bac1d384ff3987b0d91b91700009c8eb9d770cd62ee05c70b3a25a80000200049444154749f7618caae3a04000000008093d925b94b7b5fe6a01f00606ceed39e7500000000807e798ecb480000e8ce639c21010074ef25c96b750400f06eabea0000000000a05776696bdd97c51d00000000d0578b249fe2bc080000382b93e2dfff29c91fc50d1c6696b6291b0000388d6592a7ea08f67691645e1d019430f71aae592c9c000080535aa65d7ac7b0987bc1f12d935c27d954870000000000d0b94dda41d9f3da0c00804ecd937c4ebb240400000000a8b7487b4fe94c0d0000ba7097e4be3a0200381bcbea0000e0dd7c9e0300000000dfecd2d6baaf8b3b00000000a0af1649a6d5110000c0e94d0a7ff787b85c6ba89e933c54470000c0199ac6857d4374130769c2b931f71a2e732f0000a831ad0ee020e65e707c2f49ae933c16770000000000d09d451c940d009c8f65dab38f3d710000000050ebafd8c707004077eee2ec3d00e0b496d50100c0bbf93c0700000000926493763f8333b900000000e0c79c17010000676c52f8bbe7492e0a7f3f879b55070000c099da2679a88ee020b32497c50dc0e9cc63ee3554b3ea00000038532f4916d5111c6416732fe8c27d92cf4976d52100000000001ccd2ec95dda213fdbda140080935aa7ad2fd9147700000000c039faf69ed2b9550000746197e4f7b4b3f700004e6915e7b200c0906d628f1d00000000d06685b76977d60000000000df735e0400009cb949d1effd94e48fa2dfcdfb6cd2366203000035bcd819a68b385413ce85b9d770bdc6dc0b00002acdaa033888b917746799e43a6dad0e0000000000c3f6ed90ec796d060040996ddaf3d0537107000000009c935dbca70400a03bdf9e3757b51900c0195b56070000079b57070000000000e59ed2d61f6d8b3b00000000a08f76493ec77a3b0000387b9382dff921be8c0cd9bc3a000000cedc362eea1baa9b24f7d51140a7ccbd86eda13a000000cedc4b924d75040731f782eebc24b94ef258dc0100000000c0e11ed30ec95e1777000054db26f914efc001000000e01436697b52bca70400a00b9b58170700d45b56070000075b55070000000000a51669e74f6cab4300000000a0877669fbf7ac990700003229f89d0f492e0a7e2fc7e1cb240000d4f35c3e5cb32497c50d4077e631f71a328720030040bd557500079bc5dc0bba749fe473da6610000000000086619736dbbd8f43b20100fedd7d92bbea080000000018b1a7b4cb485e6a33000018a94ddaf3a673db00806aabea0000e020af3157000000008073f635c9b43a02000000007acafe3d0000e03f4c4efcfb6e93fcebc4bf93e3d9c501840000d0075ef40cd74592797504d0894f49fea88ee05d56d501000080b9d780997b41f796492e933c17770000000000f0cf9e935ca7cd760100f8de3cc9c7b4332c0000000080e3794c3b03655b1d0200c0283da5dd35e1791300e8836ddaf30900302cf6dc01000000c0f9ba4b32ab8e00000000809edaa4eddf73b7330000f0ff4d4ef8bb3ea45d22c170f942090000fde0d97cd86e92dc5747004765ee050000701c2fd501bc8bb917746f9bb629e46b710700000000006ffb9a36cb7da9cd0000e8bd7592ebb403120100000080f7bb8bfd5d0000746791e453da7e670080be58550700007b5b5507000000000027b74bf239eefb0400000080b73ca59d6d6fff1e0000f01f2627fc5db324bf9df0f7010000405fcd925c163700c7334f72511dc1bb3c57070000008cc42ce65e700ab3241f93bc16770000000000f05f5e93fc9e36c30500e0d7bca41d90f8549b010000000083b64bdb67322fee000060bcfe4a32ad8e0000f88165750000b0975d7c7e03000000c0b9d9a59d2b613608000000003fb648f229c9b63a040000e89fc9897ecf6d923f4ff4bb000000a0ef2ee2c077188b4f49fea88ee0dd6eaa0300000046c2dc0b4e679de43ac95375080000000000794a9bd9ae8a3b000086689bb637e36b7508000000000cd026ed5de5ba3a04008051da25b94bf2501d0200f08697b4191900300cabea0000000000e0a4ac7707000000809ffb2bc9b43a020000e8afc9097ec78724f313fc1ebaf7a13a00000048e2d97c2c6e92dc574700ef62ee050000705ce65ee360ee05a7b34df229ede2a75d710b00000000c039da25f99c36abdd16b700000cdd2cde7f03000000c03e16496e93bcd46600003052bbb4e7cd796d0600c03f5a56070000bfcce736000000009c8fe758ef0e000000006fd9a59dc1fa501d020000f4dbe404bf6396e4b713fc1eba77551d0000002449aeab03389a5992cbe206e070f32417d5111c8dcf570000a8e7b97c3c6631f782539aa7fd0ddd147700000000009c93e7b4d9ac4bf300008e679e7601c96b6d0600000000f4de5f49a649b6c51d00008cd326edddedbab80300e05758d30f00c3e1731b00000000cec3226dfd91f5ee00000000f0bd5ddafc6c5e9b0100000cc1a4e39f7f9be4cf8e7f07a7755b1d000000782e1f918b78a90743f529c91fd5111cd56d75000000e0b97c44ccbde0f45e925c27f95adc0100000000700efe4a7bb7f5529b0100304aebb4f7dfcfd52100000000d043bb24bf2779a80e010060b49ed3d6c7ad8b3b00007ed53ac96b750400f08f3649b6d5110000000040e7fe4a32ad8e00000000809edaa49db96aff1e0000f04b261dfeec0f49e61dfe7c6a7caa0e0000003c978fcc4d92fbea08602fe65ee3e4f31500006a5da6cd49180f732fa8314bbb88d4c50a0000000000c7b749f231c943750800c0c86d93dc26792cee00000000803ef97611c9aab8030080f15aa4bdabdd16770000ec6b591d0000fca379750000000000d0a95d92bb389f0b00000000def29cb67fefa536030000189249873f7b96e4b70e7f3e35a6d501000070e6ae935c55477074b32497c50dc0af9b27b9a88ee0e86ee26f310000549a5607d089597cd7820aabb4f7098be20e000000008031f99a367b5d578700009c91fb249fd32e2a010000008073b6888b480000e8d65f71ee0300305cabea0000e01fadaa030000000080ceecd2d6bbcf6b3300000000a0b7be9d19b12dee0000000666d2d1cfbd4df267473f9b5a1769977c0000003566d50174e22216cbc350dc26f9a33a82ceccaa030000e04c7d88f7d06365ee0575b66997447d4e3bb4050000000080c3bc26f918ebcb0000aa2cd3f6726c8a3b00000000a0ca5f697b445c44020040177669fb911faa430000de6119e7ab00409fbd2659574700000000009dd824b98c192000000000bce52eedcc08000080bd4d3af8991f92cc3bf8b9f4c72ceddf19000038addb247f5447d0999b24f7d511c04f997b8ddfbfd23e6f010080d39a25b9a88ea033e65e506b997668cb73710700000000c0103d26b98e83b10100aaadd3d6fa3f157700000000c029ed927c4cf2501d0200c068bda6bd8b5d167700001cc3aa3a00007893d903000000008cd3226dfdd1b6b80300000000fa6897e4f724f3e20e000060c0261dfccc5992df3af8b9f4c7457c1905008053fb10cfe1e76096e4b2b80178db2ce65ee7609ef6b90b00009cc66d923fab23e8dc2ce65e50699bf6f7f6afb48d280000000000fcdc6bdaa13ef771303600405f6c937c4a7bf70d0000000063f79cb61f6b5ddc0100c0783d27b98e674e00603c96d50100c09b56d50100000000c0d17d4d328d33ba00000000e0473669f787ae6a33000080a19b1cf9e7dd26f9f3c83f937efa23c9ac3a020000cec832c96fd51174ee22c9bc3a02f8a1db987b9d8bdfe2d04100003895eb78fe3e17e65ed00f0f697f7b9fab4300000000007aec316d96ba2aee0000e0c71e927c4cb2ab0e01000000808e3ca69d73e2225f0000bab288674e00607c9c650500fdb48bcf690000000018935d92bb24b3e20e00000000e8abe7b4fd7bebe20e000060042647fc591f92cc8ff8f3e8bf2f49eeab23000060e4be7dd7ba29eee0746ee2bb16f48db9d7f9b9493bd0e843750800008cd8759255928be20e4ec7dc0bfae1256d43cad7da0c0000000080de794df27bdafb8c6d710b00003fb74e7299762823000000008cc52ec9e7d883050040b7ee924cab2300003ab08d356500d047abea0000000000e0685ed3ee3998d76600000000406f3da6cdd09c730f00001cc5e4883f6b96e4b723fe3c86e17fa62df4f850dc01000063749976a0c2bf6a3328304bfbf707fa611673af73f447dae7f075710700008cd1a7b4e7ed8be20e4e6f16732fe88b59928f4936c51d00000000007df098b6566c55dc0100c0afdba61dcaf8b5b803000000008e6193f6ce72591d0200c068edd2f616cf8b3b0000ba64be0600fde3f31900000000c6e1db9af775750800000000f4d45d92fbea080000605c2647fa39b749fe3cd2cf6278fe95b6e0635adc01000063f121c92ced39fbaa3685221771b027f4c56dccbdced95592ff93f6b9fca13605000046e132ed00d1ff9d36ffe0fc987b41bfacd30e7af95a1d020000000050e435c9ef6907fa6c8b5b000038cc2ced996e57dc0100000000877a4cdbdff152dc0100c0786dd29e39d7d52100001d5b56070000dff1f90c00000000c3b7485b7fe49c2e00000000f8de2ec9c7b8ab170000e8c0e4083fe3437c6121f92dc9ff4a3bf0f03e6d21080000b09fdb240f69cfd55f925c54c650ee26edfb1550c7dc8b6fbea47d3ecfd33eaf0100805ff721c934ede0d0ff9be48fd21afac0dc0bfa6796b6696553dc0100000000704a5f935c2659d56600007004abb467bbe7da0c00000000d8cb2ec9e7d86b050040b7166967a7bdd46600009cc44b9c9f02007db249b2ad8e0000000000dee52eedce1900000000e07b9bb4f350d7c51d0000c048fd8f23fc8c5992df8ef0731887df92fccfbfffff2ebed00200c0afbaa90ea09766499671d8275499c5dc8bff7291e45f7fff2f71b12d0000fc8acbf85ec58fcd62ee057db34e729df6dfe797da1400000000804efd3ff6eeed2cce6bddd6f6b348c07204034530500446114c2982892298288201194819400610c12a2258900164404530ff836e7ec9b6646b4355afcd7d9f80d85c573b41555fdfb4f7ae5186edee2300c06e79ac8eb3ef0d000000c076b8abdee47e150000abf5befa303b0400c09a2daa7fcf0e01005475313b0000000000f0c3968d0e075d5d00000000f065978dbe7b00008095f93ffffbbffffb33bf7f5cfddfe789020000007cc14de3f91b58afe3ac7b010000c02a59f782cd75d4287d368c0100000000d825cbeaacfa3039070000ab775c5d55bf4cce01000000005ff2b13a9d1d0280bdb3a87e9b1d02589b6563dff476720e0080198eaaff373b040050d5abac4f00dbe7acfacfec1000c046fb3fb303c0648b9c43827d70d7387ff43839070000006c9be3eaffce0e01acc5bbc6bc4f000080953af8c9df37a80b00000056ebb714cec3babdc8863d000000ac9a752fd85cb78d610ce7b38300000000003c939bc6baa73bb10000fb61511d56d7736300000000c01f2cabb7b9530500c06add35f64b6f27e7000098e5b6b1160700ccf590f50900000000d8461f1b7d5d8fb38300000000c0067aa85e551793730000007be2e0277ef7acfaf733e500000000beeeac51020aacc759f5afd921000000600f9c65dd0b36d959e382cbdde41c00000000003f6a59bdad8eabfba949000058b7c7ea4df57e761000000000a86e1af7a8ae26e7000060b77dac8e1afba50000fbcc3a1c00cce7f51800000000b6cbb27a579dce0e02000000001beaa6717fef7676100000607f1cfce0ef1d55ff79ce20000000c057fd525dcc0e017be2b8fa9fd921000000604f58f782cd77db382b763e3b0800000000c077baac0e33e80e0060df7da85e5577b38300000000b0b7de37fa4c1e27e7000060772dabb7d5e9ec2000001bc23d020098cfeb31000000006c8fbbc699f78bb9310000000060639da73702000098e0e0077fefe2394300000000ffe8b71482c2aabdc8ba17000000ac9b752fd80e67d5ab46810c00000000c0267ba85e572729f2010060b86d143d7e9c9c0300000080fdf2d0b88bf1617610000076da5d633ff46a720e00804de2bd1100ccb5ac16b3430000000000dfe4ba71fee876720e00000000d844cbea6d6396270000c0da1dfcc0ef9c55ff7ee61c000000c03f3bab0e2767805d7656fd6b7608000000d8436759f7826d705b1d55e7b38300000000007cc1b2b17e7998e1760000fcd56375da287e5c4ece02000000c0eebb6cdcc130c417008055baac8ef3be1300e04bae670700803d76353b0000000000f04dde576f1a7d0c00000000c01fdd357a239c89030000a639f8ce9f3faafeb38a20000000c03ffaa5ba981d0276d471f53fb343000000c09eb2ee05dbe5ac7a55dd4cce0100000000f0e4a671fff56c720e000036df5575983d6f00000000566359bdad4e32c4170080d55956eff2be1300e0ef18120c00f32c66070000000000fed64363d6c087d9410000000060437d6cf4dedf4fce010000ecb983effcf98b558400000000bed96fd5e9ec10b0635e64dd0b00000066fbad312007d80eb7d571f5be31e40a00000000608687ea6d63bdf27e6a120000b6c963f6bc01000000787e37d561753539070000bbedaeb1df7931370600c0c6b34e0700f3781d0600000080cd755d1d35660d00000000007fb46cf4de9fce0e0200005075f01d3f7b56fd7b4539000000806f77d628ab079ec759f5afd921000000803e542f668700becb8746c9cccdec2000000000c0de396fac4f1a660700c08ffa501d5777937300000000b0dd96d5fbc65ad3e3dc280000ecb8cbc6fbcedbc9390000b6c163ce8601c00c37d93303000000804df5be7a93353c00000000f892bbf4de0300001be6e01b7feea8facf2a8300000000dfec97ea627608d811c7d5ffcc0e010000005463ddcb617bd83ef78d75b6778da1ab0000000000ab7453bdacce52820d00c0cfbb6d74aa9ccf0e02000000c0567a1a40f2617610000076dab2718ff724e7e60000bec7c5ec0000b087740902000000c0e679a85ee5dc3b000000007ccdc74677c4fde41c0000007f70f08d3f77b1ca10000000c077fbad3a9d1d0276808b30000000b0597eabdecc0e01fc908beab0ba9e1b0300000000d8510fd5dbea38053e00003cbfb3c6c095bbc93900000000d81ee719400200c0eadd35cecd5dcc8d0100b09516b30300c01eba9a1d0000000000f883ebc6b9f7dbd9410000000060032d1bddf7a7b3830000007cc9c137fccc59f5ef15e700000000bedf59753839036cb3b3ac7b010000c026baa85ecc0e01fc90c7ea4df5ba7a989c0500000000d81de78d026cc3eb000058a5dbeab8fa383907000000009bedae7ad5e82d01008055fad8383b773b3b0800c096ba4dff0900acd343753f3b0400000000f0ff7bdf981bf0383b08000000006ca0bb74df0300001beee01fbe7f58fd670d3900000080eff74bf5617608d8522faad3d921000000802ffa25cfedb0ed168d0b351f27e70000000000b6db75f5b23a4b01360000ebf1d838b7f2ba314019000000003e77deb82f713b3b0800003b6d59bdcd9d7b0080e760983000ac8fd75d00000000d80c77d5abccba0500000080af79ea8eb89f9c030000e06f1dfcc3f72fd61102000000f861ff551dcf0e015be843f5cbec10000000c0579d5687b343003fe5b1f1b7fcaaba999c0500000000d82e0fd5ebea4dca7b00009863d12893fc383907000000009be16980efd9e41c0000ecbe9bc63dfbabc93900007685f75500b03e5e770100000060be8f8df9b6b7937300000000c0267aeabf3f9b9c030000e09b1cfccdf78eabdfd69403000000f87117b303c09639acfe7b7608000000e06ffd9243f9b02b6e1b67d1de57cbb95100000000800db76cac251e568ba9490000a01eabd346b9e4c3e42c00000000cc735e1d65802f0000abf7be7127f771720e00805db248df0900acc33277020100000060a665f5b6d191e0fc1100000000fcd575a33b623139070000c0373bf89bef9dad2b04000000f053fe559dcc0e015be46c7600000000e09bfc7775383b04f06c3e34fea62f27e7000000000036d3c7c61ae287c9390000e0cf168d92c98f937300000000b05e77d5abf4940000b07a4fef3d9d9f0300588dabd90100600f78bd0500000080796e1afd5dd6e900000000e0af96d5bbea4df538390b0000c07739f8cad74faadfd69803000000f83967b303c09638acfe7b7608000000e09b9dce0e003cabc7c6d9b4d78d615a000000000037d5cbc69e80e21e000036d563e33debebea6172160000000056efbc3aaa6e6707010060e77dac8ef3de13006095ae660700803db0981d0000000000f6d4fbc6f923fd5d00000000f057778dee888bc9390000007ec8c157be7eb2ce10000000c04ffb579ee7e15b9ccc0e000000007c9793eac5ec10c0b35b342ee39c57cbb9510000000080491eaad78de2ebfba9490000e0db2dfab4df0d000000c0eeb9ab5e556793730000b0fb968d3374a7d5e3e42c0000bb6e313b0000ec81abd9010000000060cf3c9d7dff303b08000000006ca8f3467fe8fde41c0000003fece00b5f3bae7e5b730e000000e0e79dcd0e005be0747600000000e0bbfc52bd991d025899b3c6c59ccbc9390000000080f55956efaac30c810500603b3d36f6bb5f3586ba00000000b0fd967d1a3e723b390b0000bbef3a67e80000d6e9b1f11e0c00588d9bc6eb2d00000000b01e1f73f61d00000000bee6a1d1177a3639070000c04f3bf8c2d74ed79e02000000780effaa8e6787800df6a6fa657608000000e0bb39cb02bbedbe3aa95e577753930000000000abb4acceabc3ea626a120000781eb78da12ee78df7bb000000006ca79bc63acfd9e41c0000ecbe65f5b6d189f738390b00c0be59cc0e00003bec6a760000000000d8130f8d3e7ff33b00000000e0cb3e36fa236e6707010000780e077ffaf761f55f137200000000cfe3647600d86027b303000000003fe4df8d43fcc06e5b34fed6df3706700100000000bbe3b2b1fe77563dce8d020000cfeeacf17ef766720e00000000becfb27187e1b8ba9f9a0400807d70dd98037135390700c0bef23e0c0056c7eb2c00000000acdec746afc162720e00000000d8440fd5ebea343df80000c00e39f8d3bfdf4c49010000003c97ffae5ecc0e011be845f55fb343000000003fec647600606d3e3406707d9c9c0300000000f87937d5abc63afffdd4240000b05af7d571f5ae5a4e4d02000000c0b7b86edc5df83039070000bb6f59bd6fcc8030f80e00609efbea6e760800d8410fb93b0800000000abb4acde56a7397f04000000005f725d1d558bc9390000009eddc19ffe7d322304000000f0acdecc0e001bc8df050000006c37cff6b05f1e1b4538afaa9bc9590000000080ef7757bdae8eabdbb951000060ad2eaac3ea726e0c00000000bee2a1b197f926c37b010058bd9bc6e0bb0fb383000050d5d5ec0000b083bcbe02000000c0ea5c37fa0bacc301000000c05f2dabb7e98f00000076d8c1679f1f56ff9e9403000000783e6f6607800de4ef02000000b6dbbf1ac37980fd725b1d372ef73ccc8d02000000007c8387ea5d634d7f31370a00004cf3589d54afb3d70d000000b049ceb3970900c07a2c1b67e98eabfba9490000f8dcd5ec0000b083bcbe02000000c0f35b36baf9df34fa0b00000000803fbaae0e73860d0000d871079f7dfe665a0a000000e039fd57f5627608d830c7b303000000003fed787600609aabc6259ff346690e00000000b05996d5fbc63adec5d4240000b039167ddaeb06000000609e9bea557596e1bd0000acded3e0bb8bb9310000f882dbea61760800d821cbc6996900000000e0f93c9d3fba9a9c030000000036d1b27a5bbd497f040000b0070e3efbfccdb414000000c0733b9e1d0036c851f5cbec10000000c04f3b9e1d0098eeac519af3716e0c00000000e077cbeabcb16ef7616e140000d85867d5cbea66720e000000807db3acde35ee24ddce8d0200c01e30f80e00603b5ccd0e00003bc4eb2a000000003c9f879c3f0200000080bf73d9e8c377760d0000d81b079f7dfedbb414000000c0737b333b006c90e3d9010000008067713c3b00b0111eabd3ea65753d390b00000000ecb3f34651cf59caae0100e09fdc37cebebc6d0c8e0100000060b53e36f6332fe6c60000604f5c67f01d00c0b658cc0e00003b64313b0000000000ec888fd551ce1f01000000c0973c54afab93f4e10300007be6e0f78fc7334300000000cfee687600d820c7b30300000000cfe297ac7b019fdc576f1a17826ee6460100000080bd7259bdacce52d4030000dfebaa71fee57c7610000000801d75d7b867709afd4c000056ef69f0dd9bbcff0400d81657d572760800d81157b30300000000c0967b3a7fe4fc3b000000007cd9c74687e762720e000080290e7eff783c3304000000f0ecfe5dbd981d0236c4d1ec00000000c0b3f19c0ffcd9a271feed5da3680700000000588dcbea657552dd4f4d020000dbedb13a6bbcbfbe991b0500000060672cabf7193c0200c0fa187c0700b0bd16b30300c00eb8699c8b06000000007ecc797598bd2b00000000f892bbea55759ab36a0000c01e3bf8fde3d1d414000000c02a78de87e15fb30300000000cfe670760060635d34fe8f78df183c0b000000003c8fcbea657552dd4f4d020000bbe5be3aaede560f5393000000006cb78f8dfb041f26e70000603f187c0700b0fdae660700801de0f514000000007ecc4de3fcd1d9e41c00000000b08996d5797554dd4ece02000030ddc1ef1f8fa6a60000000056e1787600d800c7b30300000000cfea78760060e37d680c9e3d6f5c2202000000007ecc53c9f549753f35090000ecb6ab46efcbf9ec20000000005be6694ff3b47a9c9c050080ddb7acde67f01d00c02eb89a1d00007680d75300000000f83e4fe78f8e73fe0800000000bee4a6717fef6c720e0000808d71f0fbc77f4d4d01000000acc28bd90100000000006082c7c6e5a1c3ea726a1200000000d83e37d5eb945c0300c03a3ded73bfacaee74601000000d8780fd5bbec690200b03ed78dc1771f66070100e0593c36ee4e00003fe6a1ba9f1d0200000000b6c875a333dff92300000000f8ab65f5b6d121713f35090000c0863968149e00000000bbc7333f8c8302000000c0eef86d760060ab3c5627d5cbea726e1400000000d87837d5ebc6b9bbc5d4240000b0bfeeab378df7e60f73a3000000006c9c6575dee8d4b9981b0500803df1d0d8bb7b93c1770000bbe66a760000d8625e4701000000e0db7c7efee871721600000000d8441fabc39c4b030000f8a283eac5ec10000000c04a78e60700000000803114eca47a59dd4c4d02000000009be7a651707d5c2da6260100009e2c1a259aefabe5d424000000009be1ba3aaace32b8170080d55b56e78d3dbbc5d4240000ac8a01c700f0e3bc8e02000000c03f73fe0800bb983ff20000200049444154000000beeeae7a559da643020000e0ab0e1a870f00000080ddf3efd9016003bc981d0000000000d818f7d571f5baba999a0400000000e6bb69ac951da7e01a000036d587462fccc7c939000000006679dad77cd3b813000000ab765d1d556793730000b05af78da1c700c0f759e63e2200000000fc9d9bea65ce1f01000000c0972cabf78d3b7cb793b30000006cbc83c6a00200000000d84547b30300000000cfee78760060eb2d1aff97bc6e14f900000000c03eb9ac5e35d6c8165393000000dfe2b13a6d0ca9b99e9c05000000605d1eaa77d9d70400607d1e1af74edf54f773a30000b0268bd90100600b5dcd0e00000000001beaa17adb38037f3f3509000000006ca6cbeab0fa3039070000c0d638981d000000000000000000002658348a7c5e5737539300000000c0ea5d562fab93ea766e140000e007dc576f1a7bdc7773a300000000acccb23aaf8eaa8bb9510000d8134fef410f1bf74e0100d81f17b30300c016ba9a1d000000000036cce767e0ad9f01000000c05fdd347a344faac7b951000000b6cbc1ec0000000000000000000030d1a23a6e5c4eba999a04000000009edf65f5b251cc733f35090000f01c168de135efaa87b951000000009ed56575589d65e8080000ebf1f97b500000f6cf6db59c1d0200b6cc62760000000000d820d78dbbff6739030f000000007fb66cf4661ee7ec190000c00f39981d0000000058a9e3d9010000000000604b2c1aebeaafab9ba94900000000e0e72cabcbea657552ddcf0c030000acc4456398cd79e31900000000605bddf4696fd3d05e0000d6e1a67a95f7a00000d4d5ec0000b045aeb396020000000055778d2efb37e9f702000000802f39af0e1bbd99000000fca083d90100000000000000000060832caae346f9cfcdd42400000000f07d967d2ae53949b1350000ecbac7eaacf10cf0716a1200000080ef77d338b77f9cbd4d0000d6e3a17adb780f7a3b370a00001be26a760000d8228bd9010000000060b265f5ae3aca7a19000000007cc975f5b2d193f938370a0000c0f63b981d0000000058a9c5ec0000000000f0cc5c2400d665d11842f6ba3118170000000036d543755e1da694070000f6d16375da28eabc9c9c05000000e09f3c3486f61ea71b070080f558f6e98cddd5dc2800006c18ef0f01e0db79dd04000000609f3d9d3fba981b030000000036d25d63dee39bea7e6e14000080dd71303b0000000000acd0627600000000e0d9ddce0e00ec9d456330eeebea666a1200000000f8a387ea5da3d4faac7a9c1906000098eebe3aa95e657f1b000000d83ccb3eed6f5e4c4d0200c03ef9d8a733760000f025d7b30300c016b86b9c5506000000807d7359bd4cc717000000007cc9534ffe5163de23000000cfe8607600000000000000000000d8028beab87a5ddd4c4d02000000c0bebb6914f21c561753930000009be836fbdb000000c0e65856e7d9df040060bd2eab97d569f538390b00009bed6a760000d8028bd9010000000060cd6e1af7f54faafba9490000000060f33cf5481ca54702000060650e1a4307000000006017290c06000080ddb29c1d00a051a47ddc280eba9e9a04000000807d73dd58973a4e210f0000f0cf168de787b7d5c3d424000000c03e7a1a3872589da503040080f5b8699cb33ba9eea7260100605b5ccd0e00005be062760000000000589387c6fdfce3c67d7d00000000e08f2ed323010000b0160779f0020000805d75373b006c80dbd9010000008067e5591fd8248bea4df5b271190a0000000056e5b2b10ef52685d60000c0f7bb6a147cbe6b0ccc0100000058b5cbea2803470000589fbbea75759c737600007c9fc7747903c0df59a6031000000080ddb76cdcc73f6cdccf0700000000fee8bad1957f921e09000080b538a8ee67870000000056c2a62bf83b000000805de3591fd844f78dcb502f1b437601000000e0392cabf3ead7c6fad3fdcc300000c04eb8680ccc79573d4c4d02000000ecaacb3e0d1cb99f9a0400807df1d0d8ff3aaa1673a30000b0c52e660700800d76353b0000000000acd053d7d761f68c00000000e04b6eaad7d59bf448000000acd5411ec40000006057ddce0e001bc0df01000000ec16cffac026bb6f0cd9fdb55136b49c190600000080adf550bd6b94599f558f33c30000003be9a2f1cc616f1b000000782e97d5cbc699fafba9490000d8179f9fb5bb989a0400805db0981d000036d8d5ec0000000000b022e7e9fa0200000080afb9ab5e57c7396f0d000030c5c1ef1fefa6a60000000056e17e7600d810d6be0000006077dcce0e00f00d1e1b654387d5fbc6103400000000f827378d229ec3ea2265d60000c0ea9d359e41ceabe5d424000000c0b6baac5e5627e9ba0100603d968dbb9b878db3760000f01c6ed30f02005fb3981d00000000009ed9d339f8b3747d01000000c09f3d54efaaa39c1f03000098eae0f78ff73343000000002b713b3b006c087f0b000000b03b3ce703dbe4b1fad01882f6aeba9b9a06000000804df554647d9c221e000060fd1e1b83750eabf36a39330c000000b0359ef6394fd2690b00c07a2c1bfb59878dbb9b0000f0dcae660700800d74dd386f0c00000000bbc0397800000000f8ba87c6bcc5c3ea626a12000000aa3af8fde3edd414000000c02a2c6607800d61ed0b00000076c3438a3c80ed75511d55afab9bb95100000000d8000fd579f56b8aac010080cdf0589d35ca42cfabe5cc30000000c0c632b0170080755b36f6af0e1bfb598f33c30000b0d3ae660700800db4981d00000000009e8173f000000000f0750fd5bbc61dbe8ba949000000f88383df3f2e6686000000009eddddec00b04116b30300000000cfe27676008067b0a88e1b45459753930000000030c34d9f4a78ceaac79961000000bee0b1f1bc72589d57cb9961000000808d61602f0000ebb66cec571de6bc1d0000ebb1c8792900f8b3abd90100000000e02738070f000000005ff7d0a7cefc8ba949000000f8a283df3f2e6686000000009edd627600d820b7297f030000805da0c016d825f78dc2a25f1b03d4ac6102000000ecb6cbea55759c121e0000603b3c56678d3251fbda000000b0bf0cec050060dd1eaaf78d7daab3c6be150000ac8b8e2300f8e42e7b84000000006c27e7e001000000e0eb1eaa778d3b7c175393000000f0b70e3efbfc665a0a000000e0b92d6607800da3fc0d000000b6df6276008015786c0c507bd1b88cf530350d00000000cfe9a17a5ffdda28b1be9d9a060000e0c73ced6b1f665f1b000000f68981bd0000acdbe743ef3e34f6a9000060dd16b30300c00659cc0e0000000000dfc9397800000000f8bacfeff05d4c4d020000c03739f8ecf3ab692900000080e7b6981d00368cb52f000000d86e7729f90076df45e352d6ebea7a6a12000000007ec64df5b6b1d6f3a17a9c9a060000e0793cf6695ffb5da37c14000000d83d06f60200b06e86de0100b049741803c02717b30300000000c037720e1e00000000bece1d3e0000802d75f0d9e72ec0020000c06eb8ceb073f8b3c5ec00000000c04fb9981d00608d16d59b46d9d1c76a39350d00000000df62d958cb79591de7be260000b0db2e1ae5a3ef1a65a4000000c0765b56e719d80b00c07add546f33f40e0080cdf2d8e8f706807db7ac6e67870000000080bff179efd749cec103000000c09fdd343a230f73870f0000602b1d7cf6f97d75372907000000f07c0c3d87bf7aac2e6787000000007e98352f601fdd57a78d8b5befaa87996100000000f8a2bbc6dacd8bc65acefdd434000000eb75d1d8d37edb282705000000b6cbb23a6f3cdf9f65bf130080f5b8ae5e57c7b9430e00c0665acc0e00001bc0ba0d000000009beaf373f07abf00000000e0af6efa7487ef626a120000007ecac19ffe7d312304000000f0ac147ac097f9db00000080ed7497e20f60bf3d36cef61d362e745dcf0c0300000040cbeab27a551de55e260000c055a39cf475a3ac14000000d86c0fd5bbc619f5b3c69975000058b5cbea65f5a65acc8d0200007f4b873100783d0400000060f338070f000000007fefb2d109799c3b7c0000003be1e04fff76e107000000b6db652e43c0d75c352e0f01000000dbe5c3ec00001b64d118cef6b2fa582da7a601000000d82f777d2aaf3ea96e6786010000d8408b4659e9cbc63d3700000060b37c3eb0f7221d350000acdeb23aaf7e6d9cbbbb9f19060000bed17de30e0900ecb3c5ec0000000000f0bbcfbbbf2e720e1e000000003eb76c743fbe6cdce15bcc0c030000c0f33af8d3bfefabeb093900000080e771313b006cb88bd90100000080efb2acae668700d840f7d569f5a2519c64f005000000c06a3c15efbcaa8e525e0d0000f02dee1be5a52fab8f8d672b000000609e9bea759f06f60200c0aadd35ee3ebea8ce72ee0e0080eda3f308807d769df51c00000000e6bb6e9c837feafe02000000003e79a8ce1b3d12278d0e4800000076ccc117bef661ed2900000080e7f0502d6687800d67ed0b000000b6cb8714d802fc938b4681d2abeab25a4e4d03000000b01beeaa777d2adeb99d19060000604bdd57a78d67abf3c6fd37000000607d2e1be7cc8fd3490300c07a5c56af1b771e2fe6460100809f72353b00004cb4981d0000000080bdb56c9c417a59bdc95a1500000000fcd9e7fdf96799f50a0000b0d30ebef0b545e3e110000000d82e67b303c016786c5c2c02000000b6c3c5ec00005be4b63a695c0a7b97738000000000df6b597dac5e55478d356ac53b0000003fefb171f7edb0b19ffd30330c000000ecb8a77dcf978df3e5b753d30000b00f96d5799fde832e668601008067729b734e00ecafabd90100000000d83b0fd5fbc67df493ea7e621600000000d84497d5eb3ef5e7030000b0070ebef2f50f6b4d01000000fcac876cf4c2b73a9b1d00000000f82697290701f8118f8d3d83a3c665b1cba9690000000036df4df5ae7a519d36868c020000b01a178dc141af1bcf63000000c0f3f87c60ef69eee40000b07a9f9fbd3bcb7b50000076cf6276000098e02eeb3c00000000accf4df5b6710efe43a35f1d000000001896d579f5b23ac9f966000080bd73f095af5f34ca0701000080ed70363b006c91fbea727608000000e06f2db3e605f01c168d4b63bf3606c1ddcd0c03000000b0411efa54ba73dcb853090000c0fa2c1acf632f73cf070000007ec64de3acf86106f60200b07acbc6deceab9cbd030060f75dcd0e0000132c66070000000060e72dab8f7deaffb22703000000007ff4d423f1a231d3f57e6618000000e639f89bef9dae2d05000000f0331e52de0adfebb4710109000000d84c1f72d101e0393d36f6128e1a83e12eb3460a000000eca7cbea757598d21d0000804d705f9d54bf56e78dbb72000000c03fbb6c9c0d3f4eef0c0000ab77d7187877d8d8dbb99d19060000d6e42add1c00ec9f8bd90100000000d8599f9f413a4dff17000000007c6e991e09000000fee4e06fbe7755ddac2b08000000f0c34e6707802df4587d981d02000000f8a2659edb0156e9b63120eeb051d67437330c000000c01a3c9556ffda581759cc0c030000c0173d56677ddacbd679030000007fb5acceab978dbdcfdba9690000d8759f0fbc3b6a0cbc7b9c190800002658cc0e00006bb4cc1e2400000000cfcb192400000000f87b4f1dfa87e991000000e04f0efee1fba76b4901000000fca89bea6a7608d85267d5c3ec10000000c05f9ca63804601d1e1b654d478d01c61f1b654e00000000bbe0a13a6fac7b28ad060000d82e17d5716310d1e5d424000000b0199e068ebc687465dccf0c0300c0cebbe9d3fbcf930cbc030060bfe9fe06609f78dd03000000e0b93c9d813fcc192400000000f8b365a367f1553af4010000f81b07fff0fddbc6507a00000060339dcc0e005bee647600000000e00f6e1a17200058affbeab43150ee6d753d350d000000c08f792adc79dd28ad3e6bac7b000000b09d6e1b777f7eadceab87a96900000060fd9ef63f9f068e0000c0aa3c34f6635e56c779ff0900004fae6607008035f2ba07000000c0cf58561fab577d3a03ff383310000000006c989bea5da343ffa4d1b7080000005f75f00d3f7396027f000000d844e719ac0e3f6bd1b8ac04000000ccb76c5c840060aeabea4df56bf5beba9b1b07000000e01f5d370a775e34d6991733c3000000f0ec1e1bfd37878de7bf9b996100000060c51e1a9d32bf66ff130080d55a5697d5abc63ecc59ba0d0100e0cf1e735e0980fdb1981d0000000080ad745dbd6d74809d56b773e300000000c04679ea9078591d57178d33ca000000f08f0ebee1671e1ba585000000c0e6b86b94bc023fefacf13705000000cc759aa146009be4b1fa501d3506d07d6c0ca403000000d80477d5fbead7ea4da37007000080dd77d1285e7d595d661f1b000080dd71d318da7bd8e8c1307004008055b96ebcf77cd1983f703b350d00006cbeabd90100600daeb34709000000c0b7fb730798fd1400000000f864d9e84a7cdda70e89fb7971000000d85607dff8738bea7c8539000000806fb76c5cb4009ec763a340d9c04a00000098e7b2ba981d0280afbaad4e1b03e9de36cac601000000d6eda171cff16575547dc840340000f8ffd8bbdbe3b68e364dc037aafc9fd808888980d808888d409c084c47604d04e33782d14460be110c14810f231820820122582082de1f7db000694a2245808d8febaa7aaa0f3e44dd659724a09f3edd70a916a9f7038d92fc967ac8110000009c9a7592ff4ced814ee2d05e00000ee76b6a4fe57fa5ee63e8b3270000bc9ecfcf005c02ffde01000000f023cbd4f5efff3bf6000300000080976ceee31ba5ee95d835cc020000c019f8e50deffd237543c3db8324010000005eeb73ea017bc0fecc52ff6cfdd93a080000005ca079eaf772004ec3b4af61ea41759f93dc344d040000009cb365ea5cc443ea3a2f000000d8b54afdcef8907ad0d1e7d45ef655bb48000000f0438fd97e9f05008043d97cee9ca6f6540000809fb348bdbfe5ba710e0038a4ae7500000000008ed23adb3dc0baa64900000000e038cdb3dd3fc27d7c000000ecd52f6f7cff5dea4db136e90700008036fe330e1f804379483249f26bdb180000007051d649eee366098053b4caf6a6b751eadfe7f771e006000000f07e9b0dab3705000000af314bed5b0f53f7c8f9237ad80000001c8f75eadaeb2fa9fbba0200c0217c4dd2a5aebd5b344d020000e7659ae4f7d62100e040e6319704000000c0963dc000000000e0fbe6a9fb47b88f0f00008083fae58def5f2599a46e3e73b5ef30000000c0777d4df2b975083873f74946496edbc6000000808b3149326b1d0280775b24f9a3af71ea5ceb7dac33040000005ecf86d5000000eccb2a7543d787d41ef6e72477d1c3060000a08dc76cbfa70200c0217ccd76edddaa7116000038570f497e6f1d02000ec43d9d00000000d8030c00000000be6f9ebaa6789a7a661f0000001cdc2f3ff16b66a907cbffd77ea300000000df314ffd3e0e1cde5d922ec94de31c00000070ee7e4b5d8702c0799925f9dcd7dd4e5db50c050000001cadafa99bed3c34ce010000c079daec93334ced5d7f8e7b8600000038bc756a0ff44b1c3c0200c0fead53d7dd75fdb86a9a0600002ec32cf5b3b8bd33003847d3d601000000006862b30e695300000000c053f3d4bd23a6b177040000000dfcf293bf6e9ae4b7247fee310b000000f0b27992496c0e0b1f6595fa67ae8b0329010000e0507e4bbd990280f3b6bbf1d47d92bb249f9aa5010000008ec5d76ce70dac8d040000e023ac52d72b3d2419a7f6b0ef935cb50a040000c059fa9aede1230000b04fcbd4cf995d7cde04008056a6497e6d1d0200f66c9964d63a04000000001fc63a2400000000f8beafd9ce9f2d9a26010000e0e2fdf28e5ffbd08f7fee2107000000f0b27992491cd00e1f6d95fa67af4b72d334090000009c9fdfb25d7702c0e578e86b98e4aeaf4f0df3000000001feb6bea663bd35813090000405bb3249ffbba8ffe35000000efb34cf2250e1f010060ff1eb35d77b7681b05000048fd6cfe6beb1000b0675deb00000000001cdc3cdb7548b3c65900000000e0d8ac53e7cebad8431f00008023f3cb3b7ffd433ffef9ce9f03000000fcdd3cc9249accd0ca2af5cf6097e4a66912000000381fbf65bbde0480cbb44afdb7e021c930c95d5f9fda45020000000ee46bb69b565b0b090000c0317ae86b94e4beafeb566100000038199b03481e52f7a40000807d58667bc85d17ebee0000e0d84c5b07008003f0ef1b0000c0ebcd5b07007883cdfe5f5d9245d32400000000707c96d9ee9fdfb58d02000000dff6cb1e7ec6433f7e4972b5879f07000000d41bcd26b1712cb4b64afdb3384d72db360a0000009cb47592cfd9ae330180a4cec13ef4354c72d7d7a77691000000807758e7e9863bd640020000702a1649fee86b92e43eb57f6d2f1d000000763da6ae7d9e463f1400382d5deca1758cd6a9ff6fbad4cf988b8659000080d7f91a7b6200705ea6ad030000009c106b478163b6cc76ef2f733e00000000f0775fe35e3e0000004ecc2f7bfa390f4966a95f8c6dbc0f000000eff3cf249fe366333816abd483271f92fcda34090000009ca675ea77eb59e31c001cb755ea3cec43926192bbbe1cdc01000000c76d9dbad9cea6000000e0d4757de95d03000090d4837cbfc421240000ecc763ea67cb2eeebd06008053348db544009c8fafad03001ca145eb0000c05173a620704cd6a96b90366b91160db300000000c0319ae7e91c1a0000009c9c5ff6f8b3664946a95f926ff6f873010000e092fc5beaa105c0f1b94f9dfbfab36d0c00000038298f49ee62632500de6695e4a1af61eabf25777188070000001c8b65b61bee4cdb460100008083d9ed5d8f52fbd6f7b1af0e0000c02558a7f642bfa4eeb50a0070eaba24ffde3ac4055aa7feb79ff563d7300b0000b01f5deb0000b047ee0f05f83beb440080eff1590168ed31db7dbffc9d04000000004f2db3bd8f6f1ae7a7020000700606a59443fcdc2f497e3fc40f0600008033b54e3dc0ae6b9c03f8b171eac1930e9b04000080effb47923f5a8700e0ac0c53fb2977493e35ce02000000976699bae1ce436c5c0d0000c0651b27b94fed5d5fb78d020000c09e7d4ded894e1be70000d8b76192ffdb3ac40558a6aeafebfab2d60e0000ced32cf62506e03cfc4b9245eb1000476895e4aa750800e028fd9f386310ba24b7ad435c90c76cd722752d8300000000f02a93247fb50e714196793a7fb66817050000000e63504a39d4cf9ea46ebc68a37d000000f8beafa907d6ad1ae7005e6f98e48f24bf37ce01000000c768993adfd5b58d01c0991b26b9eb6b121bfd020000c021cc53ef119cc6c63b000000f092bb9dd2b7060000384d8fd9f645edfd02009cb369924fad439c99c724b3d47baa67b1ce0e00002ec5e724ffd13a0400bcd33cc9b875088023a5a70200bc649dba172e5cba2ec96deb10676a9ded5aa44d01000000705a2649fe6a1de28ccdf3740e6dd1300b0000007c884129e5903f7f98e48f24bf1ff2370100008013b54e729f7af339709a2649be24b9699c030000008ec53f52bf2b3bb013808f76b753578db3000000c029fb9abaae711a73bd000000f016f7a93d6b07d50200001cbf799287d4bee8a2691200808f739fe4cfd6214ed8e670bb4d754dd30000002d8d92fc4feb1000f04eff96ba6720007f7797e4bf5a8700008ece3f53d75ec0a5eb92dcb60e712696a9ff3d673b2300000000a76d92e4afd621cec8639ecea1d9331f0000808b3328a57cc4ef3349f2472c0c020000808d7fa46ecaa1510de7e173eafcd755e31c000000d0ca63eae6498bb6310020495db378d7d775db2800000070f4369b584ffb02000000de67986dcffa53e32c0000006c2d933cf4b568190400a09161eae720fb64fdd863ea7fab59b687db010000ec9ac6da20004ed73ac928cec900f89e45ec6107003cf52fb1fe1492ba8ee6b6758813b4ce761dd266343703000000707e2649fe6a1de244cdf3f47ebe59d334000000702406a5948ffcfdee93fc118be9010000b85cff4cfd6ebc681b0338806192cf7dd9a01b0000804bf1983adfd5b58d0100df344ebd31f33ec94dd324000000703ce6a907654e63131e00000038a4616abffa3e7ad60000002d2c53fba20fd11b050048ea3dc1ffde3ac41159a6ee09d8a57e5e5cc4e7460000e075c649febb750800f849ff489d2b04e0dbee93fcd93a04007034fe99faf900a8eb6c6e5b873872ebd435485d3f6ed6250100000070fe2649fe6a1de204ccb39d3bdbcca5010000002f1894525afcbef7a9371f5db7f8cd010000a0817fa67e175eb48d017c806192cf7d5d35ce0200000087f2983adfd5b58d01006f324abd49f32ec9a7a649000000e063ad53e773a7fdb86898050000002ed528b55f7d9fe4a66912000080f3b64ced8d3ea41e560200c053b35cde3cf53c75dddcac1f17718f340000f07e5f92fcde3a0400bcd132c938c9aa75108013d025b96d1d0200686e9dfa3d6ad138071c8b2e3e27ef5aa6ae49daad45cb4000000000343549f257eb1047e631db79b359dcd7070000006f3228a5b4fcfd27a99beaffda32040000001cc832f5308387b819042ed130f550c9cfb9bccdba010000384febd4033cbfc4019e009c87bbbe2649aedb4601000080bd5ba6cee976fd080000001c8f516abffa3eee3b020000d8874d7ff421ee790100f89171eabab2abc639f6edb11fbb24ab6c0fb55bb4890300005c8859acff01e074ac53f75ad25305789d51eadf99e7d6530100dee65f63ef1ed8354df2a975880696a9eb90ba6cd72475adc20000000070b4c649febb7588461ef374ee6c730d000000bcc3a094d23a43920c5337d4bf8f9b6a010000386debd49b63360590d4453ff7a9074b5eb78d020000006ff635dbf9ae55e32c007028e3d439dcbb58c7080000c0e9fa9aba31cf3436e60100008053314aed55df47bf1a0000e02d96a9bdd18724b3b65100004ece3875add955e31cafb5cef6335ff76c9cc5fdcf0000403bc3d4ef27d6fd0070ecd64926d15b0578ab53eba90000fbf55bea3a5560eb7392ff681de2801e53d722cdb25d97d4b50c04000000c0c959e57c7bcccbd4bdef67cfc645ab4000000070ee06a594d6199e1ba66eaa3fe9ebba6518000000788579b607be774d9300a76094a7f35fe7ba1008000080d3b599efea52e7bc00e0d28c52e76f3773b9e6710100003856cb6cd72e9acf05000080d3374aed55df27b9699a040000e0386d7aa40fa987990000f0f3c649be24b96df4fbafb3fd4cb7fac6f5ac7f0c000070cc8649fe48f27be31c00f02df3d4b5a97aac003f6794ba56a5554f0500f878cbd4ef515ddb1870944649fea775887798a7ae5bf3d4d50000148949444154475af4b5599f649d1200000000fbf290e4d7d6217ed2ee3d7f5d9ece9d597b040000000d0c4a29ad33fcc8287523a34d0d63f13d0000006d6c9ade8b7e9cc50d62c0fb6de6bd464926a9f35f0e98040000e023ecce772d52e7ba6c9002007f374972d78fe66f01000068699d3a97db2599a6ceed02000000e76998daabbe4bf2a9711600008096e6a93dd28738d40400e010ee92dca7ee81f5d2bd53f3fcf8dee36f1d40d73d7bec3e660000e09c8d53bf5f8de36c2d00da5ba6cec74d537bad00bcdf24dbcffcf6a30380f3e37b14bcde9724bfb70ef182c77edc5dcbd4f5a3754b000000007c9451ea7cd455e31ccf2db3ddd37e335fb6e8eb5bf707020000008d0d4a29ad33bcc73875b37d0000003824378d00ad4c5a07000000e02c2db2bd010400789b51eadced5d3f1edb8d9e0000009c9f79ea26d8d36c37c3060000002ecb30b54fad570d00005c8a79eae1dfd3b8070600000000000000000000e0984c937c3ae0cf7f7cf6b8dbb9de3d57d419a3000000001ca349ea1cdaa1f68b5be6e93e0c8b9dc7abd479b38dee4019000000800f3028a5b4ce00000000000000000000708a2649eefaf1a66912000000cec53275439f2e7583219b6303000000cfddedd4a13627060000f8685f537ba45d9e1e960200000000000000000000c071b94b327ee57b67f9f65e5adf7b0d000000004ed528750e6df88af7ae52e7c9defa1a00000070e606a594d619000000000000000000004edd30f5a6cf493f5e354d030000c0a95827e976ca4640000000c05b8c93dca7f6a9afdb4601000078937592696a9f741a870e030000000000000000000000000000000000000064504a699d01000000000000000000e0dc8c934c92dc25b96d1b0500008023f398a4db29000000807d18a5f6a8f5a901008063b54c324ded934edb460100000000000000000000000000000000000000383e83524aeb0c00000000000000000000e76e92e4ae1f6f9a26010000e0a3cd93747d4d9b26010000002ec530b547bde9535f354d0300005cb2799287d47ee9ac69120000000000000000000000000000000000000080233728a5b4ce00000000000000000000704986492649eefaf1ba6518000000f66e9ea4dba955c32c00000000c9b6477d173d6a0000e0b0d649a6a9bdd269f44b01000000000000000000000000000000000000005e6d504a699d01000000000000000000e0928d924c76eaba5d140000007ec232c93449d7d7aa6518000000801f1825b94bed4f7f6a9a0400003817f3d45ee9a66f0a00000000000000000000000000000000000000c04f1894525a6700000000000000000000606b9c64b253570db3000000f077f324b3245d5f8b865900000000deeb2eb5377d97e4ba6d140000e044ac537ba5d3e8990200000000000000000000000000000000000000eccda094d23a0300000000000000000000df364e32d9a9ab86590000002ed13c49b753ab8659000000000e6994e42eb537fda969120000e0d86cfaa6d37e040000000000000000000000000000000000000060cf06a594d6190000000000000000000078bd7192c94e5d35cc020000708ee649ba9d5a35cc02000000d0d224c95d3fde344d0200007cb47592696acf741a7d530000000000000000000000000000000000000080831b94525a6700000000000000000000e0e78d934c76eaaa611600008053f498a4db2900000000fe6e98e42edbdef475cb300000c0413c2699a6f64d676da300000000000000000000000000000000000000005c9e4129a5750600000000000000000000f6679464b253d7eda20000001c9d7592aeaf593f02000000f076e36cfbd29f9a260100007ed63cb5673a8dde2900000000000000000000000000000000000000407383524aeb0c000000000000000000001cce28c938c9a4af9b86590000003eda3cc92c49d7d7a26116000000807336d9a9db96410000806f5aa6f64da7fdb86a19060000000000000000000000000000000000000080a706a594d61900000000000000000000f838c324e32493be6e5b86010000d8b3c7245d5fb324ab9661000000002ed85db67de99ba6490000e0722db3ed9f764916eda20000000000000000000000000000000000000000f02383524aeb0c00000000000000000000b4354e32e96b9ce4ba6518000080575a26e992cc7646000000008ecf30db9ef424c94dc32c000070ced6a9bdd34de9a102000000000000000000000000000000000000009c904129a57506000000000000000000008ecb28c938c9a41f6f5b8601000048b24e324bd2f5354bb26a9807000000809f374ced476feaa6611600003865eb6c7ba85d6a1f150000000000000000000000000000000000000080133528a5b4ce00000000000000000000c0f19b2419ef8cd72dc3000000676f9ea44b32db2900000000ced330b517bda99b86590000e0982d537ba75db6fd540000000000000000000000000000000000000000cec4a094d23a0300000000000000000000a7679464dcd724c96dcb300000c0495b26e992ccfaea5a8601000000a0b9616a1f5a3f1a00804bb7e9a56e6ad12e0a0000000000000000000000000000000000000000873628a5b4ce00000000000000000000c07918f735e9c79ba66900008063b44c32ebabebc755cb40000000009c8449b6bde84992ab86590000e050e6a97dd42eb597ba68980500000000000000000000000000000000000000800f3628a5b4ce00000000000000000000c0f99a2419f7354972dd320c0000f0a19649667d75fdb86a190800000080b3b1e941eb45030070ca1e537ba95df45301000000000000000000000000000000000000002edea094d23a0300000000000000000000976398649c64d28fe324d72d030100007bb14c32ebabebc755cb40000000005c94519ef6a26f5b86010080172cb3eda56e460000000000000000000000000000000000000000f8ff06a594d61900000000000000000000b86cc324e324937e1c27b96e19080000f8ae6592595f5d3fae5a060200000080174cf2b417ad0f0d00c0477accd39eeaa2651800000000000000000000000000000000000000008edfa094d23a03000000000000000000003c374c324e32e9c751929b86790000e052cd93cc76aa6b9a06000000007ede284ffbd0b72dc30000705696a9bd547d5500000000000000000000000000000000000000007edaa094d23a0300000000000000000000bcd624c978a76e9aa6010080f3b14e327ba100000000e09c8df3b40fad070d00c08f6c7aab5d5fb324ab86790000000000000000000000000000000000000000381383524aeb0c00000000000000000000f01ee317eaaa69220000386ef3248b24b3245d7fbd689606000000008ecba4af4dfff9ba651800009a7bccb6b73a8bde2a0000000000000000000000000000000000000000073228a5b4ce0000000000000000000000fb36ea6b9264dc5fdf344b0300006dac93cc927449167d75cdd200000000c0691aa6f69d27fd384e72dd3210000007f398da63dd2d0000000000000000000000000000000000000000f81083524aeb0c00000000000000000000f05126494649c63b75d5300f0000eccb63924592d94ead5a06020000008033364ced374fb2ed3d5fb70c0400c09b3de6697f75d6360e0000000000000000000000000000000000000000976e504a699d01000000000000000000005a1a261927992419f575db2e0e00007cd76392455fddce3500000000d0d6f3def338c94dc33c000054eb24b3170a00000000000000000000000000000000000000008ecaa094d23a03000000000000000000001ca3515f939debdb56610000b8388f49167d753bd700000000c069992419a7f69cc7d177060038a465b63dd6595f8b76710000000000000000000000000000000000000000e0f506a594d61900000000000000000000e0948cfa9aec5cdfb60a0300c0495b2799f5b54ad22559f405000000009caf716aaf799c6deff9ba5d1c00809334cfb6dfbadb77050000000000000000000000000000000000000080933428a5b4ce0000000000000000000000e760d4d764e77a9ce4aa511e00008ec732c92249d78f8b24b324ab56810000000080a3334ced316f6a94e4b66520008023b1db6f9d65db6f050000000000000000000000000000000000000080b33228a5b4ce0000000000000000000000e76c9864dcd730c924c928c975bb4800001cc03ac92cc9a2afd9ce0800000000f0b3467d4d52fbcea32437cdd200001ccea6e7badb6bed1ae60100000000000000000000000000000000000000800f3528a5b4ce0000000000000000000000976a9c64b4338e92dcb68b0300c02b3c265925992559f435eb9f0300000000f828bbfde6cdf54dc33c00006ff1986dbfb58b9e2b000000000000000000000000000000000000000064504a699d0100000000000000000000786a98649c64d4d7e6faa659220080cbf2d88f5d92455fb324ab367100000000005e6dd35f1e47af1900686b9dda67ddf45abb6cfbaf0000000000000000000000000000000000000000c03383524aeb0c00000000000000000000c0eb8dfa1a27192699f4e34db3440000a7e931c92ac92cc9a2af59ff1c00000000c0b919f535c9d3bef355a33c00c0f958a6f65bbb6c7bb07aaf0000000000000000000000000000000000000000f04683524aeb0c00000000000000000000c07e0c938c938cfa1af7cfddb68b0400d0cc32c962a766495649ba568100000000008ed0f33ef3a47feea6592200e0583da6f65c67d17f050000000000000000000000000000000000000080bd1b94525a6700000000000000000000003ec624c930c978671c25b96e170900e0a7ad93cc92ac9e8d8bbe0000000000789f515f93e83103c0a598a7f65ebb6c7bb09b7e2c0000000000000000000000000000000000000000704083524aeb0c00000000000000000000407ba367354e32ecc7ab46990080cbb64e324bb2fac60800000000403b9b9ef224dbdef228c975bb4800c02bcd53fbae5db6fdd7455f0000000000000000000000000000000000000000402383524aeb0c00000000000000000000c0f11b2719be308e925cb78b05009cb06592c54ead92cc764600000000004ed3f3bef2a47ffeb6552000b8408ff97b0f76d1170000000000000000000000000000000000000000708406a594d6190000000000000000000080d3377a56c324e37ebc6994090068679d64d65f77fd384bb2da190100000000b83cbbbde4719ef699af5b8502801334cfd3feeb66ec1a66020000000000000000000000000000000000000000de61504a699d0100000000000000000000b80c937e1c27192619edd4758b4000c04f592799f5d75d3fce92ac922cfa0200000000809f31fa4ee92b03704996d9f65f5f2a0000000000000000000000000000000000000000e0cc0c4a29ad3300000000000000000000006c4cfa719c649864d4d730c94d9344007059e649567dcdfae7ba7e5cf4050000000000ad8cb2ed218f77c624b96d1309007eca633fceb2edcfee8e0000000000000000000000000000000000000000c0851994525a670000000000000000000000788b7192615fe3feb9493f8e925c7f7c2400387af324abbe66fd73b3179e0300000000805337e9c74d6f79d4d730c94d9344005c9a4d7f76d1d76e4fb66b92080000000000000000000000000000000000000000387a83524aeb0c00000000000000000000008730e9c7515f49324e32ecebe6c31301c07ead93ccfaeb455f49d2f5e36ae7750000000000606bd28fbb3de471ffdc6d8b40009c8cc77e9ca5f66477fbb25d8b400000000000000000000000000000000000000000c0791894525a6700000000000000000000006869d457928c930cfbeb493f0e93dc7c6822002ed932c9a2bf9e2559bd70dd7d6c240000000000b848a36c7bc993179ebbfdc830001cdc633fae52fbb3c9b637bbc8b68f0b0000000000000000000000000000000000000000701083524aeb0c0000000000000000000000a762d4d78faeaf3f2a1000476f9964d15f2f5e710d00000000009c966192717f3dee1f27c964e7f59b0fce0440b5dbaf9d2559f5d75d3f2ea2570b00000000000000000000000000000000000000001c894129a5750600000000000000000000807335eaebf9f530c978e77db71f15088077592659f4d7ab24b39dd7ba9deb59ff3a0000000000c0ae515eee218f53fbc89bebab0fcc04706a1e77aebb17ae9ff7720100000000000000000000000000000000000000004ec2a094d23a0300000000000000000000005be324c3fe7ad83ffed66b371f980be09ccc93acfaeb5592d9ce6b8bbe36ba0f49040000000000f077bb3de2515fcfaf93e4f6a30201ecd932dbfeecf3de6df78d6b000000000000000000000000000000000000000080b33428a5b4ce0000000000000000000000c0fb8d930c771e4f9ebdfefcf1ed21c3001cd832c962e7f1e28d8f010000000000ced56eef78d83f7ee9b544df18d89f7592d9cee35992557fbdface6b000000000000000000000000000000000000000000f406a594d6190000000000000000000000686ff2ecf138c970e7f1b07feef97bae0e9809383fcb248b67cfcd92ac761eaffae7bef71e000000000000f6eb794f78d4d7b71e0f93dc1c3813f0b11e9f3deedef818000000000000000000000000000000000000000080771894525a670000000000000000000000e07c4c9e3d1e2619bfe27d49324a72bddf38c03b2c932c5e787e9664f5ecb9c50bef5df5ef050000000000e0328c537bc41b2ff58b477d3d7f4eaf187ece4b7dddc50bcf75af780f0000000000000000000000000000000000000000000d0d4a29ad330000000000000000000000c0f78c930cdff0fcb07fed5b6ef7110a1a7afcce6b8bbe5e324bb27ae3af0100000000008016bed5f71df5f5dae7133d62dafb568f7791977bb5df7afe5b3d5f000000000000000000000000000000000000000000cec0a094d23a0300000000000000000000001c8b6192f10fde33eedff723af7ddfc628c9f51bdecfe13cbef1fd8bbe5ea3dbd37b00000000000080f7fb515ff7357ddfd7f49977ddbee1bdfc9c655edfc35d2599bde27ddd3b5f07000000000000000000000000000000000000000080ef1a94525a67000000000000000000000000f663d4d7a55af40500000000f0ffda9d831a0060100860270129f87f4dda5c40425a050500b8a892f47662c8db0e000000000000000000000000000000000000000000c0a40f0759978044145a810000000049454e44ae426082, now(), NULL);
INSERT INTO `phppos_app_files` (`file_id`, `file_name`, `file_data`, `timestamp`, `expires`) VALUES
(2, 'Logo_SUMIT.png', 0x89504e470d0a1a0a0000000d4948445200000133000000d508060000003b321775000000017352474200aece1ce90000200049444154785eecbd055854e9fb3e2e1d8280a0ab28baa8d8ddb5e6aaabab182baea022281222dd1202d221ad8884d8aeddee1a2bbad6626317228a0dd23530ffff3d3b8fbff9f095199a01ceb92eae81e19c379ef77deff3f423d28ab9180a30146028d00c2820d20ce6c04c81a10043018602ad183063360143018602cd82020c98358b656426c15080a1000366cc1ea8130aa4a6a62adebd7b77c0e9d3a7679f3f7f7efaab57af34cacaca246465650bba75ebf664d0a041b7860d1b963c7af4e8cba3468d7a5a279d328d3014e0a1000366cc76a83105d86cb6e8ab57afda1c387060516262e2aafbf7ef0f456352525245e5e5e5922c164bbcbcbcbc959898585959599928fed7ad5bb7670b162cd8a5a5a5b59b01b51a939e79f03b1460c08cd91635a2009bcd96b871e346374343c3b88c8c0cf58f1f3f7664b3d922929292add86c76abd2d2524ebbb2b2b2ad8a8b8b5b494b4b03e45a656565e1ffecf1e3c79f9f3f7ffe3e6b6beb04111191921a0d827988a100c399317ba0b6143872e4c8641b1b9b488893e5e5e512684f4c4cac1538b1b2b2324ef3e2e2e2ad582cd6b7ae4445453940871f6969e9027979f9af4b962c890b09097117111129afed9898e75b360518ceac65af7fb567cf66b3252f5fbeacb172e5ca5d6969693d8b8b8ba5015ae0c4c0951147262121d14a444484036e04703232321c7003d8e13b090989626565e54fa6a6a61b5c5d5d43aa3d18e60186020c67c6ec819a52e0cd9b37ca5a5a5a7b93939327b0582c0900162e022e001ac00a3f003470610030defbc0a1818b03f0b1d9ecf21f7ef8e1cddebd7be74d983021454444e4ffb172351d24f35c8ba400c399b5c865afd9a4d96cb6b88b8b8b6d404080a7a8a8a80440a9b0b090234e02ac882bc3df0458a42f233d1aef7d00be9292123c5b3e6ddab4a3a1a1a1abfbf6edfbae66a3639e6ae91460c0aca5ef806accfff8f1e363972d5b76a4acac4ca5a8a8880344e0b0005ef85d5e5ebe554e4e0e07d80054c5c5c56caeee4c845777066300800ff78183e33ec70e0a0a5afddb6fbf6d5557572faac6b0985b190afc271d3074602850150abc7cf9f2077d7dfdadd7ae5dfbb9b8b8581ccf00c8489c24b09292922a68dfbe7d869a9a5a6aa74e9ddec0c279ebd6ad51a9a9a91a6262621c570d706d0464bcc6822e5dba3c090d0d35d2d4d44caaca98987b180af052800133663f08a4c093274f54e2e3e38d838282d6494b4b8be7e7e773f46170bb8098894f7066050505ecf9f3e7ef9a356bd6c15ebd7a3d5757577ff6e1c307c5870f1f0e3979f2e4dc3367ce686667677700f011a0a173001a8c03858585ec69d3a61d0b090931ebdfbfff6b8103636e6028c0430106cc98ed20900270c3b0b2b2da9c9191a101f112c0035d18b82c70585c6b26fbe79f7f3e61696919307bf6ec4b151bbd76ed9a467070b0c3c18307978b888888030c018400356a077a351919997c6b6b6b1f0303830d8cb8297069981b183063f640552800c7d82b57aef40b0e0eb63d7cf8b0767979b9a89c9c1c38b06f7a32b4031d989c9cdcbbbd7bf7ce9e3a75eaadcada7efcf8b1aaa6a6e689a74f9f0e121313130188010849d404b0816bebddbb77cafaf5eb6d870f1f7e9101b4aaac14730fa33363f6005f0a20de32262666b5bfbfbf677979b998828242abececec6f0004253fd787acccc3c3c366c182057bfbf5ebf7beb246333232642f5cb830414747e7449b366dd839393962e0d0600c80fe8daeb2b232b6a6a6e6010f0f0fbb214386bc629689a1405528c0889955a1520bbc27353555fae6cd9b13adacac367dfcf8511de224444b5c100771814b83c572d8b06117b76fdfaea5a1a1f14910a9debf7fdfdadedede6fc78e1d26e2e2e208dae470666ddab4e15842c19d01e0c4c4c4f21d1d1dddf5f5f5e3d5d4d43205b5cbfc9fa1000366cc1ef82e05eedfbfdfc5d4d4744b5252d2748aaf04e8b46edd9ac38d411c0447f5c30f3f648486869a686b6b1fad2a29216ece9e3dfbcf972f5ff6475b5ce5ff37fd19fa836e4e5555352d2424c464e1c285a7454444fe4350e66228500905183063b6c6ffa1406a6a6a87b8b8387d2f2f2f6f19191911000b591f0162e09c0042ad5ab56259595979070505b957878ce0fa2e5cb8304b5f5f7fbfacacac080c01e0f608c410908eefe04c3b63c68ce36e6e6e2e63c78e4da94e1fccbd2d8f020c98b5bc351738e3ddbb776b3a383884a6a7a7ab035800660030fc40f90ffd96888848e9e4c993ff4a4c4cd4535555fd2cb0d10a37c0b8a0adad1dbd67cf1e7d2929291188b170ef00a85168148c03ad5ab52ab5b5b5f5313535f55753532bac6e3fccfd2d87020c98b59cb516385300ccb973e78607050539fcf5d75f73c4c4c43839c828501c0a7f5c009d1f7ffcf165585898f1dcb973cf086cb8921b525252d466cf9e7dfef5ebd73d009014c3c91341c0e108bb77effe10dcd992254b8e31b19b35a576f37f8e01b3e6bfc6559e2194f34141414e6161617648ae5831950fa5f469ddba75be99995990afafef7a111191fff2fdd4f08a898959626e6e1e535454240bb0a434413036403f07e02c2d2d65cf9831e384bfbfbfcde0c183992cb535a475737f8c01b3e6bec2559c1fc28ea2a2a2f47d7d7ddd3f7efca806718f428f006a24fec198f9cb2fbf1cdfb3678f9e828242adad8ce006972d5b16b16fdf3ebde2e26229180320d6e2e215372524240a0c0d0d232c2d2dfdd4d5d5bf56715acc6d2d88020c98b5a0c5e637d573e7ce8df5f7f777ba72e5caf4e2e26249582aa12f23d18f1b105e222323f3392e2e6ee9ecd9b3ffae2bd29d3b776ea4a3a363c8bd7bf746b1582c314a0f04675c001b01a98686c643e8cf0c0d0d77d655df4c3bcd87020c98359fb5acf14cd2d2d294fcfdfd5d1312128c0b0b0b65c872491ef9dc30231800be9a9999057b7979f9d47566d8d0d0d055010101ae1919196ac49591432dfac7584445454b478d1a75292a2aca64d0a041cfeb7a0c352620f3a05050800133a15886c61d447878b8517070b07d5a5a5a3702126e0a9f6f56ccd2d2d292912347fe03eb658f1e3dd2eb7ac4e9e9e9320e0e0e1037979596964a92b8498601dedc670606065131313136b0a8d6f53898f69a2e0518306bba6b57eb9123d9e28d1b377a1b1b1bc73d7cf8702438a1dcdc5c8e78496e12c495292b2ba7252626ea4c9d3af54aad3baea481a4a4a421969696d12929292329dd36191d3036721351515179171e1e6eaca5a505eb26e34c5b5f0bd2c4da65c0ac892d585d0e97cd66cbe8e9e985eedbb74fa7acac4c8ec29528069352fbc0d7cbd9d9d9cdc3c3c3af2efbafd8164ad76dddbaf5373b3bbba8af5fbfb62340a308011804b8a14eacdebd7bdfdab46993fee8d1a31fd6e79898b69b0e0518306b3a6b55e7234d4848586c676717969393d39e4294787dbca08017111129fcf9e79f4f8685859976ebd6ed439d0fa242830846b7b7b70f3b71e2c4fcaf5fbf2a8333a44c1d942a88ebef56b46cd9b23867676717c6ba59dfabd234da67c0ac69ac539d8ff2e2c58b436d6c6ca26edfbe3d9a38a08a3198e0d47af5ea75373030d062d6ac590d92fd15d59fae5cb9d2d3d1d131f4ead5ab53294d10b989708ba0b45252522a61b3d979616161ab972f5fbeb7ce09c434d8e428c08059935bb2da0ff8d3a74ff266666611274f9e9c575050a000ee07ae17d04991a8a9a8a808b788027777f7b54b962cd9ded0992b222222560607073bbd79f3a63b812d6a0540a7073d1abec3b8870f1f7e2d26264677c89021cf6a4f19a685a64c0106cc9af2ead560ec6c365b2c222262456060a04b46464617e27cc0f150a2448871525252b993264dfad3d3d3d3b931bceeefdcb9d3333131517ff3e6cd6b8a8a8ae430559e02c21cff337092a5a5a5a5a6a6a621161616eb98448e35d810cde81106cc9ad1620a9a0abced1f3c78d0514747e7d0bd7bf7865265257063e0ca0068dc6c18ad468c1871d5c1c1c16be1c2852705b55b1fff8731e0ca952b031d1c1c42ae5cb932898aa740a787b122e09dc62c2323931b1d1d0d63c0710d0d8dff92ae31578ba30003662d68c9b989114376eedca92f2e2e2e4eee17642d84a21d97b4b4f467703beeeeee018d1dd81d1b1babe3e6e6e69f9191d199123812a0813bc3ef00ba6eddba3d387cf8f0af7dfbf64d6b414bca4c9587020c98b590ed00f1323c3c5cdfdddddd2f27274799b81b78d643aca4343f2896a4a5a5b5d3d6d6d67fe8d0a18deef600eba6bbbbbbefd6ad5b8d646565a5be7efd2f2c1341e8a81245214f62626265c6c6c6a19696969e1a1a1a392d645999693260d6b2f600b77665f7a54b971e78f6ecd9401225410502328003c44d7575f5c7919191463366ccb8282c54ba76edda40272727ff0b172efc021086b1022231d52040fc28b8b6f2f2f2dca8a8a8e5cb972f3f242c6367c6d170146038b386a375a3f584d84b373737bfddbb77ebb1582c49de2ae464c5c4e0dab66dfbd6dada3ac0d6d636aab6a97dea7ab20909095a0846fff0e143278ad9a43275b0bc12c73676ecd82438d30e1c38f015131d50d7ab20dced316026dceb53ebd141e91f1b1bbb90eb55af44ee0da45047070406704275727272edd3a7cf7b610382f4f4f4b69191916bc2c2c21c8b8a8a6408d0c89d04f301c729292959bc68d1a2c4d0d0503b65656546dcacf50e6a3a0d3060d674d6aada23859e2c2d2dadfde0c18353f2f2f294a1e00707435931e0ea009d132c833d7bf67cb26bd7ae79c3870f7f5ced8e1ae801d42658b870e1a13b77ee8ca62ec15952d402193414151533e1e8bb6ad5aa1d0d3434a61b21a000036642b008f53504889796969651972e5d9afaf9f3e7f6a42383f512f52f010200344545c5af1b366c583d77eedc13c2cccd2030fee8d1a33fe9e8e81c61b158f2d09b612e300490c809ce137f0f1932e47a4848c8ea091326545a94b8bee8ceb4db381460c0ac71e85eefbd822bdbbc79f3125b5bdb88e2e2e236e4e54fb9c120924144131111294605a4d8d858fd76eddae5d6fbc06ad9c1b367cfa4b66cd9e28cdc67d414a5072223060c021037757474b63a3a3a7af6eedd3ba396dd328f37010a3060d60416a92643fcf3cf3fc742617ef7eedd91947e1ae0850bfa25aab2d4a74f9fdb1b366c309f366dda3f35e9a7319e79fefc797b6d6d6d889b6350d6890b5edfac9ce0cef2f2f2c0717ef1f5f5b59c3a75ea3ec699b63156aa61fb64c0ac61e9dd20bd3d79f2a41352602726261a89888888536c233818de34d80a0a0a5f3d3c3cec2d2d2db734c8c0eaa81338ffdebd7b77d0e2c58b8f16151529a3c626e53de396a7e3cc535252923562c4887f2c2d2d03b4b4b44ed551f74c33424a0106cc8474616a3a2c14d83d70e0c08af0f0705bd4bde4152ba157a2fcfa7272727973e6cc39e8e5e565debd7bf7ec9af6d798cf999898844447475b52f1608c8502d0493fc866b34b162d5ab4c3dddddd514343e353638e97e9bb7e29c08059fdd2b7c15b3f74e8d0f4c0c0c0b557af5efd09f18d102d71c0a12ca76cad10c1c68e1d7b312828c872ecd8b1b71b7c9075d4e1c3870f3bae5ebd3af1c2850bd3c8e5044dc36a8b8806583a31672525a577d6d6d67e0b162cd8cc889b75447c216c860133215c949a0e292525a57b6060a0c391234716e6e6e62af17afa436f06ce0c075c414121dbc3c363ada5a5e5c69af6252ccf9d3c7972a28e8ecec19c9c9cb664d4808849cec0f8c4dfa3468dbaece1e1e1f4cb2fbf5c1296b133e3a85b0a306056b7f46cb4d6e01c1b101060121010e0f2e5cb9776102729650ea59be6e62a632f5bb62c61dbb66d86c2e6e55f13e22154cbd1d1d1dddfdfdf0dcf43e48471037386fe0c1c2938b5929292122d2dad1d00b41e3d7a7cac495fcc33c24d0106cc847b7daa3cba83070ffe02f1f2debd7be3cacbcb45a9de241a20ae0c00d7b76fdf9ba1a1a12613274ebcd54cc04cf4e9d3a71d8d8d8de3fffefbefe9bc092679758498bb8a8aca5b0303838ddedede3e55262c736393a10003664d66a92a1fe8cb972f7f58bb76addfbe7dfb96c27a49164be88b28b73f9e565151f9e8efef6fbd72e5ca665744f7f8f1e39357af5e9df0faf5ebae948996b833cad786cf3e7dfaa4444545ad9a3265caf566b0f4cc147828c0805933d80e5e5e5ed648319d9595a5429ef00464e054e0ba20252555347ffefcbdbb76ed324191926630edff9902acb8d1d1d1ce91919156f9f9f9ad293510dd44d5d9dbb469f365dab469279c9d9d9d070d1af4a6b9d1a125cf8701b326befa67cf9e1d63666616fde4c99381f08087a5b2224786290e1e3cf8666262e2924183063d69e253ae74f89999990a0b162c38909c9c3c3e3f3f5f8a5204c108402e2af2f2f2e565656579eeeeee4eb6b6b64dde00d25cd7b226f362c0ac2654139267205edad9d96d3876ecd86f6c365b0aca6e5c54f792122fcacbcb7ff0f4f4743436364e14b66c18754dcabd7bf7ceb1b6b68efaf2e58b1af486945a9bfcebd09f94945479af5ebdee0406065a0953deb6baa6454b6b8f01b326bce2102f8382825cbe7efdaa4441e364b984de0c17b263af5cb972f3c68d1bed4544448a9af074ab3c747b7b7bcff8f8781388dde0cab800c671d1c005ce95c562954e9d3af5cfb8b838bdce9d3b7fa972e3cc8d424b0106cc847669f80f0ce2e5aa55abb6a5a7a7f7a043aaa4a4c41133c1a1214719cab2f5e9d3e74e7474f4aaf1e3c7df68a253adf6b0912d64e1c285271e3e7c38b2a8a8488ca202b8d5d0390eb5e05e592c56aeabababab8383438488884879b53b621e102a0a30602654cb51b5c1202ffefcf9f34fddba756b2cd2e210f7c1eb05afaaaa5a9e999959949898a8bd68d1a2a3556bb9f9dc05b0373030d8919696d60d20865c6754b805d64ecaeda6aaaa9abe6fdfbe59e3c68dbbdf7c66df3267c28059135b77a4f6717676764c484830f9f4e9532728b6e9b082030177969595056f7ff6aa55ab22edececbc5aa293687a7aba4c7c7cbc79484888437676b61205a28356f81d8eb5dcf0aedc9f7ffef9745050d09a9648a726b6fdf90e9701b326b69a7ffffdf7f0254b961ccacfcf6f9f9d9dcdc9e70fce8cd24603dc704d9830e1bc9f9f9f6d538ebdacedd2dcbd7b57ddd1d1310c85500a0b0b2528d5365797c8a119454504040458d8dbdb47d4b64fe6f9c6a30003668d47fb6af58cb09d0f1f3ec8eae9e9edba78f1e2d4828282d6102be143463198d003212d36442777777717e8d4aad54933bc79fffefdb35c5c5c029f3e7dda17159c401f8018800dba335c0881ead8b1e3b3b0b030a3d9b367ffdd0cc9d022a6c48059135966ae78b91662536161616b728ee50d20e71eccbca54b97263a3939b9a8ababff5764b2055f7809383b3bbb4447479b676666aa805ec499c150026083fe2c3b3b9b3d79f2e43f77eedcb94c5555f5730b2659939d3a03664d64e92e5ebc38545b5bfb70767676c7bcbc3c71aaee4d62265784624f9f3efd94878787ebe8d1a36f37779fb2aa2e1dfcf1d6ac59137df2e4c979543cb8a258ced59fe5989a9a06fbfbfb7b56b56de63ee1a1000366c2b316958e2423234365c18205fbefddbb37aca0a0408ed72a074e83388cdebd7ba7383b3b7be8e8e81c6802d36ad0212210dfd7d777ddad5bb74643af08d19c7cf310fa041a22f0be6ddbb61fb66fdfbe60c68c194cec6683ae50ed3b63c0acf634acd716906071fdfaf5b65e5e5ee016a47894d69c101d5cf8949797cf5dbd7a759891915164b76edd3ed4eba09a60e388dddcba75ab654444840dc44d1235899e149c5e5e5ece9e356bd6a1c0c040d37efdfabd6f82536db14366c04cc897fedab56b037ffef9e78bc5c5c50ab05a82a3804804ae02ceb2388c2c168bfdebafbf1ef6f6f6766aceb197b55d2a24afdcb06183fdce9d3b9723fc8b979ee0cca8ba53ebd6adb36c6c6c7cb4b5b52398ccb4b5a57ac33dcf8059c3d1bada3dddbf7fbf8b858545f4b56bd726161717cb02bc70e0a0fc87773ff94e0d1d3a34d9c2c222585757f7a08888c87f019accf55d0aecdebd5b33282868edcd9b3747d14b012f045885c938202a2a5aa6aeaefe6cc3860dc69a9a9a490c299b0605183013d2758267bf878787b5a7a7a7afa8a8a8285558a2d4360032001b9bcdce5db366cd062323a3b0ae5dbb6609e9748466585fbe7c69131313b3323c3cdce6fdfbf79d28953868899705a5dc969090289d3973e6215f5f5f8bbe7dfb7e608c2942b384950e840133215c23e8c90e1c3830cdd1d131fcf5ebd73dc131c0b99352fbe01387105eecb366cd3a626b6b1b3865ca94cb423815a11c524a4a8a5a6868a8636262e22a168b2501d70c7066103bf19220a30a0a09dbdbdb7b18191985aaa9a935bb1c7042b938b518140366b5205e7d3dfaf8f163557b7bfbb0a3478ffe2629292942f9b8288d0d82c8e1fcd9a54b97b4f0f07083b973e75e402ddcfa1a4f736cf7cc9933e351d0e5f5ebd7fd73737345285d121c69a942ba94945469a74e9d5e060505992d58b0e04c73a443739a13036642b69a9f3e7d920f0b0b5b131d1d6df5f9f3e776181e38315c5052c32d0341d3a2a2a2a5f6f6f6eea6a6a6a1aaaaaa0542360da11f0ec4f8909010436767e740369bcdd14752dc26e9230170ad5ab52a1e376edc85f0f0f05503060c4817fa89b5e001326026648b7ff0e0c169d6d6d69b5ebd7ad51d878b9b7b8b2302e1873263cc9933e780a7a7a7ede0c183d3187d4ecd16313d3dbd2db2f45eba7469526666663bb8b850624baaf2042eadacacac0c15a04c4d4d37302f8e9ad1ba219e62c0ac21a85cc53e60bd84a56ddbb66d06e5e5e562e0c20060e0c4a8741c0c01fdfaf54bf1f6f6b69e376fded92a36cddc560905108c3e6fdebc53d04d8a89898980d6d09b51b818195e7af6ecf9d8dbdbdb4e4b4beb38434ce1a400036642b22e88bd3c7dfaf4480303833d6fdfbeed426e17147b49c3949090283437370f303131f15357576f119963eb7b89c2c2c20c2c2c2c62a09f04279c9f9fcf89d744a24b8a129095952d3032320ab7b3b35bcf7067f5bd22356b9f01b39ad1ad5e9e8a8f8f5f686767b7313737b71d38022a628b4f700c1083faf7ef7fe7efbfff9ea0a2a292cf6447ad9b658003edcc9933f79e3e7d7a2e5571a2ecb4e801a23d804d57573706b514181798baa17b5db7c280595d53b416ededd8b163b69595554c5656564752489398033113978686c6bd73e7ce8d61b8835a10bac2a36c365b7afefcf9db4e9c38a1455101e4cf07511f2f93dcdc5cb6959595ff860d1bd689888894d45def4c4b75450106ccea8a9275d0ceb367cfdaa190edc58b177fc521cacecee6b40a8e8cab88863533d7dcdc3cd0dbdbdb9be1ccea80e8ff7f35ab909010d3909010db77efdefd4815ae282b0905f577e8d0e11deed3d6d63e5437bd32add435051830ab6b8ad6b2bdd0d050a3808000b70f1f3ea8824b80673a6f0246e8709494943eefdfbfff972953a6dcac65772dfe71c46bfef6db6fc79e3e7dda87444c4aab442f12049f9b9a9a86383939f930959c8477cb306026646bf3f0e1c3aea1a1a176313131abe5e4e444a08c86c88308002a640b909b376fde1f70e6ecdebdfb17a4ae11b2693489e120b4c9d6d6d66febd6adc6e2e2e22294160862259c67e19e01ba8f1b37ee9cafafafedb871e3ee348989b5d041326026840b7feedcb991ebd6adf3bb72e5ca64de2c19e46b06ee0c00b67efd7abb952b57c674e8d0215f08a721f4438a8c8c5ce1e2e21284baa394d38cea29c035032267d7ae5d5fbab9b9b9ad5cb972a7d04fa8850f90013321dc00f04edfb265cbef161616b1626262d288c1c40560c321833804d1b35bb76ecfe2e2e274264d9a74870967aade42a2149d9d9d5dd893274f861516168a42b40447461c307466858585a5ab57af0e45461226475cf5e8db18773360d61854af429f0f1e3ce8e0e2e2b2e1d0a143dae0c400603868f81d3e5008b9111313638d1e3dfa526c6cecd2debd7b6754a159e69656ad5aa148b09b9b9bdff6eddb57c239998c2be0cac8af4c4e4eaea067cf9ef7366edc68347af4e87b0ce1849f020c9809e91ab1d96c89dbb76fab2e59b2e4e8a3478f066298083087bf130e1d0e20c420595959a4000af6f5f5f5655c06042fe6b367cfa44e9f3eade3e3e3b3fef3e7cf9d2a1435e1445a700d00ac83070fced2d4d4fc9be17a05d35518ee60c04c1856a192313c7af448f9e8d1a3bf3b3838444a48487014d4bc40465c0412097a7878382d5bb68cc9fd2f603d4f9e3c3971ddba75be8f1e3d1a83170365c8205a2a2b2bb7faf2e54b2b0b0b0bffd0d050f894150bf1166186c6430106cc847c3b3c7ffebcfdead5abe3ae5fbf3e2d3b3b5b8a4422001b7e878513d101a8ca1d1c1c6cc9a4cdae7c411f3d7af4636060a0c3eeddbbf50b0b0ba5e04306ab2544788019f49030040c1b36ec7c6464e4cac18307bf667cf984fc803060d6780b84c48bf7eedd5365b158f2c3860d7b24682428c4919a9a3a08ce9a9f3e7dea081108078f02a2016a5ce57581b9b9f9065b5bdb8076eddae50a6ab7a5fdffe3c78f725bb66c31dab46993f99b376fba808614bc4f8a7f6e0aa0dcc4c4446d2d2dad9382b291602ddfbd7b279d9d9d2dd3a74f9f2f2d8da6c2365f86336ba01581d2f9ead5ab132e5fbe3ce1eddbb79d646464f23b76ecf86ec1820507c68c19f34090becbcacaca0fa99e454545c50160e026c8ca49b9ec3b75eaf4dcd5d5d56dc58a15bb1b685a4da69bc3870fcff0f5f575bd7efdfa380c9a1c63293b06d735a3ccc2c222c0c9c9c997df0b012076e1c2859167ce9c01b7ac90939323dfbb77efa77dfbf64d99376fde39c6efaf71b60503660d40772e5760b26ddb36fdd4d4d41e252525121212122c80d2e0c1836fad5ab52acac8c8684765220d8c016fdebc915fb870e1513a8c701d80432d1d46005a5151117be6cc99c73d3d3ded468c18f1a401a6d624bab877ef5e373f3f3fd743870ee914151549921b06b85b727701a73674e8d06bc78e1d9bdba143878f954d0c40161b1babb375ebd695c9c9c9e3a4a4a4ca737373a5949494b27af6ecf970d1a2453badadad3733e269c36f0d06ccea99e6d8fc5151512bc0553d7dfab437382ae86aa07ce616a32d1f376e5c92878787cbd4a953aff01bcedebd7be7989a9ac67efdfab53d02d1c9a289834887525151f1cbf2e5cb63edecec3c9960f456ad20a6efdfbfdf202020c0252b2beb07aa9349b197544f414c4c2c8f2b5ef2cd57b66bd7ae392121218e77eedc19232a2a2a4225eac025b3d96cb6b2b2f2fbfdfbf7ff3a61c28414c60a5acf87ab42f30c98d523bd91a3ecf9f3e71de7cc9973fae9d3a7fd003e5038530e7f801037cd0fdbd8d838dccdcdcd4b5555f533bf21ad5cb9326afb932ab1b60000200049444154f6ed066c365b925b859b938d16c088b6a0c4d6d0d078b26edd3aa7a54b97b6f8a0e8bffefa6b1c5e009f3e7dea8d17085e022a2a2aad3e7ffecc79a9805ec855666868b8116164fc680fdf3f7f7f7ff76ddbb619b66a05d5e57f7a37b44965eaa4a4a48a7bf5ea757bc78e1d8b9834dbf578b8bed3340366f5486f78f2ebe9e945edddbb77595151910c6f99381c00800f05938b89897d85becbd6d636a2b221656464c8666767b79f3973e6d9b4b4b4ee789e008c9baf9ec3ada176e6f8f1e3cffaf8f8d88f1831e27e3d4e51a89b86f5d2dcdc7c635252d28c92921254ecfb163d81df014400b21e3d7adcdfb56bd7825ebd7abde5235e4ab8b9b9d9444747db7efaf44919cfe325025115eb0a50a4a228d2d2d299fafafad11b366c70116444106a0236b1c13160568f0bb67dfbf6dfacacaca23f7ffeac42c003ce8c0e02dee6f89b1b6bd9aa4f9f3ef7c2c3c34d04899b61616128c411545a5a2a8fa8005c1421802c1bd0a5e110595a5a06858484d8d7e31485b66988f7ebd7afb70f0e0e76c8c9c951a414e4249e53f2450505850f313131faf3e7cf3fc56f32478f1e9de8e2e2127cefdebd61548781ee279a635da90e67bb76edde6fddba75f1ac59b39822c20db44b1830ab07424304847fd8e2c58bf7a37236c28f20125281597489b73abe0327453e63d0dbcc9a35eb50505090a59a9a5a26bfa1cd993367ffb163c77e0348e20277404ea0385000493535b5d73e3e3ed62dd199f6f4e9d33f5959596d7cf4e8517f4a414e62253e41a3fcfc7cb6a1a161444c4c8c053f5adfbd7bb7b39b9b5be09123477e879e8c6a6be24542f502c061738d3024beb2e7cd9bb73f2424c45c5d5dfd7d3d6c33a649466756ff7b005c81a1a161e8962d5bd6a04806af1b05aff5110780fec627d73da0c8cfcfcfdacaca6a13bf91deb973a7e79c3973fe444241ca464bba33b48bb6582c166bc89021ffc6c5c5e90e1830e045fdcf5c387a80f578fefcf9c7ae5fbffe13f496786190432c552d0737fcd34f3f9ddfb3670f00aa905fe6112f2f2f6b6f6f6ff7a2a222797065393939df1c96292a03ed91d889d441b84a4a4aca2c2d2dfd4c4c4c02bb77effe5fa64de6aa370a309c593d9076efdebdb38c8d8db7676767b785621e3f3cca7e4e8fa4b3017786dfe93e98fafbf5eb77332c2c6cd54f3ffd7497dff07c7c7c2c5d5d5d0364646424205a523f640ce0a6de2ef9fdf7df77eed8b163453d4c55289b747474f40c0b0bb3292d2de5d4c324f10fbf934b4bc78e1d5f474444ac9a3f7ffe5ffc2681d27faeaeae818f1f3f1e505e5ece29a409b002bdc9578d42a2f03759aa89f3eed8b1e3dbc4c4c4dfa74f9fce549cafe7ddc280591d13f8d9b3679d172c5870f4e9d3a7fdcbcaca247813fde13041614cb53009743004e21e70d8f2f2f2cae7cf9fbf2b3030d04c5d5dfdebf78608dfb3f7efdf2beaeaea26fcfbefbf9373737339ec0039d4f28ab40a0a0a5f376dda64a0a3a3d3ec63378f1f3ffef3efbfff7e504e4e4ee2cb972fd2a0313855baf052515656fe6c6868186e626212a4a6a65658d916401a73131313a431ff196a49ac1d2ed2995134060117a537c77de813c0c662b14a343535f7dbdbdb7b8c1a35ea691d6f37a6391e0a30605687db21353555d1cfcfcf3d2626c64c525252143a15b260d2db1bddf1ead070b8003c152f4545c5afdededeb6a6a6a671fc8678ead4a9496666669b9f3f7fde1340087f277215a0c8003cafaeaefef0f0e1c3b37bf7ee9d5a875316aaa65253533b2c5fbe7cc7fdfbf7c764666672c09d0ac1601d0036050505ec59b3661df5f7f73713e43a81e4973e3e3eeea8784e861bd2bf512814fae075cd401f502b80e3c68b85cb8597c15566c58a1591fcc053a888d90407c380591d2e5a4242c262575757bfececec4eb9b9b9e29489816a5f1287202626565a565626262626264afa2d3a2c38743830d0cba0d86f424282f6c891231f54364cb87f585a5afaecdebd7b596e6e6e07b28e5202473c87f6e0cc09e7dc03070e2c6daece9c102fa3a2a22c8a8b8bdb803be215ede15b866c181a1a1a8f020202ccf9155086cef3cc9933630c0d0d13dfbc79d39d1c6dd11e392a1350898b8b73d612cf80cec40912e8e18582e7dbb66d9b1e141464aaa3a373ac0eb71cd314c399d5fd1eb87cf9f26024fc3b77eedc74e493e72d8ac1fbf6eed4a9539ab5b5b5dfbd7bf7061f3b766c7e6161617b320454ccf3dfb66ddbccc993279f8e8a8a32e4a7a046b88e8d8d4de49933677e41aa20700564b923ff331cc4ce9d3bbf74777777d5d7d7df55f71468dc160f1c38f02b7ccaf2f3f3bb7cfdfa9f644ea9b0c9b1554242a2c8c5c5c5cdd8d8389a5fec657a7a7adb152b566c43b8d2d7af5f150160c43d934f19404b4d4dedd5fcf9f377aba8a87cdeb76fdfd294949421bc891e29ca0063813fdb9429534ef9fbfbafe9d7af1f63ddac87edc270667540d4949414b5d8d8585388978585851cf186bcfcf13bb95fb46ad5aa74eddab5ae969696d1b9b9b9a25e5e5e1e7bf6ec599e9b9bdb06f7912e0dc003308292595e5e3e7bfdfaf50e9696969bf90d75ebd6ad8b3c3d3dbd5fbe7cd9838094b803fa44d5ba9123475e8d8c8c34e4c7edd501491ab489070f1ef43037378f3c77eedc0ccc15b443265eb2147345cdb25f7ffdf5909b9b9bebf0e1c31ff31b6040408099bdbd7d18bd18c0e5a20d88f0445b5959d97c5d5ddd385353d3206969e98f7ffcf1c76a6767e7601919194ede3972dba0ecb5188b8c8c4c36ac9b2b56ac88ae4c17daa0846b669d316056cb058578b179f3669dd0d050c7972f5ff6e3ea4838ad92e848964abcc5e3e3e3572b2a2a16204bc6850b1746d8dbdb87c21193c5624991699f47798c0359dead5bb7073b76ecf89d5fcaa0376fde282357d7962d5b4c0a0b0be5d03f6fcc26dae63ad8b2f5f5f563e2e3e3cd102950cbe937fae370bd707676760d0e0e76969494140788c1da08ee9414f200a161c3865d777676761f3264c8057575f5a2ca067ee2c48909f04f4b4f4fef5b5a5a2ac28d9fe500244457ae977fde881123fe59b76e9ddba4499392d1d693274f54eceded371d39726421fac77df0fb232301595521ee272424e8cc9e3dfbef46275e331b000366b55cd0cb972ff747e6d28b172fce007345d64a1c265e4570b76edd9eefdcb95373cc9831ff93c32c222262654444842d82d069e3e32090ce87ebb651aea9a979e0d0a1434bf8011057d4f5b97cf9f2b4a2a22271f23bc341c26104b801d05ab76e9dbd69d3a6153a3a3a479a7aba9a93274f4e59b162c5f6acac2ce488e31857503c1980021003572c2929996b666616841f7ec1f79999990a8b172fdefed75f7fcd96929212417bbc3e82c495a1908c8d8d8d8fa9a9e956369b8d184d36b6d1f9f3e787e9eaea1e7cf7ee5d17bc90787568104fb92f38f69c39730efaf8f858093240d4726bb6b8c71930abc5922347597474b4597070f0dad2d25229bcc5495424f192eb22c1f6f0f0707073730baa18ab078ecadddddde38f3ffe58929f9faf48ae15949e06ed70bdcc4b366fdeac3f69d2a48395711630066cdcb87129cad4e5e4e4fc80367000a96c1a89b200da810307de86ffd39021439ed582048dfae893274f3a5958586c3a7dfaf41c12a5e136018e1873e4c6be962f5bb62cded8d878e398316350c58a033cdfbb3c3c3cec9011a3a0a0a02dd10ef751024cacafacac6c8e9696d6762b2b2bff8a6004fa070404ac767070080518a20db26e92c5932bf216999999050606067a09ca63d7a8046e629d3360568b058b898959e2e7e7b7eee5cb971aa4f8c5618278415ef96262621c5dcd860d1b4c7bf4e8f1dd3c5967ce9c19efe3e3e37ae1c2859f21b69288c8cb4de1bbae5dbb3e898a8a5af5cb2fbf5caa6cd8f08ddab06183e3debd7b976766662ae33e5e6300c6c5751761af5ab52ad2cfcfcf45595939a716646894475198242e2ece312828c8555c5c5c0c0046fe5f0a0a0a1cee0c20deab57affb616161c6829c56517a0e8691f4f4f41fa9a809f995d10b81cd66b3a64d9b760c8583a74e9dfaeff7260efaaf5ebd7aeba54b9766141515c162fdcd8790dc74f09cbabafa736f6f6f3b1d1d9dc38d42c066d8290366355cd44b972e0d737777f786f5124a5f886fd8b8e0087091d7b98a8a4ac6ce9d3bb5f8058fbf78f142e1f8f1e3bfc3a7e9cb972f1dc972465935d01edef0f858b3664da88d8d4d4065f17e107b6edcb8d10f696f9293934711b7888711108d434efe67626262f99b366dd29b3061c2717e7aa41a92a85e1f3b76ecd8247d7dfdbd9f3f7f6ecfdb11e646dcada4a4e4177373f39055ab566de217eb0a0edbcccc2ce6f4e9d3b3592c9634b9b5508d05888c68b34b972ea93636367ee6e6e6f1fcdc5b4e9d3a350655b5f2f2f254284e96220f20ea73e3388b274c98706ecb962d2b99d8cdbad92a0c98d5808ee9e9e9323e3e3e3e89898906f08145dc1f0e112e0011363e366f696969017c9f74757537f3b35e81cbe8d1a307c4a14db06e425ca188005e7f251c8ce2e26236b2312c5fbe7c5f65221344d7a4a4a489b6b6b6e11f3f7eec44fe6da447a2421e00bac18307dfd8bc79f392a6e49d8ec06f3333b3ad57af5e9d0225fdf71c93b116dadadadbd6ad5be7cecf51180684a0a020134747c790f2f272716e7eb96fbb82b8322929a9bca54b97c65b595905f04b158407b13fa2a2a21c2223236df2f2f2e488d3c3dea0f6f0f26bd7aeddc7254b96c45958587836b597490d8e4dbd3fc280590d480c5d93a7a7e7fa8c8c0c0de2c8c8ea05ee0762a6848444c9f0e1c311e4bdac4f9f3eaf047583f0a40b172e0cb3b0b0887af8f0e15072bea40066b2ceb569d3264f5a5afaeba54b9746f7ecd9f353653a971b376ef48e8d8d358989893185233c85dc90cf15b80fae92ba002e06f6f6f6aeddba75cb11f6fc5be0a276ecd8a1b77efd7a9ff2f27269bc38082488ebc1dcdab76fff2a3a3a7ae5ac59b3cef3a3fdc58b17872287dcbffffe3b564949a955565616e776bc4cc8b583c562958f1f3ffeefb56bd77af013f179fbe1751721b117c60988c3186fdbb66d5b656666c289f731ca0432e2a6a01322f8ff0c9809a6d1ffdc81d84b3d3dbded284e82c063daf024c6c1370c17ac977e7e7e368b162d3a5ad52e903a283c3c5ccfc5c52590c56271bcd829b50c79b3c342876ca6c8351f181868cecf9916d64d94a9033892232d0e130e2af9410134dbb66dfb016e066bd6ac89a9ea581be33e00fef1e3c727ac5ab56adbc78f1f55c90b9f009facb510c7c3c3c38dcccccc12f929d83f7dfa246f68681873e8d0a1c5e056294d136fbe32706aa00f386c2b2bab98ea444fecdebd5b13b19d6c36bb2d5c46305e7aa910fd502b60d2a44967e2e3e3f51871b376bb8a01b36ad2cfdcdc3c10e2657676b622c41bde1430680a7fa3caf8f2e5cbb7444545d954b37984dcb4313434dc74f0e0c1c55252521c630000081c1525146cdfbe7d595656167be7ce9dbff1034be8cfa01383df14b8180023c08b1208f2e6f9eaddbbf74d1817c68e1d7bbbba636e88fb217abf78f1a2ad919151e2b973e77e214756003e65ede5fa72954f9d3af5d41f7ffcb1544949e9bb41fa182f68c34d72195c5050d01a1c35dac20f37409cf322292f2f67af58b1623394fe7dfbf64dabee5c4d4d4d83a3a2a2ac5ab76e2d82171de92b0980f19db4b474e1ead5ab838382823caa0396d51d4b73bf9f01b32aae30ac8cbb76ed9a676262129f9797a7c0abec8718416fde76edda7d6ddfbefdeb13274efcf2e38f3fbeab62f3ff73dbf5ebd7072d5fbe7cd7e3c78ffb92129adeea54ac160ff4ecd9f3416262a2ee9831636e55d6cffbf7ef5baf59b366f3f1e3c7172075374523100050dc21717b5e5e5eb65dbb76fd4fd612a20b7ac0f0f0708b80800057e26e2849228583614efdfaf5bb073580202fffbffffe7bb4a1a161c2f3e7cf7bf3eac978d7524545a5b46bd7aeb7424242564f9830a1521af323d3ab57af3a6a69691d4c4e4e1ecd1b1542a22765085655557d131919b96ac18205a78588ec4d6a280c985571b91e3f7eacaaafafbf1be2253620381cd26391021a6f7405058577bebebed6fafafa7baad8f4ffb90d5c486464e4720b0b8bcde5e5e562b8811c36c9f5030723272787a5a3a393885cfffcac75376fdeecb178f1e2632f5fbee438e602d0c83b9db2a3a28f4e9d3aa5dbdbdb7b595858089db879fcf8f1c94b962c39545252a200da835be54da5c475102ef5f7f7b7b2b6b6dec24fbc04f76b6060b0e5c89123bf117d29190039c972c186bd65cb165d0303833f6ae30f76ecd8b1a98b172f3e242a2a2a0fbaa32fde44005c6ead78e0c08137cf9e3d3b5b515151e85e2635ddcb0df91c036655a0369bcd96b2b4b45c8f6ad825252552e45346dc123803fc20301c9efa5bb76e45f59e5a5d1919192a702b3874e8d0526ed6588e9e8bc42b1c665c0a0a0a99eeeeee4ee6e6e638c0953a8422ded0dddddda7a0a0400ee3c745e1390061f296efd5abd7ade8e868bdb163c7a6d46a0275f8f0b56bd7fabababa069d3973662605ce13b8831ee4603c6fdebc3f6262620c4a4b4bcbf879fa439fe6e8e8185c5c5cdc1a6b08ce8c0c22b04c73eb35148f1b37eeefe8e8685d0d0d8d4fb59d8eb1b171286277a167855599d24371ab43715e2ec8c0616363e3ebefefbfaeb6fdb5c4e71930abc2aaa31ab6a5a565547a7a7a77e264c8cd018f13673666cc984b70a4eddfbfffbbdaea3e600cb87efd7a8fb973e79ecdcfcfef88cd0ebd0e0e1f0e00854a414d377af4e84b08a0aeccd2064eefd5ab5772cecece1bf6eeddab0b77048c99b27470f57c1448cdd2d2d2da191515652e0cceb448811d1414641f1919692b222222c3ad4fc9717d419a24ba7af6ecf9080928051583416d00641879fcf8f1400a0207a747e088f5056dc5c5c53f5fbc7871d4c081035f56618b08bce5e1c3875d0d0c0c12af5ebd3a91eb33f83fd986d10080ba5dbb766f63636397ce9933e782c046991bfe87020c9809d810e0907efdf5d753b76fdf1e4e5c01058ef366a7e8dcb9f30b00ca8a152b76d7d51e23053e2c92d2d2d222c48d01d448ccc2a79c9c5ccedcb973f7fbf9f9d955266ea2ad949414f5c993275f2b2d2d6d0720a076c08900d848d4525050f8e2e8e8e8616767b7b1b16337e3e2e29620ff3e650321e0a174e3dcec226cd4a95cb264c9617e2f11aca5b5b575e09e3d7bf4c8d70e73c73a828ea4bf827d60cb962d4b0c0c0c0e8a8888fc57feaa0eae8484042d777777bfb4b4b46e3c7d715a86db06d7125e3e68d0a0e40b172ecc64c4cdea119d01333ef482d2dfc2c2c23f3e3edea8a4a4441ee20c362138190a240708201dccaa55ab362249625da776c11bddd7d7d76dfbf6edfa4a4a4a22f083a22ca718071d828e1d3bbe8177bab5b535dc07be9b0d031cd99e3d7b7ed5d6d63edca64d1b11182d780f3539fc420c1d3264c865e8e204713ad5db6ed5bbfb9f7ffe190e7fbeb367cffe8227c10d832bc5452e2ba5a5a5ece5cb97c7b9baba3a57162e46bda266022ccc1f3e7ce8cc537381d32629e42524244a67cf9e7dc8c7c7c7a12afe81d599115245c5c7c79b2281245997c9ba59c15f910de75cc48956a7fd967e2f03667c76c0debd7be7181b1b27e4e6e62af31626218f7aca3bd6af5fbf6ba8d1585587caea6e3ae4b5b7b6b68e484d4de558dee840f3fa2c494a4a968c1a35ea1f2727276f7e8ea2089d5abb766dc4891327b4f2f2f2fe4be5c0353050665ccc4f5656b678f6ecd9fb7c7c7c6c04814475e75395fb535353a5fdfdfdfdb66ddbb6aaa4a44496b7480b0f902182e166444484e94f3ffd749d5fbbe7ce9d1bebe8e818949c9c3c86ea5c926b0aafca0046907dfbf6cd5553537b5c1f29ae1106676b6b1b86c48fe89f8a08f3a6e5c6772884b271e3c615820aae5485962de51e06cc2a5969ae49fd00363faf8f17d55cc4e6c3a142b6515b5b5b5f7373f3b8fa14c9fcfdfd2d1d1c1c36208b2de53dc3d0a98030372b4399aeae6eacadadad4ffffefd5f7f6f6ad0c5ddbf7f5f6ddebc79275253537b51e039152486284d163d2525a52f981b920e36f481807f9c9f9f9febdbb76fbb51e15ee21c2905b69c9c5c2e82b5cdcdcdf926ae0477ebe5e5b5eec08103da88bda41713c5be52b525f87bb9b9b9392f5ebc78537d8617c1a8e0e5e5e5f9f6eddbaed85b94aa89d408cacacaf037644f9c38f15c4242c2d26eddba7d6868fa37c5fe1830fbceaa41bc747777b7f7f0f0f0411039363fd55b24eb1936a0b8b878a1b6b67682b7b7b73d3f4ffcbad818282a6c63631385e47f1803555fa20804e2aa545555dfdad9d9790baabbb979f3e6e54e4e4e418585852a54159ddac07801727003e9d4a9d383a8a8a815956589a88bb9556ce3e6cd9b7d6c6d6d43929292667053e670e64b910b647059ba746982a7a7a793a0c38e48091f1f1fb7fcfc7c65bc8c106c4f06141e7f41b69696d6eec0c040db9afa07569516883cf0f0f0708b8e8eb694939313a734dfb496144a85385c2727a7756bd6ac09e6679dad6abfcdfd3e06ccbeb3c2fbf7ef9f859c542f5ebcd0c0bf490cc121c28683450ddff5efdfffaa9f9f9fd5942953f88a3875b589ae5cb932444b4bebc8bb77efd460cdc3212000c2a1c498a0071b3b76ec2588879405f57bfdc34a6866661675ecd8b1df0b0a0aa4781309524d4f8038b895e9d3a71f090f0f5fd3b973e72f753597cada4190b6939313c4e079d9d9d9ca146f89f151f81280485555f5c9f6eddbb504b990fcf9e79f13d6ad5be77deddab5f1d427b9d6607e681f57bb76edde6ddbb64d6bdab469571a223e15a166f6f6f61bae5cb93219fdf3869801b869cf2155108a42fffefbef4c2114019b8f01331e02c18521353555594f4f6fe7c58b17a75279322a1b065d0bb8186c3c7979f90f9e9e9e0e868686bb6be350595d70707171710d0c0c5c2b2e2e2e4d1c1559f8c8935d5454b478fefcf97bdcdcdc9cfaf6edfbdd28045837fff9e79fa188c74c4949e104b61330022c7041ece1a680ce737070f072717109a8ef83be67cf9eb926262671797979ca002fca1e4296647cf7c30f3fbcb7b5b5f5b6b3b38be447bf870f1f767473730b387ffefc4ccaed86fbc9d99682ee01d8cececeeb962e5d1a519fe225ef58333232649154d2cece2e222727a71df61a1572a67d07facbc8c814a0f23aca0e8e1831e24975f74b4bba9f01339ed546e80fc4911d3b76acc4e6e7e5c4209e90e7b98a8acad769d3a61d09090931ad6ff1b2e2664424022203fefcf34fa476fee65241404679b3906b1ee2a6adad6d143f000a0f0f5fe5e7e7e7969191d199c41bd2dd505247b4ddb76fdf3b28d1565f460ecc13ca71648e7df0e0c108cc8dfcc848610fcb2d8bc52a9a3265ca698471f1abb084b44a274f9e5ceee1e1e10d519a7cf3a83009811a9bcd668f1933e6ef1d3b762c6ce8302e442278787838c7c6c6ae29282890c58b83680fd0a6978ba4a464b1b5b5b5afafafaf677dbf4c9a32f83160c6b37a7ffdf5d7383d3dbddd1f3e7c50c3a6a7d4c9e4284b3e497dfbf6bd89f43223478e4c41d68386dc0010c35ebc78d17fe5ca953b5ebf7edd939241921e89f2aae1fb3e7dfadcdbbe7d3bdf3845889be6e6e611972e5d9af9fefdfb1fa88e273e21ee00c0298bc4ac59b38e4446461a09d251d5841ec888b168d1a2adfbf7efd70120935e8b0c13dcf0ad5683060dba111f1faf2328ddf7b973e7469a9b9bc73c7af46810153601270b0e8fac8800ef366dda7cd8bb77ef82c67241494a4a1a626f6f8f14441ceb26252ea01715ad2b1243c6c7c7ffdeb56bd77b1a1a1a75e6fb5693b512d6671830e3aeccb56bd7067a7a7a7a9c3973e6d7f2f272098a9d238e072081cd2f2b2bfbc9c1c1c1dbc6c6060ea58d52dd080014161666bd61c3060794b603f092e32b055f03ccd4d4d4de8c1c39f2e2a64d9b8cdab76f9f57d926bc71e346f7152b56ec7ff6ecd9608018155301a740b9c2a027545151f964616111e8eaea1a58d71b1aa9adc3c2c26c517497e25ec98a4c46004545c5cf10b70489f6c879b66edd3aff03070e2ccecdcd95a7b1521d4dfc8d79b66edd3adfdcdc3cd8d4d434bc21f481dfa319accb1b376ed459bb762d92432a520a29801aa54d07eddbb469933376ecd8a4c8c84883eeddbb238f5da5a16b75bd364da53d06cc783283060606bac0e58ab7ca381692d762686c6c1c616b6b1bd4bd7bf7efba3e34d4c2a7a4a474b7b5b50d4d4a4a9a5e5c5c2cc955d673deecbc15a214151533a10f12a45f4295a8a8a828ebb4b4b4be10c9882320d70fb2faf5eddbf73efc9ff81917aa4b837ffffdb71f82f81f3d7a3400b4a61279bc9f28243277eedc7dbebebe7c83eaa10b0c0c0c5ce3ededed919d9dad44e9cbd1166f4a73292929161c832322224cf895f0abee5c6a727f6a6aaaa2afafeffa848404c3d2d2524ee02cd19fb7868094945489a7a7a71d9c841b5abd51937935f4332d1ecca05b79f0e0c14f0833b973e7ce30d28d51310b62fd01161a1a1a0f376edc683865ca94cb0dbd50dfeb0f2989a0944f4b4bd3e00d46c7ef94b71ecf0d1830e0e6c68d1bf5f959fee08ea2a7a7b7e9d8b1635a6565654aa4af226b1f3ce4111f0a8f7ba4a386177bdbb66db36b4b07b829b8b9b979c6c5c59942d4e4a9aac4e14cc095e01a3f7efc055f5f5fcb9f7efae92ebf3e018c4646465b1f3c78309cac9f94ee88b255a00f4949c9ec848484650b172e140a2be1952b5706ac5ebd3a017b9002dfc997117e6710bb311f3535b554e4619b3b77ee39863bfbdf9dd0e2c1ecf6eddb1af6f6f621172e5c982e21212181c343d62ef229e33a5596474545192c5cb8701f3f91adb687bb3acfc3fa6a6d6dbd3e3e3ede243b3b9b93638debbdff2d3d110e32ac75d077858585ade0e7d58e5441109faf5cb9320d079eac7de4d889b1a13d09098942545947bae9ea8cf77bf7c6c4c42cb3b7b70f2f2c2ce494d9a35a95e4110f00ead8b1639a8585c5063b3bbb707efd41bc747171f1dfbf7fffd2c2c24219d23b5191138adc80b3ed82050bf62626261ad7a7a3737569039d989191d136786a10fd497d40461054fb9a356bd661f8cef5eedd3ba3ba7d34e7fb5b34984199be7dfb76a3b56bd76e80333db7e02e47e98d4d442226b83478d6fbf8f83836966ea5b24d78fffefd2e086ebf73e7ce1851515111e26c285d103e7198e1ae111a1aba1ac925f96d688470c1c7eeddbb77ddc8084020c92bfe20dc66f7eeddf36b236e4257a7a7a7b7fffefdfb83c972078b25b78602079071785112cfd2d23240d0e18d8a8ad2757575dd909595c5093fa37193ce8d2bb62290fbd6ce9d3b17d624736c7d820142cddcdddd37ecd8b16305efd87933e9722dce858e8e8eee868686918c33edff5b911679f6818600002000494441540d6638b8eeeeeebe8f1e3dea4739a648b4a1342df8ecdcb93332c74e1f34689050faf9c4c7c76b070404b820332db95360896185c4f8a103c32168dbb66dfa1f7ffca1396edcb83bfc0e2542a710dcfef5eb5725de43c59b250440a3a9a9b9373232d2b426008fa0ebf0f070bb2d5bb6ac919090e04459f01410e1bc4c7088478e1c79054ea3821c9351c0454f4f6fcffdfbf707616e941104bf134706f11b319728d58798dbfa04a69ab4cd2d13d8d3c8c868fbad5bb738ee295c91982ad173801e578f1e3d1ea316aba6a626df822d351947537da6c582d9ddbb777b39383804c27111871e1c0ce9c9789d47d96c76312c680b162cd8debd7bf75aeb88ea6ba3e8eaea6e3978f0e0efc8660a7d1737be8fd75709f3e3e8bb76eddab5f2bfb04e11d6f7c60367533f3f3fcfddbb772f67b15812c4e50028e93071ab0bb17d7c7cac57ad5a15c7cfe7ab621fd0cf1d3a74683aea17484a4a72447b5eae8fb8b30e1d3a64e0c06a6b6b1f11a41f5abe7cf9e6c4c4c455885dc57a22bb48c5d4d4487e88da0ceeeeeeb6f511445e576b1b1b1babb36ad5aa1d92929222e417879711656de1d655654d9e3cf9aff0f07083ca1ca3eb6a3c4da59d160966d035ad59b3c67fe7ce9dcb4b4a4a9479f564c421902f12744d708e15542bb1b1171ca5cdcccccc369e3f7f7e1a9531e3d5a171ab3a81db6121d7bc8989c9d6cac68c8c15b9b9b9aa4b962c81083804a080d0295e0b1be8041d57e7ce9dd3b66ddbf6bb20ce89b72fe8b6468c18713f3333539582bef1493a2e12a574747412dcdddd5df9a50447bb08dc7676760ecacccc6c47aa01e2c68806929292ec61c386fd83048e83070f7edad8ebc5af7f5837b13e494949d38a8b8b65c1b14272c04b8a3705559b366db2f5f4f4368787873b08f37c1a6a6c2d12cc12121216878787db3c7af468383764e45b0524e23e70085ab76e9d75f8f0e1e993274fbed1500b529b7e302fe4ff4a4d4ded5151f7048080c82227275728292999979c9c3c809ff32b729f1d387000a98736bd7efd5a9d94e810df003c8801e5669d60cf9c39f3687c7cfc92aab80b404f696a6a9a78f4e85104cc732ac1a31daab64ee9ab870d1b76393232d218a0c78f26c9c9c9bd101171fdfaf589182365cfc533a43a00e822dfdbfaf5eb1d7ffdf5d7c35519676dd6a12e9ebd73e74ecfe9d3a75ff8fcf97347d4f3fcf2e50b27bb2efcd028051238b4debd7bdf737272f2d2d5d5dd5717fd36e5365a1c986193b8b9b9799f3c79721e8bc5e268f989e3c0ef3c0ea8ec75ebd6b92073465359608463b9bbbb7bc7c5c599888a8a4a92029f2c61e4345a5656c63636360ef7f4f47469d7ae5dc1f7a218a0bff9fcf9b35c7878b829c268206ef2d2895c41b8d6cd626ee5f66041dee9515151a80b1ac462b1940188b848cf47f50d6464643ef9fafa5a191a1aeee4477b380fbbb8b87823b73e8c1fc44d57ac4d09675f5800bdbdbd1d057179c2b4d69e9e9e8ebebebeae454545b2507d200a028583412f5cdcbc76ecd9b3671ff6f0f0b01f366cd873611a7f438fa5458119c44b67676797989898d5d9d9d9ed7853de500e2f7c272d2d5d3c66cc98a47dfbf6fdceaff662432f5655fa437c2300eddcb9739cf439bcd918c8b31f62e8d7af5fcb50b804ba197eedc25a8adc5b7bf6ecd145765aaa2d099ddca74f9f384606707cb2b2b25ff6eddba7c92f2ce8eeddbbea481cf9f6eddb1fa9a41b0110b9c12056d2c2c222002025480f076084251aceb1548d9c9b9ae95b14038bc502e7780c81e90d99c6a82a6bc5ef1ebc4c1013afa9a9b91b855ccacaca64882323a7688ace8047d1ead5ab43020303d70993ab496d6950dde75b0c98416c3a72e4c864e4047bf1e2454f7a7b939e06079c5252abaaaabedabc79b3c1cc9933cf5597a08d7d3f003b2e2e6e1100080558a06fa114dff8e4f5aaefd7afdfed888808237eee157064bd75eb16fccfc2a0c301dd286e95f452f84e5656b670f0e0c1579d9c9cdc67cc98f14f45853d800c41ef67cf9e9d49fe6be4fec22ddecbd1c14d9d3af5b49b9bdbda891327f22d469c9c9cdcdfd0d030fef6eddb23204e52f5774ab4480eb2cacaca6f9069849f8eb0b1d78c5fffa74e9d9a841446fffefbef58dc47855c28a123456874e9d2e5298c315a5a5a2705194b8479beb5195b8b01b37bf7ee75737171f14d4a4a9a999797278f8348b17f147fc9cd21c5112fdddddd031b2bf6b2360b8a67d3d3d3db868686da848686da8b8a8a8a93032689d138f8648dd4d6d6de1e161666cacf11185cc2debd7b3557ac58b10bd91d78c5561265b91c207bd0a041b751cbb34f9f3ef751e40541fb57af5e1d77e3c68d31a74f9f9ecb1bf34a6b40f36ddbb6ed7bc41e0a3a9000d8952b5786a3b27c59599938b971d00b8ae268f3f3f3d96bd6ac093532320a193060407a6de9da18cfc3f2bb7efd7a5b64dd65b3d972e46683b190f51d626769696929f2d84544442c1f3468d09bc6186b63f7d922c00cbaa4f0f070eba0a0206751515129521293a58b94e5c87b3f68d0a0abbb76edd25657577fdfd88b539bfe2f5ebc38d4d5d5d5ffd2a54b3f938596c4142a248cef959494debbb8b8b8a1eea620fd94a7a7e7ba9d3b77aec8caca6a4b41e8943c11dc55870e1d48f4cc545151f9a0a4a494853e9e3e7dda2f27274781dc450036d0b95121623c8b406ab84dd8dbdbfb08d26ba162395205e5e4e428819ba3fc6be80b079c02b47bf5eaf56f6868a8f1840913ee3565f1ebd1a3473f3a3b3bfb9e38716201e27049c7c8ab46c0cb04966a0707070f2f2f2fbc885b5c668d160166a8868d18c63b77ee0ce7cdfb4efe4d380450ae2a2828bc0267307bf6eca4dad6bdac0d10d5c5b370afb87dfbf64fc6c6c6db8a8a8a3ac0accfebc9cfd50d7244d0fefdfbdf0c0d0d3511e4cdffe0c1830ebebebe5ef050879f1ac6497a47d00fee1bbc078d5727897b01a6a4e407edc94916ff1b3d7af43fb1b1b1a839ca37801fd94d8c8d8de32986916247c9b91440098b5fbb76ed3e21e07cf9f2e52817f75d7fbabaa07343b571e6cc99f1e6e6e69bd2d2d2fa03fc09b429b1005e5058e31f7ef8210329d1e7cd9b77b6a1c6262cfd347b307bf6ec593b0303839d284c525a5a2a4739bac8bb9a380b6969e922131393b00d1b36ac6de81c65f5b519101e131212b22e3636d6a4a8a8481ae041ee0b24727263ffd8983b2c92821214a2ba387cba9292927e96969696007745564e4a66095188728851111202311c426ef115ceb401b0102f376fde8c4a44a7f8d102f381923b3a3ada8acb897cab55409651708c7074fef5d75f0f8686869ad5243aa1bed6a3b6ed5a595979a3541d8bc552c0cb006b8735a53c6d5ca34ad9800103925161aa31aa6ad5768eb579be598319743d28080157852f5fbeb407a1280b060e1457d780efca478d1a751ecaf0010306bc6e0e6f72cc15468fe4e4e4de4b972eddffe1c3871ed9d9d9e2001cd0803cf949a1dca953a7d7363636be73e6cc49e0e75e019aeed8b163416464a4d5f5ebd7a194162191937438b421c9cd852a87530a1e5e0e514242a264eddab5eb74757537098ab040b5f8c0c040d7d7af5ff7a297123813debc67f81b091c7d7d7dad67cc9871b519ada5c8a3478fbaac5dbb36f0cf3ffffcadb0b05014f3c6cb987cf400f0dcf4e7c5c83b075ad5061c9adab3cd1acc8e1e3d3ac5dada3aeae5cb97bd299f3c1d38de5a89281a81ba974b972e3dd4d416b02ae3ddbe7dfb6fc838f1e1c30755e2864804a42066369b5d366edcb824e8cfa64f9f2e30c5118a7f200d10ac892525259c1c5c94a79f124482d6bcb9fb49b405270180535252ca5cb870e12e070787f582b8880b172e8c80cbc9850b173816550aa807c707b1126d730f73b1afafaf0dacd655a14d53bbe78f3ffef8d5c9c969c3fbf7ef7b522247bc94b18ea00965054609c4b0b03093050b169c6e6a73ace9789b2d98c1a2676c6c1c8b2a3f88d7a3dc56f824f702aeab42a9a9a9e906070707cfe69a8180cd664b2f5bb62cf2e0c183dab046f23a95529d4cd005a5cd90a1c2dadadaa377efde59fcc46d6e1eb84900b41b376e8c82518057f4e3d587f1eacec88da253a74ea9881c707171592f481484bb89898949507474b4b998981827289dd6131b1fe215f445f0515bba74697c404080a3aaaaeae79a1e0a617e0eb4b0b1b1f18c898959535454244fb400a8239a056b80df737373d9d3a74f3fbd71e3463d412f0a619e6f75c6d62cc10c0bbe7efd7a6b1f1f1ff7d2d2d26f79adc00d9001800ae94e9830e11c32a7f6ebd72fbd39fbe720f2415b5b7bdff3e7cf070268b8c1ca1cb184e2227118906bdec1c1c1ddd4d41479b5045e70794140fab163c734dfbe7ddb253f3fbf2d897e2456c25a0cdaa37d2525a54fbd7bf7bebf60c182fd5656565b04b9bf0034af5dbb361b85885fbf7edd158606242a245f351a20c4676565e5f4c3870fcf121402257052427ec393274f3ae9e9e9ed7af0e0c10470bf649d2717158a10c0cbc9dededec3d2d232a8298470d596eccd12cc5024425757f7405a5a9a3a891f94df0b8b8fc38b03262323f3313030d04c4f4fef8fda1252d89f07c0474444e8c3aa5b5050a0c89b238b3835f2a21f3264c8bf313131ba552d6d86b6cf9f3f3f147e6449494993d2d3d3bb42f4c4cba1b8b8182f93225959d9bcae5dbba6cd9e3dfb0894f382ac96444f24cf5cb162c54e88b3bc9652ca3d47c928e153161c1c6c8658d2e662c0e1b7a790be6aeddab5412f5fbeec4969aba0ffc40b037b9cb26c40171a1d1dbd62ce9c394dce01bcba67aad981d993274f541c1c1c220f1f3ebc082954a8da0d000c8bcef3162b31313109b5b2b2f2555757ff5a5dc235c5fba1bc47aaa0eddbb723f9df37d70a7039a00ba5c646eca6a1a16184b5b5b5bfa08488dfa30382c99f3f7f3ee8c183077de5e5e5f3bb76edfa72d0a041cf14151573aa0334702f090f0f778f8888b0411c2de9838803c1b849ccd2d4d4dc1f1717b742500854535cb7ef8d192f103b3b3b7788de700207b8f39643a4da076565652cc46ebabbbbdb0d1932e4557399fff7e6d1ecc00c162f4343c3ed15ad6cbc3a1cbcb5860f1f9e141616b6a6b98b2415171db19bbababa7bd2d2d27a903808ee86b26a508ca4aaaa6a9a959595bf8d8dcda6c63a004823ede8e818929f9fdf11ae081025c98f0c63c69a72ab9397dcba75abef8001035e34d6581ba3df67cf9e7576707008421e3bdefe290900d697ab232e416caa8f8f8f4f73b1ee367b30433a1814a9fdf2e54b3b62b3c9b78a9c2ac186b76edd3a17455fe7cd9b77a121ab9137c686ff5e9f4815a4afafbf0b81e36409c47d14b8cc8d1428efd5abd73d14fde8d0a1c38b864e6688c224a6a6a6b1c9c9c9a379cbe7619ce4da014ea4a8a8a81c4aeee9d3a71f15e4da212cf4afcb71ecdfbf7f86a5a5e5e68f1f3f76a5f030ec7570ac103bf109371c2929a982a3478f4eaf8aa5ba2ec7d7906d351bce2c2b2b4b71e1c2853bce9f3fff8ba4a4a418f406f0bf212f7f9eb097a2c58b176f757373736c899b1f9bebe5cb973fb8babafa201386888888381903000e143ccecd6a5a8cc21fc1c1c1260d69e945f899b7b7b7e78e1d3bf4b3b2b294e84040cc2485f70f3ffcd0eac3870fade6cc9973c0c7c7c7aaa9c65ed6f6b0230d525454d41a3f3fbf75c5c5c5d2688fa410aa7dc0ad119a3b74e8d0e4848404ede66add6c166006e7505f5f5f333737b70014f025f33faf132739cb0e1c38f04640408065737e4355e580a0e237921abe78f16230deded09911c7c375bce48870626262795e5e5e76d6d6d6d15569b72eee898b8b5be2ecec1cf0f1e347550a4c47bb64a8a07122ad764242c2929933675ea88b7e9b6a1bb028af5cb972674a4aca68ec79ec75fc400ac14b1cc62e70e0705076737373363030d8d41cad9b4d1ecca06cceccccec3075ead46b999999edf156a222be08abe1cda8202f2f8f8ad8d6262626d0a9b5f8cbcfcfcfc2d3d3d3bbb8b8b87545df2d00077169bd7af54ad9be7dfba2e1c3873fae6fa221b58f8585c5c67bf7ee8dcdcbcb13e3152ba94030be834b076a33383838f02d3f57dfe31596f677eedc3977fdfaf53e4f9f3eedcb5b998ac2c80066f81d2991a2a3a397cf9933e7efe6e68ad4e4c10c4a507b7bfb8053a74e2d823a85b80c6c329e847ff8bd484b4b6b9bababab73af5ebd9aa54365750fd6972f5fda2c59b264dbc58b17a796949470e2560930a85e2337df1b1bb5104e9c38a12d22225254dd7eaa7a3f9bcd965cbe7c79d4e1c3877f87858ee24829e71cdc6cb8205b3e7efcf8b3b1b1b14b3534343e55b5fde67c1fb786aad7c68d1b2d206e82569050f0099d19e9cfb8ceb4272222228c85bdae4575d7ab498319aa616fdbb66d298ac84a4b4b8b4354e23d90c459e06076ebd6ede1eeddbbe70e1d3af45573b6e85477039c3d7b76848585c59667cf9e0d828842ee0ed40e5e0eb8dab66dfbc9d9d9d9dddada7a6375fba8eafda84ab46edd3abf77efdea9413c02b012674d7fe37076e8d0213d3c3c7cc56fbffdd6e23243f0a3e5e3c78f55f5f5f577dfba756b02e941c928005113cec6a09fb8b87889bbbbfb5a1d1d9db8e6e496d4a4c1ece0c183d35c5d5d03e1d3042083029b9c62e9adcecd668a40f20b3b76ecf8ad392d5e554182df7d08fb9a3b77eec95bb76e8de2d54be177aece8ca34f535151412194cf28fcfbd34f3fddac8bbe79db8025dad2d23226393999e3d50eae82743ee4204b5ca3aaaa6aeac993272755d5f1b6aec72aacede1e56e64641473faf4e985c5c5c5e214e04fa14e346e005a8f1e3d9e787a7ada2f5ebc1899699b7c8a248eea41581746d0b850f4353838d86eefdebdcbcbcbcbc528fb0385bb544c41d3ad5bb7a78b162ddad6ab57af47e5e5e5b0e0894b4a4a968a8a8ab2cbcbcb5143f2bbb4a8ec7b41e3a3ffa36d7ef7a2ffaab655d97d8849acec7fe81f22766161616b4545c5af79797972f80e35244b4b4bc55fbc78a1111b1bbbe6e3c78f1db86f6d4ec0327e27fd23dac64b415252b278debc797fecdcb9137537d9757908f4f5f537efddbb77594141810c6f580ef49e94229a5207898989b1502ab05fbf7e0fc4c4c4ca317fd46d807845bf2302819b4da351f7786dd7ff7b6bcbbb67582c9628b2bec019f9c18307fd117ffbecd9b3de94b811eb483e7a1419809784a8a868f92fbffc72d4dfdfdfb6b9f8e735ea42d7e61043798d8ad81919199d0887c80ac7db2ebec3e1c0a7bcbc7c262c3a5252529c2c9c38cc121212e5b06673819de8f13d70f81ead38dfc1b39e0b7af8fb7f7e6833730b54fc9f298b8989515fbc7d7eef777cc7f9c1c555de7efb8edb70c5b6d86565656238fc252525d2121212f409bd17e68d1266ed0002bc41e2f89e729451a60b800a57995c101c1c6c5a9739f5f7eddb37dbc0c060477676b602faa0f44ce893ea0d90532fc60690959393cb0419e4e5e5f3cacbcb45a5a4a44a3047fc5f4c4cac941b46558cff71e9f6ddedc6a304ff9f75abb0a6df989aef34c2f70cf1f4cfbb56a03de76f5151d1b20a6b475d54dc83df7d617143c6b07e48342bfde1c307150aeca7771c68084e17ba33320e406c6fd3a6cd573333b3202f2f2fefda9c456179b649821914c593264d3a9194943415e041799dc05613a05564562a325e7c98993a5d9b4a18be6f7dd4f73804f54f404f01e7341efa0457843648f403d040ff78e6cc999f04a5b7ae0a21211a6969691df8f7df7f7f2e2828e0948b0358f15697a7a21d3446e21a79efabac2f41f36f6cfad755ff248af3b6470613a225ad354ff44451fffefd6fdcb871e3a7aaac95b0dfd354c14c445151f10b8bc552a2aa3cbc2961c859b02a1ba52af7d4661105b52fe8b0d5a66f2ed7c8b7095eaef67b3702cc780f0a371306fbecd9b3e37efef9e7abb51ddfcd9b377b4c9c38f1664141411bde8a43544e8d445e9a0b2f3d695cfcc6d054e85f1b3a12d8a30d3a07f41de9cbe8854f461eb2564b4b4be7151616b6690e6e1a4d12ccb80b5f2e2b2bcba9e3c8bb612bfa4bd56693d4c5b382c04ad061abed1804f52f88a3e18ddfc481c0e1909090f8eae5e565bb66cd9aadb52d1482dcf69a9a9a7f8a8888c842ac2480e275f6e4e5cc785f5abc79d204cda3b2ff3736fdeba2ff8a9ceb379998ab06a63ec83a0cce8c2cfd10c9219e562701406df7647d3ddf64c10c6f1472f6047178df4ebcc4aa2836555ce89a1ef6aa2e88a0cddad8fd7f6f1ebc63e20672738c029482475151312b2a2aca60c9922507ab4a87caee4b49495143256e3939394928a6a1aca6e228150bb07c4f7520887ec24e7f41e31744df8a7a629a2fb54b2e2d444b7a1980339396962e6bddbaf5fb0f1f3e7416d44f53f87f930433d44d1c3e7cf8c59b376f8e866842697e08d4e83bb27e55b6a16bbb91aab2c04de930553c08981fe5cac2efe0cacacacaca510ff39f7ffe192328436c55e8837b343535ff387af4e842bc93607820dd27657de0d78ea0356c4af4af2abd2abeacbfa70fa6ef286d396f9c26fd5e5252c21e3972e43ffffefbef849af42d6ccf34553013090c0c5c1d1d1d6d919e9eae41ba02629d05e9811a72116a7bd86a3b5641fd57d43b555420539a71801a5253f7eeddfbc1b265cb1290f9b5b663c3f37831fdf9e79fa33d3c3cbcaf5fbf3eae75ebd6a254698914fd15fbe1e5b66b0b56829eafed1c05d1bfbefbc7f8a968337e27ae17a4efdfbfff3d5d5dddcdf6f6f68d96e6a9b6f4e57dbe49821926f0fcf9f3f6fbf7efd7debc79b3496e6eae524141416beec460c216811f0d5c11582c16e2fb689efff35999bb041fff3bbe3e61dff30912b45931ce2a2e28bfb5e2e76706d7844a2ff4cfb51272dc4b486c21f70f2929a9d2b2b23251e8549494943eaf5cb9720b80ac2e15c6191919b2b76fdf1e1e1010e072ebd6ad91ad5bb7cefffaf5ab92acac2c5c49c47906cf9927d119eb27887e82fcbc04810d97dbff1ffaf2d937ff87ce82f618d767acb2b5c5f782fc1039ffe7590f5ef71c36fc29959595b333333315506e505151311375203434349ee8e9e96d59b870e11e41e505abb83f1bfdb6260b66dc4d2df6e4c9931feedfbf3fe0c99327fde12f0507516c20547ec6a7989858193919d282930f11f7f3db66e1e77c2a68a5aaea5c5b11047815da82faf89fb7908888a04d5ea5e6fec3affffce448bfc20b1825252512a8368ecd3f66cc983b1d3a74f858a5866b7013a2115ebf7edde5d6ad5b43727272148b8b8b65e123474d01b868bc0412f45991feb496246655369c9ad2bfaad3abeffe891e341edefd4560cf4d0d542e23235324272797adaeaefeb26fdfbef79b5b2aa0260d66fc365445a0aaeae663eefbbf1460b3d91cceaca168033f427819d4658441438d5dd8fb69cee7a2d98299b06f2a667c0c05180ad42d051830ab5b7a32ad31146028d0481460c0ac9108cf74cb5080a140dd528001b3baa527d31a430186028d440106cc1a89f04cb70c05180ad42d051830ab5b7a32ad31146028d0481460c0ac9108cf74cb5080a140dd528001b3baa527d31a430186028d448116096670ca7cfaf4699ba2a222f9d4d4d4eec84a5a585828834f168b25c94d5ec7464a66543f9794944476da420505856c2525a54c4545c54f4c2d8146dab14cb70c052aa1408b003354c87ef3e68d5a6a6aaafadbb76fbbbc7af5aa6b5a5ada8f9f3f7f6effe5cb1715847b20477e5151914c6969a9048581203404716c0891929393cb535252fad2be7dfb776a6a6aaf3b75ea9401601b3c78f0adeeddbb3f6e8892672929293f88898949e7e4e4288c1a35ea7e4dbdf29392928620fc0779f30b0b0be16d8fd4e2ff273c8ac562215f5c6b84114d9d3af54a754f516a6aaae2c78f1fdb979494c820761679f9252424cad86c368b9bd944146d23a716c28fcacbcb25070d1a74bf5dbb76b9d5ed8bee479ce7ebd7af7b64656521d96359696929a7f6666517dd83179cacac6ceec48913ef8a888894f0de0f7aa1ce04688634d70895433d046eb85529ee2d2b2b93c03cf0292727573076ecd8dbbc6ddcbe7dfbc7acac2cac5f09f619eec5dc518b01f7f18663898a8a22b48cb31ef89ddff8e9becaeee17d9e1b7bfb6d9df177767676eb993367fe53537a0bd373cd1acc108c7efffefd81f7efdf1f9c949434e9eeddbbc33e7ffedc8e9b979db30e1212129c9844cab8517171902d82bb5939b9e9b17910eb89cd8c1f045f8f1c39f2eaf4e9d34f8d1c39f2d2a04183ded4f5025fbb766d605a5a5ad7cb972f8f4f4e4e1ed3aa55ab822d5bb618d6a43ad18b172f14162f5e7c383b3bbb5d6e6eae02409a3bde8a60c6d91b727272393ffef8e30b6f6f6fa7be7dfba655656e4f9e3c513975ead46fd7ae5d1bfdf0e1c30138bcf9f9f972a5a5a5920060717171160588a346015e1af81b39ea0202026ce6cf9fff5755fae1bd07d9378e1c3932f1f8f1e3f39e3e7dda077537b3b3b3158b8a8aa404800107ec104cdfbe7dfbb7274e9c98ce1b78fdd75f7f8d8b8c8cb478f5ea95068011e3c498a5a5a58bf0e2e3d67028c71cf1d2435bfdfaf5bbe7efef6f45edb0d96c312f2f2ff3c3870f2fc2cb11d8051a200942595999f877e24c2b068ff39b82a0185dbe675c494929e3faf5ebd3aa4b6f61bcbf5982596a6aaa747272f2ffd7de9580d598f6efafb46a4f9164c9944294256106d9434289b1644baba49aac83c4f81b3484842cd993982ca34453313196b40a3328d1648992f64dffeb3ef3feba1eefd7e99c68e65333e7ba5c1de7bce77d9ff57e7eebfd1b7ef2e4c96911111113b0d070b2620250d801c47460a8051920772ad6923bb2a4761c9b44ed3578432c18e08422c2bbeaeaea1a6969e9cadebd7bdf9a3973e6c13163c69c6f8c24def4f474999c9c9cde9b376ffe1620860d0a4040b2f0952b57fa82d4b0a18b0ac5625555555f555757cba1129228560f7c6f6868782f2c2ccc4a54151f004a4444c480d0d0d099172f5e1c9f9f9fdf4a4242429ae5252376584af0a602265c59b4f7cb962df3757676ded110268788888821e7ce9d9b74f9f2658b8c8c8c2ef2f2f2d5b2b2b292f9f9f9c829ad77882021621e514e4f5a5abaacacac4c5542424250f006afc8c8c8af162d5ab4fbf7df7fef8effd39cb32cb7f419f7b7c6d4d4f4664444c42856c25cb060c1a6bd7bf7ba57545408c0b5aefbf01b2aaaedb476eb453ae185bb043fe312f2eb655669e81afb5f5ddfecc00c52ccfefdfbe7c7c5c58dcac8c8d097969696249a603ee5727d8b85aec562a7175172b32486780f800438565656d6a8a9a9e59b9b9b47cf9a356bffc74818f4ac7bf7eeb50d0f0fff3a2828682154e2162d5a48e039c5c5c502e9f0ce9d3b5d3e12cc50ada9824b1eafe58c17b6004196a8abab9b1a1616365e942478e4c8119bbd7bf7bac4c7c70fb0dd8e82000020004944415495929212000940825ec420c167aa20324da8703d7bf64c3870e0c06c6363e3df446d0a807d5656d6007f7fff25972e5d1a03958aeaa5e2b754095dd47da85d727272c55959596d5910faf9e79ffb393a3a1ecec8c83080948e3ee11024ae35cc3f80094cbc7836d641cf9e3def4444440cd6d6d62ee100a385bdbdfdb663c78e3941a3277612fc968a8d886ae35ff53d27694a7facc9e2af6ad7c7dcb75981195482c0c0c08510e721caaba8a808aa3863b1b24c9b584c2c6f3a2b71892276a4454c0569b188b128412f0d123c101842521b3264482cf8a2e6cc9973b2a10b0536bea0a0201794d2835d0fcfc23f86f2b83c2121a15bcf9e3d331a3ae900316cdacaca4a4159367128707475751f9d3973c6b23e803973e6cc88ddbb77bb47454559426d42056d943613c6d38fcfa9c806da416a3eec56a74f9fb61c3d7af4d5fafa06207bfaf4691f07078790e7cf9f77a8aeae16803dee037300a46f029efaee43353a31be2a2a2a6f929393f559a9f0e2c58b831c1c1c0e3f7bf6ac131f8c694ea88f5c35f86a6363e3a4c4c4c401c4fa81f1707474dc76e4c811c7eaea6a592ad2c267f6e5af3d51527343e7beaeeba1ee5656562ab2d26863dcf77f718f660166af5ebd52cccfcf5799366d5a786262625f191919c1090d2906204312155bb9860082ab3624187b0238be0a416a121117b2121d360fcb554fef2165c013fafdf7df7bbbbaba1e1297ce062a726464e4d475ebd6ad7ffefc793b6a273628b37950f0b5b3b8362c7661714053505151019555e49ac338eae9e9d52b99418ab4b7b73f9e9c9cdcafb4b4b425cb6cca15e2ad956430766c4940926a08d8aaaaaa6a502c65debc79bb49b2a9ab91494949fad6d6d617c0344cf4e8044c74e0d0e7f57512d7d2bac07c3d7dfa54a755ab56efe83791919103162c5870e8c993275f90ad1563427dc0752ca8416aeed9b3674a4a4a4a5fb6d88bb3b3f396e0e06017a8f774f8416a650f5616cc5813477deda7435ad835c26cc1ccf5d034a51a7ae08a5c38ff830b9a059881d4cfd1d1715f7474b425bc495820b4b04985614f7ffea2a709674baa0104711f3ae5f1172fa81a54de8e408f7fa292d48185a6a4a494ebe4e414b07efdfab5e2cc6f6c6c6cdff9f3e71fcbcdcded02298f4096a4476ea356252424e8f7ead5eb8938f7ac0bcc8a8b8b95c4f92dc6a45bb76ec92121219385d9cc7c7d7d97eed8b1c3fbf5ebd71a181fb245620c49cd64e9b949e2a079802acb48513523478ebce0e7e7b74898e4999191d166d9b2659bce9e3d3b850a18634e68dc69aec4b139b1d211a4c2bac00c87516666a61e391d590064d700eec5a9cac9494949fdd9030c9219cc06b9b9b9add982cb180302464896182f1a37be59843f5fdcf304fdc63da8f80cde631e082ceb9b67d85f8b8a8a54c5590b9ffb354d1ecc2095c5c4c4987ffdf5d7e7b0d894959505aa1e95d5e23c90027b06261dff674f3d2a8c8aefb000b080502188361ffd0edf53215c70d4c31e432a665daa29a9a15cd1dc478181818e161616b1f52d88870f1f6afafbfb2fddb973a79794949480c29a338c0b7e4692a1a4a46465424242978f0433494545c5b70d01333d3dbdfba74f9f1edda3478f67fcf65fbb76cdc8dede3e044cbf681f557022898cdacc4a30181bea178101e601e389dfb569d3261bf6b7e1c387dfaa63034b6cd9b2c579d5aa557ef00cf2553d56e5c35c8aabaae17700b3274f9eb4636d6690cc1a086690cc12f9603675ead4433ffdf4934d7171b180de1d261080f8cb972f05eb920e2daab940e3c3af6bc13b980400460e0c7c47921ed957c560ba8564d6524242e24f6f58137e3579304b4b4bfbc2c5c5657f7c7cfc10000c1608ec64acf88d0581cd8217a96bb4c8f1575656b61c6e76962f1eb604389daaaaaa049e1e801a6d363c032a2c4916acf444a0436b8203d79a418306c5eedbb76f968181c11fc2d6cbce9d3be7f8f8f86c2e2f2fd7c0fd097459b0e424b3bf0dccd0c78e1d3bfe76f9f2e5219d3b777ec96ffbb7df7ebb7afdfaf5bee40421959c408d400c7d21c0622508924c68dcf01daa06612c162c587098ff3c4865b6b6b667efdcb96386f9c6f3302fec5cd07cd1c125cefe6c4430133800f8603673e6ccbdd1d1d1138b8b8b357018b29a03497acc6155eb5010650a20e98cfac87a89219989924e115e5456560630fbdb9884c5998f8fb9a6498319e277e2e2e27a0d1d3af496b2b2b204a965388db0b9c800cd19666b8dcc00262c74fc9596962e9c3061c2e971e3c69defd1a347b29a9adadb172f5e68c6c6c65ac4c6c60e439cda8b172fda23b608b620a8505860d848d878780601239d827c7b0707acd55bb76e75717777df5bd74421266ef5ead5df1f3f7e7cae8686c67f5ebf7e5d0ba0ff4b30439fbef8e28bfb087fe00706676565a92198362b2bcb90c680543c8c3fc60a9b8bec88742090344cd207811ca31ad5c01bbc6cd9b2d5ddba757bce8ed78e1d3be62e5cb870bf8a8a8a04cd2fcd256d7cbeea27cec61003cc0455c0709d0835b34e309b316346505858d82c8466d0fa24759cc68c3d34f11e8726bfc835ffb0a4be626ce960603506312453c4a9fd1b9a21ce22f92baf818ae9efefefb965cb96e58832670b9c62c1d0a46251e03d360f1bd7a4a5a595b37af5ea1583060d8a810a057024a32d62a6b2b3b3952e5fbe3c72dbb66d4bd2d3d37b53497b3a0dd98d4a12082d363a6569e3a230c7f0e1c37fdab3678f7dfbf6edf3f8e3121a1a3a7ecd9a35df3d78f0a0277e4b1b9f95fa5835333131d1c0d8d838b3a1e38b3e2a2a2ae68bab66e2fe5dbb76bd7bfaf4e9517c603975ead4683b3bbb1fe5e4e45ae6e7e70b408bc61dbf23e983fe725297a0c93ceface070010042c5c7a1d1be7dfb7b4141417683070f4ea43e422ab3b3b33b7eeddab561ace4c7ce29ae659c3022d54cbecd2c333353bb75ebd614488c383352333f09cc1c1c1c368784843814151529a3c80e0e470ebc2803005565043637a4d6292929bd2b2c2c54a6087e5693a0f1e00058601b23404430af8c8c4c19b244c4591bad5bb7ceb97bf7ae21db67717ef7395ed3a425b3ececec563366cc08494e4e1e52505020834d00c0c2e412e0b0c080f7b4610016bd7bf78edfb973a743dfbe7d1fd437397bf7ee9db568d1a2408ade46edc1f2f27294f122bb16a59e0844755257b9b827548a12b407e0191515f5555d20b476edda25a81d8988706c74003036b61030ab4a4c4cecf23782596a7878f8184343c31c769c3c3d3dbf3f70e0806b4d4d8d12176727002952ef587b183e030001d8a82e26d915c9234c4088be4b4a4a16efdebd7bd6ac59b36aaba69f3e7d7a84bdbd7d684545853ac686c0918d27a37be239784fd28fb0f9fd0bc10ca119b5eee2949414dd9c9c9c76489f426cd7dbb76f95e5e5e54b61436bd9b26519b20170d0484b4b5720301a86ac1f7ffc71cab163c7e6c2db581798519fc884a2aaaa5a686b6b7b70f4e8d1e7646464b016abf13cee80adb30a596161a1d2e4c993a33e47706a689b9a3498a5a5a5b5f7f4f4dc1d1d1d3d963fb1987cf26a62b3906114a7364901868686090101017603070eac17cc90b767696979b4b0b050fd8f3ffed0c1625355557d03e9864adb7192084e5c04e90a527470022327514b4beb8f77efdea96b6868bcdcb469939b9999d9efec4425242418ae5bb7eebbb367cfda606102684b4b4b6b8bb7d6a16656252525197c649c598324338c97bebefebd3367ce8ce483d9975f7e197bfdfa7573f69020a98b5479567a555151a95157572fcccaca52263b26fa46362f9a3380508b162dcae7cd9b17b868d1a2f55dbb767d839092a54b97fa6cdfbe7d495555150801041218abd2d3c1857bebeaea161416162ae4e6e6b27537ff6b7ffc5d60c67fb0a88a5700b679f3e6ed3872e48813aea57eb26a231d1600731c261a1a1a6f962c59b2d6dbdb7b27a3610852321b0a0c4df1fa260d66a9a9a99d9d9c9c0efefaebaf83c8660010201587d44e0232ee84aa358acac9c995dadada1eb5b3b33ba0a7a797acabab5ba7470727e3a3478fd4cacaca94cbcbcb91125009a0825f00ef6565656b2a2b2babb97c3b6c1e41da80a4a4a420ff0e121a92ac5bb66c59d0ad5bb737ec898deb222323cd3d3d3d031e3d7ad41d9b94240ed6f6c3b61df7fdbbc00ce3aaadadfd282a2a6a080b66d8603a3a3a992f5ebc40c0aa60cc2151512806eb9da4b66b6868e4b56bd7ee8ffbf7ef77292f2f97a58385d450362d084c25868686c97bf7ee9d0dc9393d3d5d6bc18205c1bffcf2cb88f7efdf232eaa365819cf64c33c2a2a2aaa070c18702b272747273333b3bd381b936c668da8667e209989d306fe350e0e0edb83838317b2405617989149425d5d3d7fcd9a35cbddddddf77cccf39afa6f9a3498ddbd7bb7838383c3915bb76e0dc646a0d4104c2e7f01f01701133a51039b50dbb66db35bb76efd0ac551f5f5f57fd7d4d47cdea64d9b178a8a8a85f2f2f2956ddab4296383201b73e2f7efdf3f63e5ca957e2f5fbed4aa2b3b81c080544eb4233939b9cbc74a660a0a0a6f4b4b4b15c5300e0ba4c40e1d3afc161111319cf5c4224bc1c0c0e0d9bb77efd4ea1b0b329623391f633c60c08078a84f1c0b8540ba227b0f13382b50495bb56a95b56bd7ae39e3c78f8f8b8f8fef8e1089bb77eff6e1db2ae9f93804388f73959d9dddfeb8b8b8e15c7c98c8e9fa5830a31bb3078f919151626a6a2ae2cc444725d7d3326767e76dc1c1c1ae9595958214287e0810850fd118b76eddfacdb265cbd67879790588ec7033bca04983190cc26e6e6e7bae5cb932b6b8b8589a8d39aa43acaffd883c52f80b3b1bec1345454530c0420dca83c486700d151595b79a9a9a798a8a8ac5a0fbd1d0d0c8d5d4d47cd1ae5dbb6c6d6ded272a2a2aaf9495958b3e95dbccc7c767c5860d1b7c388a1cc18624e0a246b3ead0278219d27e0acbcbcb15c44965c2f3bb76ed9a7afaf4690bd6010015bf4f9f3ebf57545408d2a284bd584786a1a1e1dde9d3a707af5dbb76a384848414f59336257983393e39005af1faf5eb3d3d3c3cf69e3871628c9797d79e972f5fc2b32c00418a230388e185c30cef919ae3e3e3b3ecd8b163b3d3d3d34dc4d9b71f0b660462ecdaebd1a347624a4acadf0e666ddab4c95fba74e9ea7fc14c9c19ffccae79f3e68df2dab56b5706040478421564938cd91423b6d9fcb81b563a81aa42ea117e03a083fb1f5c5f525252d50011a8974a4a4a05b07fa9aaaae6b56ddb36a775ebd62f3a77eefcc8c0c0201d1bb621e0065bd0fcf9f377eedfbfdf199e7f922e580746234b661248db292b2b131bcc4c4c4c6e1f3b76ccaa7bf7ee2f682cc1f13574e8d0dbc446226c69d0c181ef7bf7eefdeb8a152b565a5b5b47cbc9c95597959509ec59fc18407c4640ebe2e2e2bf6bd72ecf75ebd62dfceebbef36d5d4d4c8912447d77000265071a1ea4a494915eedebd7bba9f9fdfcae4e4643371966d638119400d92596380999393d3f683070fba3440327bbb6cd9b255ff82993833fe995d535353231b1e1e3e78dab469e790d642d20c800c1b84efc962818c05316c069220581603d6c0cc5e8fcf391bddfba2a222100c56436a3330307860646494d6b367cfdbfdfbf7ff459c08fd67cf9ec97b7878ecbb70e1c2146c6edafcacfad5c86026a9a4a4948f1001922a444d6baf5ebd6e1d3d7a74020b66d1d1d1a663c78efd85286deabb072739551b1919dd0e0c0c9c656161f12bd45cfc16e3ca06d1e23e4cea538d8585c599808080b91b366c58b76fdfbe85002bcc2b1bf641921c45cfb76bd7eed1b66ddbe6af5ebd7a13f24545f58fd60d24d686dacce8de7f859ac981993317d02d8e9af92f988933d99fe335906a929393f55c5d5df72526260aec6638b50990d858a6fa24325c4721052429508a08011a2d78ba0f45bab391e720ea83711e92dae0c1832f0f1b36ec928585c5b9f6eddbffe995a8e3f5f0e143657777f78357af5e1d5f5c5c2c9054f00cea0bdf4ec2815d3512ad3f363403b4df0505056aecf8086b1ffa676060907ce2c4098b1e3d7ad46600c4c4c4f419376edc154878f5ad0d9230315e48f3090d0d1de5e4e474ecdab56b30e4c3eb5b1b73c6da85f039c20a0080bebebedfecd8b163497474b415a89030bf944e4689ea68031d48d6d6d6275c5d5db7787979ed4a4d4ded23cedafd58c94c0898257136b30f186bc569077b8da3a3e38e43870e39fd0b66e28d5c93b699a18b48320f0b0b9be2ebebbba1b4b45495ec2894782b2c1d84242dd68346dc65f80ea0c8e6c5f1a518d6ee46ec0c9473c80162958a8a4a9e9797d7ff595a5a9e16c6400b9ae7d9b3679f8c898919035606d616c44e21df66f6096026a9aaaafa1a60268e6446e94c1111115f191818bca63601ccc68c1903c9ec4f2a5e212f324ee36b4878172e5c18ba79f3e6e55bb76e5dc91ab0d13f0236522321b1e9ebeba72244e3e4c99333525252cc101643734b79b7ac5484fbf8fbfb3b227d0cf44b696969bdc4d90acd05cc962f5fbed2d3d373a7387d6e6ed7347930c384c011e0eaeabae7ead5ab2311d88a245ee436b2a7364d1c3ff890b5add1e6a26be8a427e0220f29494e045e04a0f439fb2c5959d9223737b71fbcbdbdfdea8ab2865770f6ecd9c7a3a2a2ac703fb29961c352ac16eed7186046190e0a0a0aefc4cd00409b3a76ecf8302e2ece8ce5f90269e1d8b163e34481194966e883b1b1f1adc4c4c42f8f1d3b663177eedc1fdfbf7f2fcd26d2d3f8515c20974af570e4c8913f5dbd7a7528d85eabaaaa048e1e3a6858c90fbf078d797878f8286d6dedecf1e3c7fffce0c1831ee26cda8f0533be0380b1992134e36f95cce00080cdec5f301367c63fe36b409db371e3c655972f5f1e878c160acae47bec58db176b64672535022dc67653cb5841c0c20f6be0031ea98bdc3daab76ddbe6849c42fe1042b2747171d90346058e1bbe96128680ad11c10c36b92a549a8217529cd00cb4bf53a74ebfc7c6c6f667c1ecf2e5cbfd274c9870b9a4a44451d4b2a0087d7845efdfbf6ffce0c103ed1123465c7ff1e24547b277113891744c5904dadadacfcdccccae252525f502a7189e45a94c24c9d17ce1399d3b774e3975ea1458678bc68f1f7ffde1c38746a2da4773258235a3ce7426d6138bb586fff7e8d10389e6031b09cc6033133734e3edbf929938b3dd04aeb97dfbb60128946362624683cb1d9567585b18010e011c9daa44b6c7c678d1c244b7d9ec01fa0d7f138a52b590c47ef4e8511b7e6c188a7f7cf3cd37bb08cc28fe8d9502a90fc404525353537debd62d2351695875b509d219e2cc0884585553887d0e36b3ff0acd888a8a32b3b2b28a45793e514b8352c8c02691929262fae4c913d9458b161d3a77ee1c18813f78b1fc5e0073191999121d1d9dec172f5eb42d282850225b22cb6242d21dc66cd1a2459bddddddd78324d1dada3af6eeddbb5033856a20acc45b179801b4419b9d9999290033bcd8300cf640a4cf8d8d8d13929292befa54f656d8cc0e1e3ce85c5555550b66acda4eb65eb40163a0a6a656f4edb7dfaef0f6f6de216a4e9ae3f7cd42cde44f4c4848c8a4cd9b372f855a82046fe49fc1d84cf97ae420c02663ed5d002d96b39ec00f14d0f80d7dc76e0051d20dc37b56e3e7e7b700c0c5b61792d982050b769d3f7f7e32f1f2b30b16d7b289d35c1fca6edebcd9ed631c0048ced7d7d77f5a5252a2c6aa6a249dd42105fea74b972ea9274f9e1cc53a007efef9e7de63c78e8d170566e47d8473a46fdfbed76fdcb8310c128bbfbfbfbda7a767908c8c0cd2246a63c6a8bf7488607c9594942a0b0b0bc1532f30fc93979ab577425a43ac607878b8056a2fe090983a75ea4f0d0dcde0f39901b49d9d9d8fd40766ec7ca24d26262637121212067f6ad0ac386046297b184330e4faf8f8780b6366698e00c6f6a9598219751051f2478f1e9d959494d4f7ce9d3ba66fdfbe55439a8c8484842c51abb036336c14d65e83f7d84c2459e0be00367210b04e02610b059b99931cde9b9999c59d397366124bcb0cea1f0f0f8f9d2499b1a04252002ba57152654d4c4ccc8061c386dd6ce80245b06bbf7efd1e80de9a6f23142699e9e9e9a58787878fe0c7990d1f3efc266c58f5b581c00cc9d566666657af5fbf3e1a60969898d8d1dcdc3cf9ddbb77a886249076f08f1c362cc3062b11b13645928488fd17e955376edc30d3d2d27a7df7ee5d9d79f3e685dcbe7dfb4b71c6886c667ca659516046070f396ea4a5a5df9b9a9a5e8d8f8f17f4539c670bbb465c3023355e5555b568e3c68d6e4e4e4e873ee5b94df5b7cd16ccc8d88d382e1d1d9daae7cf9fab5cbb76ad37aa36252626f67bfaf46947d0a420cd06351d9143c96c1a414d56da6400239262c40967e02f06dc074e898a8a8a62b05db0398e9020162f5e0c309b4c1cf3042a0436acfacbddfb7d7070f0f4d9b367873674e1811976d0a04129d096f01cea97b0fbe09ace9d3bff76eedc397316cce0cd1c3d7af4b5cacaca7aeb52e2be1c0d52f5e0c183a3c113c7497f3203070ebcf4ebafbf0ea16703f8d0571c34a46e1358b001d12c753973d0d44c9e3cf9785858d85c4844c9c9c9edecececce37d49bd95030234996a8b071588e1831e2fcf9f3e7a7371298b9606df24d2074d0e1731a034d4dcddc9d3b77ce9f32650a5897ff71af660b6675cd24c2205039494747a732373757eed5ab57ea28525b5454a4f8e4c9934e9999995fa08848767676a7ecec6c1d482f525252ef915c2e2f2f5f06e902942dd89c14750eafa9a81713e05979fbf6edeebd7af57a48bf419b90187cf6ecd9af41ffc33a2c08d4c8ae45e10bcacaca05f6f6f67bc090a0a5a525ba014c030f1d3a3419a1200a0a0a12683b3d43581f002abababaf72323233f20670498595a5ac689e300e04ab415dbd8d81c030b043dcbd7d777f1faf5ebd721f8992432001a245e961503d7e31e34d6641ec06ff039e88050e2cfd7d7d77bd2a4492188eb43f5773b3bbbb3292929089a15db66f6ecd9b3f6eaeaea05d4465192199919d8397674740cd8b973e7e24fcde545d02c723345811925f8e3d0090e0e9e3578f0e0ffa21b17b5469bc3f7ff2830133661b055bd7cf952beb0b0b0859e9e9ea0d0636e6eaeb49494548bc78f1f6bc5c5c58d4c4a4aea9d9a9ada1bccb3d81ca43e895a04047cd87020ce0b0909b19c3469d2cff4bb870f1fca2e5fbe7c5f7878f83422ec63ef59d77390713078f0e098e0e0e0290d499dc27de7ce9dbbe7e8d1a3731188c9c679918481bfacba89f786868629e7cf9f1ff2c5175f7cb0c96d6c6ca28a8a8aea250124f50b89fb4b962c59e3eded1d44fd8394c8a544093cab7c5e3336e68e25d8a490150ad100a0c9cacae6c7c7c79b484848bce8debd7b454a4a8a0ecad0ddbe7d7b607d4caa7c074043c18ccc148c9db3c6dfdfdfc5c3c3e393992bc40133b49f9c22262626770e1d3a34439c9aa3a2d66d53fcfe5f3013316b003a684a4f9e3c91cccbcbd3d9b163c737a0b6aeaaaa1250d888e268c7ed61d3c0c62b2b2babd9bb77eff4f9f3e79fa0c7228b61faf4e9fb4f9d3a6507173ca90f6cac1bd42e3c8b3637a4962e5dbadc3f7cf8f0d7fdfbf74f1577e1211e6fdcb87197333333bb22758a4ac2a16d789154c8ffbfa9a9e9f5e3c78f0fd3d7d7afade8fbd34f3f0d9c3a756a64494989727dcf07f0a0fd7a7a7a0fc0eb3f7af4e85a3b1ff2690d0d0d931e3f7edc1d3449783efac6a62ab19916d446b221d278282a2abeebd8b1e3a3f3e7cf7f49344e90cca64c9972898b33fbcb2433d6138ef6b568d1a2322a2aca1c74e2e2ce8bb0eb38305b803a14c2d44c0274fcfdeaabafa2f7eddb379d4f6ffea9ed682abf6fd26006cf5c505090234a65a1cc19d4404545c5a292921239448a83f502c51a386903a946efb130388042f238fedf02e489969696e7c40975387cf8b0edaa55ab363e7ffebc53454585c8f1c3226378beaac2c2c2c69a9a9ac6b3294ef3e7cfdf7ef2e4c9d9e04ba3454b8e086e83080011d21da557218cc0c9c969879f9fdf2a718b51040606ce5db264c9b6a2a222253832ea62b2e54b66087118326448f4952b5746b18b3a2222a2bfadad6d942830a3c47d2323a33bc8ef343131f9a0a08b9393933f0e075044535806955a2350e3db29597b26a78e566ddebcd979e6cc99a114988cfa0496969697d2d2d2fa8ab319c901909d9ddd017520e837172f5eece7e2e272541c6f26e6594646263f3535b57ba74e9d3ea85d204e1bf8d77060e6064663616046c0aea4a4543a76ecd853274e9c80cdf04f82b97fd84be466fc9cc703798d6e6e6e87af5ebd3a022efee2e2e216aaaaaae530fe171616ca80e9a2458b1602964e04d1b31b158208a87f6464644af3f3f395adadad437c7d7d571a19193dadafcffefefe0e3ffcf0c34a54d1a64a4ff55dcfb2600018ae5ebdda97e5b5c76ffdfcfc5c376cd8b0e6eddbb79af83fd52a804443920d71b491a4222d2d5d891270bebebe2bccccccaeb301ad75b5272c2c6cd4ba75ebfe0f715772727292086f60431bf8a95be41c9096962e9b366dda41b037b0f78d8a8aea636565f54b6565e507b517704ff21433f158ef274e9c18b27dfb76077e9eea850b17065b595941ed9662491ef19e2a7fb33643566aa4cfa176474747f719366c181c1b82576262a2b6a3a3e3a984848401a2d63081a3bcbc7c215fcd4442bd8383c3b1274f9ed4c699b101d6f82dd6010e079400ecd3a7cfcf313131569f1a96813603cc0e1d3ae45a565626704e9174cea671e173ac0d7575f51c1f1f9f6f5d5c5c0e8aea6f73fdbe498319528156ad5ab5816852c8458d49272606caf363e3c1589b104ac1a1341df8f9c78c19f3939595d5491313936b7cd6d9cccc4c5510031e3870c0890ba31088fefc0c03610b05cf07c536ec3aa6a6a6bfb1d7a13008e2cfb2b2b274f139fa813602708812990535bc875405fe355353d31b96969667264e9c788a1f900b15f6d6ad5bfa904e42424266c5c6c68e801d10cfe06896ff8342241474ca16eda5005d24a5af5ab56ab98787c707d90b172f5eec6d6969f96b7575b50c5dcb56192280c05f145059bc78f19a952b576ee78f4f6e6eae52bf7efdeefcf1c71f9d10e6c1da80587b14fd8e1fd7873185cafde38f3f9aebebebd756224f4f4f57b7b3b3bb909898d85fd4e6a5f5006917849fac1d92730040324311e00fec8904d61446024f664040c03c4747c763a29e29cef700b303070e2cc4b55867ace799bcbd747820bbe2e4c993d6c20a358bf3bca67e4d9306330856e0f05fb87021cab749282929098a656071d2c614164bc54e1c138859d3bd7bf7546363e3444d4dcdd73869e5e4e4ca11f0f9f4e9d3f68f1e3dea929a9ada0bf439e23a00f07c808fbcbc7c95a6a6e6c3e8e8e82ff952d4e341277300000baf494441548d1b37ba79797905a6a4a40c82244925f358460e36ee0a52000278397b1dbcb34fc1a7d6a143874ca4ff805cb2b0b050f1ddbb77caf9f9f91a705c0028011664bf23e909f705d5381d0014904a4676a4328586865af101f8d2a54b26e3c68dbb515d5d2da0f1212989c61e7fd146f41f87c3a64d9b160d1b36ec4e5d1b66c28409215151511320e5f1e97c5802473694849e87ba8ff3e7cf0f080c0cf466ef8dc307c1b3c9c9c9a6a236298199bcbc7c11bcd8f57933295c87f2714952c45c6968686423cead43870e1f147e11f57c61df03cc407b84efd9143b3a3cc8c6a8a0a050f2f5d75f1fdcb76fdf22b68afac73eb7a9feae49831906fd975f7e319e3c79f285bcbcbc76f83f79c4f01e0b8c2a23d52599d122515353130003979c8eaa4bd8dc3588dba9a8a89006032c4232a096fe99cd22299098a8de407d934f6937500b5d5c5cb6ae5cb9721d3fe1fcf1e3c72a9b366d5a131414e40e30a3822b043254d9087f69736341a37f64c447b528b4434545a5802bec2a8be8fcaaaa2a19548b62090cd126b41fc4932c132ca932143355595959636e6e7e29383878225f52bd72e54a0ff0925557572b504605d9f3d8cd07c9c9c5c5e58765cb966d101646b275eb56471f1f9f8d252525aa6c4606cd19a59691b19b24247c0e36daa3478f4eb4b1b18966e701f17bb6b6b691a9a9a962d9ccf0db962d5bfe17984546469abab9b91dc9c8c83020d0a643865d53f054dbdbdb07060404783756011192cc5840a7d436b6afa07dfffefbefbd902bdb5481a831dadde4c10c2ef855ab566d8d8c8cb4a9acac1404bbd2a267ed55e20c165b19895bdc02758cd427624465991e44a533012cb8949392d3a74f8f01a1615d8bfdc89123362b56acf07bf6ec5927000d62a9a00232e940b55e3e920aa84f001152eb283b01df11502174011b82f514e27b4ad866f321f119ee01094d555535dfd3d373bd8f8fcf0ffcf103988d1933e67a595999221f6c4855e4b8d01256ad5af5adadaded25617370e7ce1d3d4851393939baa4bab326033660992432ee5ed5eddbb7cf4c4848e8ada9a959c8de1f055066cc98714e1cc98cc01192d9b367cfdab1191a7581190baaf82de6484d4d2dfbdcb97323f812ac38eb4ed835a80180038e5d63f41e6dc0bc83de7dfcf8f1a10101010bd9767fca739bea6f9b3c98c13379f8f0e109cb972fdf01e90c0b9f6a4e9207a83ea90c1b8e36109dbc24c6b309cc64bf61ef452050dfe4e37a18a8e7cd9bb77bcd9a353e3a3a3a6feabafeb7df7e6b079e2f78f6406344361116b828e5875467fe894dea12392628368bd4112e715b606fc367d42702697c4612273cbf83060dfaf9871f7e70e9dbb7ef637e9b6362628c2d2c2c6e807d83542d92ec08cc5ab66c998752713367ce3caaa7a7f74ad838c161636e6e1e71fdfaf591d5d5d502cf1da9d5fc30119a2f3c03c56e478d1a75eefcf9f353f9f74e4949693d7bf6ecf39fca347be9d2a5be2093ccccccecc27f06cd038adeb8b9b96ddab061c3778d090400b3bd7bf742cd94601d34e40cc267a0555abe7cf9fa7f6ad43f3bde4d1eccd019b8e1972e5dba25363676e2cb972f55b1c8b0e8590a6cea34ef64177ccc51600bae279b0d9bdc4d1b9fbc6b6ce880a874201475edd4a9d3a3e3c78fdb880afd4074bebfbfffd2b4b4b4dea8bf49ea1ed9af4805234982da8e36b08486e83fdaca4984b5aa2949791803d817c93647f763801ab6c3146419787979edae6b83464747f7b4b0b0b82d21218182b51f24eca33d1a1a1a85c6c6c657b76cd9b2509c84781420d9ba75eb3204e1b273847b93f303eda031c1e7cacacaf9ebd6adf302532fbf8db09959595945a7a5a589c5348b316bd9b2e5bbfbf7ef6bb11e57786d9d9c9c42e0cde4db5fb9508c323333b3d8c0c0c0d98d1ddf05303b7cf8b00b3250585b22fa8a43475959f9a58787c7467b7bfba08666823426e87e2ef76a166086c1049fd9d6ad5b41ad3c06aa0f01005f2a23e9856fc0655519362813ef712d4bd44811d714b459cf64bed7d5d57decefefef6665652554cda2df23ad67d7ae5dd3376fdebce2e9d3a79d6565652529b68c1633b583543b6a1beec10fe025a986bc6e2cc0931a47f61ff2fea2604bdbb66d33274c98706af1e2c59bdbb76f9f5757ff6263638d468f1e8d82267294904f49f59cadeda2bbbbfb766b6beb8be22c76903d22cdeaf9f3e71d29a68e40162a37d45e0a59a17e22ab203a3adaac478f1ecff8cf484f4f57b4b5b5fde5debd7b22ab33918aaea0a050909a9aaac5da07e1e87074743c999595a54f36419a0b0505850a0303833b6bd6acf9d6d2d232569c7e36e41a6767677f78332b2a2a2459fb280e2e4343c37b03060cb882823e3a3a3af98d65a76b48fb3eb76b9b0d986160c140b17af5eaf5616161b310344b271881131b885a873452e7dc10f8b15fb2008905ceaa84243d292b2bbf45d5f34d9b36790e1b362c8e6fd311b610d2d2d2be888888187fead4a929b76fdf46b932097ee80397b82d32491ccfa82be0149f531fe0fc806d8e2451d40a9d3871e2096767e740368794df5e482c08cd405a14be63ec723503070e8c737373db3a6ddab4287193ad919d60676777fce6cd9b43b9a2c9b51e52f252e3399454ada4a404c92f213e3e7e585d6379f3e64dddf9f3e787a6a5a5d5ebcd643ddf8a8a8a056969691f80d9d9b367bf5cba74e98e070f1ef422c70f7e53525252d3af5fbf5f51a7921f04dd589b1c92596868a87d494989027986d106f0d1d9d8d81c5fb870e16613139367ffd42059fe38372b3043e790b81d121262b767cf1eaf9c9c9cb675d14363311208b1fc651fb308c9b6837ba2241da4060d0d8dd753a74e3d8242b4fdfbf7bfd7d0fb666666ca4545454d3971e2c44c48167979799a004936fe0cf74488063c92f5bdd8ba066c5c1c0130493b92929225dadadacfdcddddb7585b5b1fa9af080b27091b5959595d4541131c1cb89f9c9c5c519f3e7dae2f5cb870fb9429532e34b4dfeeeeee1b424242e6e6e6e6b6c16f59351b6da7c4727879d5d5d55fcf993367d7962d5b56d7f51cd8cc9c9d9d436fdebc3908f1a6c2da42aa3867a72b292d2d859a5b45d7236dcbdbdb3bf0f7df7f370660631e141414def4e9d3e716bcd3d6d6d67f9907111440c1c1c16ee837e61e87989696d6231b1b9bd0193366ec17477d6fe81c34e5eb9b1d98715287f4f5ebd70d0e1e3ce808b5b3a0a040155c662068247b1a3f8a5a9c49247584a43afce53ca045381db1c1cccdcda3a74c9912825a93dadada25e2dcb7ae6b1010fcf0e143bd8080008fc78f1f777df4e89101fac1c674910da7be67d0f5742d3945b8f27a351a1a1a190505052a502be7cd9bb76bd0a041e9e29cf41111115f4e9e3c3942551543fb561d29617072b8baba06b3715a0de97f7878b8b9b7b7f7ce9c9c1cbdd2d252193535b54ad022151515b5909595ade48afc9643524138c29e3d7be6f0b329e879e04b9b33674ee8fdfbf7f9054dd8358f14b71a107882cd15c1bdf7eeddd363ed4fb00d7a78781cb87fffbe096a27b46ad5ea151c1a3367ce0c662bbc37a49fe25c5b535323edececfcc39123471c151414aaabaaaa2a0c0d0d535d5d5db7cf9c39f3ec3f399e4cd8f8354b30e3000d7d93484f4fd7b975ebd6804b972e8dbb79f3e680972f5f6a638348494955c063873cc5fa16176b8bc07bfa3ffd6dd5aa55ae919151cac89123a3befaeaabb8ce9d3b67b469d3a6a4316d18884a0f0f0fb7b970e182157204392faa64414181627979b920f754d8ab458b16efa5a4a4aa600ba3942e7857e10944aad29c3973f64f9830e1474890c40127ce66439b0202029cf2f2f2d4e7cc9973a877efde69500feb2ada22cefd700d5877d7af5fef919797d711b99a88dd82bd084553d4d5d5df0270e050a9acac94d4d2d2ca5cb26489bfb0342e24b12f5dbaf49b8c8c8c6e422433415c1ed60262d54a4b4be55ab56af53c282868259b8a84100f3f3f3f4fa4804d9a34e98c8e8e4e065bd95ddcbe7dcc75070f1e9c12131333b25dbb763923478e8c183a74686263a4497d4c5b9ac26f9a2d98091b7ca4f810d0b0efc5b9fe739b50380c44f1cc635363cf8a9b8cde903e26242448f7eddbb7b221bff93baf0531a72875996d8f38ebe1ef6c3fe6ee5f094cfc11ff7fe3d0a4b380c390160000000049454e44ae426082, now(), NULL);
INSERT INTO `phppos_app_files` (`file_id`, `file_name`, `file_data`, `timestamp`, `expires`) VALUES
(3, 'MOUSE_LOGITECH.jpg', 0xffd8ffe000104a46494600010100000100010000fffe001f436f6d70726573736564206279206a7065672d7265636f6d7072657373ffdb008400121212121312141616141c1e1b1e1c2926222226293e2c302c302c3e5e3b453b3b453b5e5365524d526553967668687696ad918a91add2bcbcd2fffbffffffff01121212121312141616141c1e1b1e1c2926222226293e2c302c302c3e5e3b453b3b453b5e5365524d526553967668687696ad918a91add2bcbcd2fffbffffffffffc200110804b004b003012200021101031101ffc400310001010003010101000000000000000000000102030405060701010003010000000000000000000000000001020405ffda000c03010002100310000000fb800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0cdc5c67b2f9be73eb1f1b0fb378799ecbe329f64f91de7d3bc2ed3d06bcca0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000397c43e979be2398fabf23cbc8d9aa8c1988a00c1a713ad025183318e788eff0057e6f13eff00b3f33da7e8ef92fa13b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c9f287d3fccf95911454150580008541cb8359e9311505415054004c731d9f51f1581fa73f3ff00b23b8000000000000000000000000000000000000000000000000000000000000000000000000000000000d06ef99f2b80c94000002021521505623528da82b11920a82d82a0a82a06198f6bec7f31de7e8ee4eb000000000000000000000000000000000000000000000000000000000000000000000000000001e49bbe275d1400000404020442c90ca4185c46d6232634b711920b60c98d2a5000128d7f6ff19a4fd45e0fbc00000000000000000000000000000000000000000000000000000000000000000000000000349c7f0d90a02c00012c12c1024b89620394ea795a4f55cbb0ec9e36c3d472f50b8d2dc696c1920c9295050144990d1f6bf1facfd41c1de0000000000000000000000000000000000000000000000000000000000000000000000004f81f53e78cb25004a200092c12c110409ae79665bbd1f48f3fb36eb3372c3a393ab69f3dc9f57c2726cf2bd036d832b8d2d8324a505054a00c3383f4afcc7d73ee00000000000000000000000000000000000000000000000000000000000000000000000e3ecf853ccdb8e64a00010096096096125849790e1f6f87dd1adf3076724f64f39f410f9ae8eff28fa1ddf23f4e6bf03eabc732bcbd25b299252dc696ca2ca2ca0004d1d181f6feb7e71fa38000000000000000000000000000000000000000000000000000000000000000000001c7f9efade6998000008b0404b08b092c279fe8f9a7afd729e17163f42737768ea36e3943978fb798f273f5fc03eb346cc8f9cefe1f40c6ca54a5b29416c141400251a3edbe3779fa300000000000000000000000000000000000000000000000000000000000000000001a37fcd9f2bbb56e000000202012c2024b079de8f01efca3e5feabe6bea8f37a79f79ba3134f374693a7c0fa4f9d3dbdda771f3dddc7d8620b65283205050500004d1d1a8fd07bbe37ec80000000000000000000000000000000000000000000000000000000000000000007e7df7ff991bb29400b0000808b04b08b092c1c3ddc47bc0f9efabf96fad3c7dfa779b71b0e7d3bf49e87cd7d4fcc9ec6dd5b8f03af93acc4a2ca505b2952941400520c33863fa6fe59fa39d8000000000000000000000000000000000000000000000000000000000000000003c9f86fa8f99375944a200002012c12c12c22c27176f11ef2c3c1faff008ffb23c5db8666c5868d7b713d2f95faef943d5dda771e075f2f518d9450a0b6514282800a08b0d1f61f23ed9f68000000000000000000000000000000000000000000000000000000000000000003e23cbddaccd2804000040251258258258387bb88f781f3ff006bf1bf6678b906d961a4a7adf39f49e01b376adc781d7c9d661652d9459450a0a0a002812c35f5730fd34000000000000000000000000000000000000000000000000000000000000000007e679ebda5b28008000400125125125138bbb84f7e58781f69f11f6479d2c3610d76647a9f39effcf1d9bb4ee3c0ebe4eb3128b28b2940a14152805416061867acfd3b3d1bc000000000000000000000000000000000000000000000000000000000000000619e07e67bf4ee294022c00012c008b08b08070f7709efca3e63ebbe43ea0c26accdd20c32c21dbf3becfce1f41bb0ccf03ab97acc2ca50285050500a000018ead981fa37579fe80000000000000000000000000000000000000000000000000000000000000000d3bb94fcef769dc5b2801000025100944944944e1efe03e801e1fa7d9e417a7ceec3ad80c3467c47779dbbda31961e075f27618594594594028281650000431c33c0fbef4bcdf48000000000000000000000000000000000000000000000000000000000000000639627e69b30ccc81408000094400101160e1eee03e801d9cbd591f29b7e9790f39da3c9e7fa1ec383d1b0e09962781d9c7da605255250500281650010030947dff007f3f40000000000000000000000000000000000000000000000000000000000000000c3387e6b72c0ceca00000001144025100e0efe03df075658e45b0500021c78e589e0f67176988141650014000580040c32c761fa0f569dc00000000000000000000000000000000000000000000000000000000000000001f9ceae9e533b2952800000000116003cff43cf3df07565864648280832623931cb13c0eee2ed30a05002ca00000025825c4c77e8ea3f46639000000000000000000000000000000000000000000000000000000000000000007c2f99ee786679634b60a000000000001e77a3e71ef83ab2c29920c988c98d2a0e4c72c4f07bb87b8c4000a4a0000020082218f770fac7dd800000000000000000000000000000000000000000000000000000000000000000f98f99faff912e58645b05b054a0000000003cef47ce3df074e58d2d82a0a82a0e5c6c3c1eee1ef31000000000802020883ddf0be9cfa9000000000000000000000000000000000000000000000000000000000000000001e4fc57e83f0061652d82d82d82a50000000a279de979a7be0e8ca50a000128e4961e0f7f07798a88a22c000100404041032faff0092fa13eac0000000000000000000000000000000000000000000000000000000000000000061f9e7e8df9e9c971a6560b60b6500a000059401e6fa5e69efa0e8c948a22d31511472cb0f07d0f3fd031580096000801010108207433c4fd1ef374800000000000000000000000000000000000000000000000000000000000000003e1fee3e54f9bb06571a5b06482d9402800a001e6fa5e69ef03a2a91445114458734b0f0bd0f3fd024a2012c008040404040853b30cc7ddf4800000000000000000000000000000000000000000000000000000000000000000f0fdce23e070dda0b652d82d82d94a94582a500a0be5fa9e59ef837948a228800344b0f0bd1f3bd13104582582580825808080133c371bbb38fd93eb000000000000000000000000000000000000000000000000000000000000000000251f9df27a5e695296e34c929528b29528b05054a5f2fd3f30f7d06f4a085415001aa21e1fa1e7fa040202582582025840258083ab97b8c7ea3e5fedcee00000000000000000000000000000000000000000000000000000000000000000007c8fcff00d8fc81802d82d94a94a94a0a94a9402f9de8f01ed036a5000102a0d72c3c4efe2ed2100202021010020102f6f2759d1f75e6fa600000000000000000000000000000000000000000000000000000000000000000001c1f0ffa37e7a71582d94594a94b60b60b60a0a0be7f7f9e7b8836251667119e5dfb31e3f1b1cf5ecd96133810f1bbb83bc92c040412c12c12c12c00943776f3fa87d88000000000000000000000000000000000000000000000000000000000000000000007c3fdc7cb1f30cb128282d82d94a9458324a2c17cff0043ce3dc4a6681b756cad7d6d9af673b9de3e9dba7a3d0a8b5e40f17bf83bc92c1012c101012c12c0014ecfa4f9afb23d2000000000000000000000000000000000000000000000000000000000000000000000f91faef833874f5729505b05b28b295294141528e3ecd275eff37d21940d9aec47b3b3cacf1e2d1ab2c766d4a999867c07177f3f4101008101008096003661d06dfd07f3efd080000000000000000000000000000000000000000000000000000000000000000000007e77f77f045e4ece420282a52d82d94594582d8283cdf6f8398f6eca2c150009613c3dd91bd60040404040400003b38fb4c3f44fcefeccf480000000000000000000000000000000000000000000000000000000000000000000078ff23ed78c5e7dd89ce0a94594594a94b60a0594a9473748f3bd9e2f38fa378fd876358d8e4e43d3f1f9bd034f6a100944944960040402512865d1ae9bfdef0bb0fb400000000000000000000000000000000000000000000000000000000000000000000d47c4734c8c32a38d60b05b05b05b28b28b280505001ab4f58f39e88e3ddb80801002020960040400029d3af7f39d37187e85787b800000000000000000000000000000000000000000000000000000000000000000078fec7c99e26729687261bb51014152941414140b28b2800000096004025825825825825800032999d3a76626c8ccfa0fa0f89fb60000000000000000000000000000000000000000000000000000000000000000001f9ffdbfc1994b0b6646ae6ebe4202a51652a51652a52800a0a9400001000808080804b08b0000bbb5749af6f37618e78d30fd0bf3ff00ae3d3000000000000000000000000000000000000000000000000000000000000000001e07cd7770832267af71ab93ab9cd6b058282d82d82d82d828160b650000400200202020101000594bd9c9d670fa3e7f6132c37187afe46d3ef0000000000000000000000000000000000000000000000000000000000000000097cd3e35299cd9a89b35664d1bb039e581294141414141400505000944040080101010100416ca6ce8d5b4e0dbab69d7bb4ee34cd9acfbbdfe17ba0000000000000000000000000000000000000000000000000000000000000003e57eabe08d1b20cb56cc0c72c320999c532c4960b65165165165282a500a0a8280400804b0024b0104b00202e529d3921aaedc4cf6ebcc4b89d9f67f9ffdf94000000000000000000000000000000000000000000000000000000000000006af81facf9332b28c36626ab8d19e34e6c36ea202a52d82d82d94582d9402800a8001002012c1012c1012c052e58e675ebd9acb2c36672896187dafc5fd09ef800000000000000000000000000000000000000000000000000000000000000f96f1b7e8322919439eca58863a77e83102c192516528282d82a52a0a00008002011002101010a52edd5b8dd8d101bc05863d9c989fa0000000000000000000000000000000000000000000000000000000000000018e5c67c465321652e2a73d9912658979bab94c6582ca2ca5b28b28b28b28b2802ca0020025808258202020405b2996fd1d05ca64633286e99606732c498e70fb9dbe57aa0000000000000000000000000000000000000000000000000000000000003c7f63e64f132524b06586c39acc8639e065cbd5ca612c00b60c92952941416edf48f20000000859eef9a72440044042000658e465d3cdd433c7618639e26fd7b3599a6662ca1ec7d1fc77d88000000000000000000000000000000000000000000000000000000000000f8cfb3f8231cb1d8618678173c3339f2c73186dc09cdd3ce6a96002c16ca5b05b29529d7f41f3ff00407cadcbdf3e76fd7729f36db0d73e93acf919f53ca61e6fa9e61c72c12c1011010582e58e467d3cfd065b75ee35e1b359bf4efd2659e19970d9a4cbef3f3efd040000000000000000000000000000000000000000000000000000000000007e7bfa17e7865bb9fa0c30d9a8cb2626adb86c186cc4d5a37e8354b080a0a94b652a5283b3dff9ff00a038b7df38e4f5fc0ed3d6c3af034f8bd5e69f42f3bd7278decf8c70c08084110000b96391b3a39fa0d9bb5ed35eadfa4dfa76426cd3bcc756cd64fbdf83fb837800000000000000000000000000000000000000000000000000000000000d3f03f79f084e8e7e8269dba0e9d5bf98cad8678e589a356dd26ac72c420b60b60b60cac16c1d9f41f33dc65ecfc97a074fa5c3ca6fc3c9ea3e8bcbc379dde5e3c87b9e3e7c66980810820202c19658e46ddfa371bf6ebda6bc7212e1b4d3bf9fa0d7867acbf63f1df5e7a000000000000000000000000000000000000000000000000000000000000397e17ef3e0c74f2f51af4ecc4e8e6ddacdb886786781cfab66b34cb080582d82d94b60b651652a0a0bf41f3fb4f67c3fa4eb3cbcf77ce9a4825820496096040b299658e46ddda371d3b756e30069e8d1b4e6e8d3b0bab76833facf92fac3d3000000000000000000000000000000000000000000000000000000000001cbf09fa07e7e3a79ba0d570da6375ed2658665c366a346ad9acd58d8258016c16ca54a5b06494a94582a0a80404041101040016532cb0c8dbb74ed3ab773f418cb892b00cb59bf9ba794d9f5df21f6277800000000000000000000000000000000000000000000000000000000000c7f3bfd1bf3932d9853574e8d86bddab232b29969dba0d5af3d66b9610002c16c19252d8324a54a5414040202080882581000b299658646dd9ab61d1d3c9d442174edd66de7dfa0dfa76604fb8f85fbd370000000000000000000000000000000000000000000000000000000000007e7ff00a07c59e7c6b36ccb51b6586771c8ba37739ab0cb030960415054a2c19252dc696ca541920a82c0104b04092c10000160caca6cdbab337f5f17608c440638ec31bab69aff0043f82fbd0000000000000000000000000000000000000000000000000000000000001f31f4fe51f1903660a64c722e586465cbd1c84c32c0c4808541528b05b06571a5b0505b05415020202208021602c152972c323667af33676f9de8171b883126780d7b30a7a9f61f3bf4400000000000000000000000000000000000000000000000000000000000030cc7e6b7a790b9614b9614cee14cb8fa398b85849608002c1505b05b06494a94a82a0a8042c4100812c0058282e58d33cf0c8cbb38ba4dd1062170cb599e369f67e8e39000000000000000000000000000000000000000000000000000000000000007cb7ce7dffc002195c4657118e9cf5820c6c0010a82a5160b71a54a5b8d2dc6950085885885804000002ca5b2996586465bb46675c90ac42217d5f27ec0f60000000000000000000000000000000000000000000000000000000000000003f3dfd0be78f938150541ab182822c2020000160a94a83241400004854021600002ca2ca5b296c16e23b6614ca48541b3f43f95fad00000000000000000000000000000000000000000000000000000000000000000fcdb57d37cc9085c6eb30b8d320012584580000002c1505b05416010580000000b28a16ca00486fd9cfbca82dc7d83eb3a000000000000000000000000000000000000000000000000000000000000000000c7f38fd27e7cf90994269dba0594c9285131ca1265880400002c150541505415058002c1400285b29409612585e8e6dc676532fbef9efae00000000000000000000000000000000000000000000000000000000000000000000f81f3bf47fcf0e6d76006571c8a04a319943158010002585415054150541505001528b28aa2800884033c074f4f3fdc9e8e6000000000000000000000000000000000000000000000000000000000000000000003c1f787e538fd37cd10172c696ca0a62b0932862a31580116000000002ca00b2828aa282845849710059ec9e9fd5800000000000000000000000000000000000000000000000000000000000000000000000f85fba1f944f6fc500cae34c9289449943158499424ca11449942288a2288a0a2552550a15400092c24b01e88fd0f0dc00000000000000000000000000000000000000000000000000000000000000000000000000f89fb61f943ec3e48c6ca5b8e42ca2518b2862ca18b2862ca18b218a88a2288c845a63682d255250018d82045fa338beeb6800000000000000000000000000000000000000000000000000000000000000000000000000001e77a23f34e5fd4fe44f9ab616c14051265093218b2862c862c862c862c8636d3164228288a2012c2026ef5fec4f2bdc0000000000000000000000000000000000000000000000000000000000000000000000000000000000e6f8cfbc1f963f46f963c365895280144511445126431642288a228801014c5ebfd51f1ff0059eb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d7e07d18fcf787f50c4fcc1f6be49e05eae73100002ca45116001779ccf73d63e37b3ef3a4f96f7fa800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c721c5c9ec0f9cd1f543e370fb51f0afba1f159fd90f93dff004a3c5eaf406bd8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ffc4004410000103020206070408060103050100000100020304112131051232415171102233406061720613507320303442526281b11423244391a1c1155382257092a0b244ffda0008010100013f00ff00efc0e7b183ace03994ed2342c16f780f2474cd246300e2a4f689a366368e651f689e0581604ef68263f791d3d55ff75ebfebb54327bd688d2ce9e5709a523d4b4ae9014f1b0c32f5bf29434f55fe37affaf55ffdd7a6fb433ef7a67b4728ccb133da4bed46cfd0a8b4ed2e1763c26694a1758096dcd472c4fc5b235dc8ff00ec09735a2ee20053e95a4602038bb929fda3388606b54ba6aa64c9ef29f5551222e98e7215a8379256a3382d56f0561d2e716bd963c507973f13f77a6c382d56f008b19c16a0e257f3065214d9e7628b4c55c5f7dea0f68e4c0481af50e9ba3906f628e48e46dd8f0e1e47c773690a583376b3b80553a7dc016c566a96baa663bf99443ddb4f2831a377d55438b3508503cbdeebee1f5458d3b96a96ecb8851d554426e09e6152fb433c783ceb054fa5e8ea08d73a85020e20f8d490154e95a7a60750eb3d55e989e7366929c64936ddfa041ad190fadabc99cd526dbf97d6968398403d9b2e54ba56aa94e0e2a8b4fc1280c9c6aa6b9af01cd702388f195569082941c439fc02abd2f34e755a51d779bbdc4f92000cbebeb490d65b8aa2712e7dc6eee1a841bb4d952694a9a4760f202a0d354d3b431f663fc5f248c8da5cf70002afd359b22c027ba498dde6c382000cbb8cac6bcb0385c28e3646e3aa2d71dc480559ec37615a374ecb4e4324eb3153d54352c0f8dc08f1655d74348cc4dcee0ab7494d54f2014198dce27b95d3f69a86d7e8aeafdc5cc0553564f49202c790b4769582b5818e218ff1557e918e8da4020c9fb29ea65aa7925c534003ba3b69a81eb7e9dd080426be481c1cd25689d38d9f5619dd67ee778a349692652b4b187ae9ef7cee2e71c1016eeafda6a1b5fa7752175a376b35686d32240209ddc8f89b4957b69622d69eba7bdf3bcb9c7043ba589c822db6640e653cb6edb3da792696eb62e030de836fb2e69e4510e6e60f75c633acd2b41e9613814f3bb1dc7c495b56ca184bced9c829e77d4ca49280b773c86b1200e253eb236e0c6eb1e253ea677e6f20700ace7712a16b87dd2a50e2364ff845a41c884ca89a3ca42995ad384acb79b50b39bacc7070ee6420e744f0e69b2d0fa4db590063c8d760f114923218dd23cd800b49573eb273c135b61dce599908c7176e6a9259253771fd1434534b8db54712a2d1f0b76aee4d8a36e4d68e4159582746c766d05494103f21abc94d432c78b7ac135cf8dd76920a8a764f81eabffd1588363dc9c2e152d4c9493b5ed39154552caba76491e1c7c43a73485cfb88ce0146ddfdce79840dfce72567c8fde5c4aa5a06b007c98bb86e08059a7c9147b7235bcca35d483fb8e3c9a857d21fbee1cda9934326c4ad28e08855344c96e460e4f8dd1b8b5c08214137be018eed06478f737b6e1684d2469670c71ea396788f0fe92aa1474ce37ebbb24499642e3dccb831ae79c9a9ee748f2e766551d2889a1ee1d73feba259a3859af23ac3fd9536929242432ec6a125ce009284533b261461987dc29ced5c1cd2145a4658ac31737f0b94151154b6f19c466d398e8aaa61337f30c8a21cc76f0e0535fef5824fd1dcfb9b816b810b4057ff001107b976db3c3fa66b9d5552e00f542636c3b9d6b886b23fd4aa0835e5d73933a259590c6e91e700a7a87cef2e79e43828603263905053b1a0609b181bbf609f18e1fec29a169dca6a72cb96e5c1452be2787b090e0a9ea1b531078c0e4e1c0f457c3aa44a37e0e548eebba3dce1fec77370b85a3ea9f4954c78e298f6c8c6bdb9385fc3ba6eb7f86a52d0717a6f5dc5c7ba551bceef2002a28f5206717758f469398be4110c98a1a773c1791d50405147960981016dcc1cd387a0a7852354d4eeb3e468c01175413fb99c5f65fd53d1511fbc89ede21426d2c67f304ec1c79f7378c6ebd9bad32c2e81c716e5e1dd3b586a6acb41c1b8260b0ee953dbca9a3558d1c1a0743dc6499c466e72108651103716a604db6fff00010186117f929c0ef8bfc14eb6eb84e50c7ad0cd7186b00a506291cde0704c76bc71bbf1301e8b5a6b70913f6ddcfb9b85c2d1b54ea5ab8de0ef4087004644786eba514b4924876ad8227de485c779ee9bc29fb6979adc3904723c8aa46eb5530799528b5149ea626a66b6ec1739510374bfed3c3b7e29ca905e9e7f58fd96916da6078854ff006783e58e8776cef989fb6ee7dd1dd575d683abf7f44d0e38b3c37ed1d400d8e06a8c617ee8330a7ed26f52dc11c8f25a3c5eac722a71fd1c9ea626a1abf78a0e887dcbfe8539d17e03fe13837ee94ebef0a887f265f983f65a4bb403817054ff006783e58e8776aff9a9fb6ee7dd1e17b395661a9316e78f0de969ff0088ad908caf609a2c077419853edcdea08643904723c8ad1a2f58de454e3fa29bd4cfdd3414d206e250749ba33fe4273a4df19ff213cb4e6d2111f84aa216a798dbfba3f65a46def0102c0dc854ff006683e58453bb493e6a7edbb9f747054b2986a2378dce4c707b1af1938023c3356e1052ccf39ea944ebca4f9f7519853edcdea0b70e411c8f22b467db1bc9ca71fd0cfea67ee8003329a4ee6a1ef7833fc947de8dccff002539cefbcc4430f92a207f849fe60fd9692beb477696e782a6fb341f2c743bb493e72936dddd0a76056859c4ba3e3b9d8f0ce9f93dcd16a6f7951677eea330a7db9fd416e1c82391e4568afb6b79394e3fa19f9b3f7435464102edc0201df8983f44e0ff00c6dff09c5e3300abb4e6db2a16834b38cc7bd1fb2d2baa1f1800b73bb782a6fb341f2c743bb493e6a936ddcfbabd7b2f35db2c24f867da7780f8a20a318775de14fb73fa82dc3904723c8ad13f6e1c9ca71fd04dea67ee81e0d42fe487ac7f8441b6d8ff0009dafc415aceded54007f0d3fcc1fb2d2c4be466fd5d754df6683e58e8776927cd526dbb9f757af6765d4ae038f867da1935ebde38260c077519853edcfea0b70e416e3c96891fd6dfc8a9fec127a98aeee082047e2ff411f5ff00a08eb6e2102fde1507d9e7f983f6558cd774a6ce00075aea9becd07cb1d0eed24f9ca4db773eeaf5a31fa95b0bbf30f0ce927fbcad98fe629b90eea330a7db9fd416e1c82391e4b44fda1e54ff00607fa988eba1e68399c512dfc48df7143de2a0fb3d47ac2945bf8904106cedf7cd537d9a0f96114eed24f9aa4db773eeae501d595a7cd46ed6631dc5a0f85dc6cd71e01543b5a779e2e43ba8cc7353ed4fea0b70e411c8f22b459b4d2294de81deb623ac8103341d1f145cce28f9109a1dc42a417a5aa077903fc8528f77efc13725a6e72b9b2a6fb353fcb1d0eed24f9ca4db77757261b3c7354525e8e0e3a9e17a83ab04a7834a7e32bb9a1dd46614fb73fa82dc3905b8f22b46f6ef45d7d1eff5b11bf140b77d90744898f8846db884d07f12a675a96a4fe76aa938c9e92a9becd07cb1d0eed24f9ca4db773eea537072d14e2fa18bc2f58db51cfc7dd9476cf343ba8cc29f6a7f505b82391e45501b5520eb514deb8d5c7141ec1c107c3e48ba2f245ccdc42047151bff00a49fe6b7f655926a388e2d2a9becd07cb6a29dda49f3949b6eeea50da5a1de1ba3e2f0bd6b3528e727f023da1e68775198e6a7da9fd416ee8a71a95a5bc0945d6a1a83f9a3fdd3640421247bec83e0fca8be1fca8be3dc42f78d50bef493fcf6ff00f95a40932b546dd48a26f0634743bb493e6a936dddd4a1b4b424bfd08e21c7c2fa5de450ce0700befa1dd46639a9f6a7f505bba2aa0305735f6c1e2e117ff4151ce3fdd472db309b345bec83e98fe145f4ff009519621910a49b0c02a777f453fcf1ff00e53603555d130643129d99e876dc9f3949b6eeea53769681706d0bbd7e17d28c2347cc51db43ba8cc29f6e7f505bba2a69854421b93862d29ee2da7958703acd0472298f73532a19f79a84d4c7f0a32d28fc29f5118d90a495cedca179f732378c8150d2fb8617bbb47ffa09db479f43bb493e72936dddd4a6ed2d0440a23ebf0bd7b07f033b7f227eda1dd46614fb53fa82dc390e81668baaba465430e3aaee2a48aa29dd67b0a655eaedb10ada639b11aca6dcd4fab0761883679ddaac612550d00806b3ceb3ff00d0581fd0a76d1e7d0eed24f9c9fb6eeea533696801fd13bd7e17ac601473fa0a936ff543ba8cc29f6e7f505bba1b7b6685ee9cd0f05ae00b7814ea18c9ea12d1fe51a176e311e6c4281c77c439350d1f1dc6b38b86f1b2991b6301b1b1ad1bec8ae453b68a29db727ce4fdb77752a3cd6860050b3c2f56c22967f4152edfea8775de14fb551ea0b7740eb0b16e0b3b823059ddb6dcbf2d8e485859b6392c059a02166d9a02c1b6002c1b90ccad9c86653b328a776927ceff0094fdb77752a2cd68976ad047ccf85e603dd49e92a7db3cd0eebbc29f6a7f50432e8cdb60eb1598201c56e201b15bad7c50c8027142e2c09c50b80038dca18665659bb7ad9cdd994ecca29dda49f3bfe53f6ddcfba9508c568fb368e21e1778bb1c3882aa5baaf70f3410ee9bc29f6e7f505bba31d5b818a37009031590b818d96ebdb1b2cf1231b2188048c50c402458a188c458a17398b6285cdee39276d1e8776927ce4fdb777428a806215036d4707a7c315a0fbd939943baef0a7da9fd416ee816602ec720b06ddc49580eb5cdacb0dbd6c2cb03675cdac858d9c0e0859d620e0859d6209583f22702b07ef3814ecca29dda49f353f6dddd4aa7cdbcd4184110fc83c31a4c5aaa71f9ca6f7519853ed4fea0b77436fbc8b5b05d6d6395975afbacbadadbb56cb1b8c0596371602c8eb5c580b6f46f716b79a37c356d9e28dfee947328e49dda49f353f68f752a94759a9a2c00e03c31a69a056cc877519853edcfea0b7740b386a96f0583aec20ac092cb1c975762c72580b32c7242cdb33142ccb345f15832c2c712b065ac0e251b3326e651cca29dda49f37fe53f68f752a8181d3c4d3bdc3c33a7d81b55cda16f3dd46614fb73fa82ddd1b4db35d628e2080eeb2c6d607ad658dadac35ac85f2245d0b8162714db800388ba0481d622e85c0eb3b328756facecce08e651c93bb493e6a76d1eeda299ad550f3f0cfb44dfe6467884768f7519a9f6e7f50432e8d96ddadb928e00b836ee5975f57ad6585b5f571b216367eae3642ceb38b7143ad6716d8842cf00b9b620e0875b69b91c10bbafacdc8e08e651c93bb493e6a7ed1eeadc5c168461354df0ce9f61f751393f6bbb4fb737a8219740ea0d62e3636580bbcbf02b7ebeb756d92dfafafd5b2cc876b756cb6887077556d59c1d82dbb16bb00b07db55f91c51b3f276451ccadc9dda49f393b68f758f682f67db799e7833c33a6a30687d2e0a5188eed3edcdea0865d0db9c1c05b72c4920b46aac4b882d1ab658eb6aeaf56cb1043437ab65882d686f5562d2035b86f58b480d6e07346edb6ab4668dc6c34678a399453fb493e6a76d1eeb08eb2d115cd82abdcbb290786749343e92616c829c7769f6e6f505bba3ab20d4b916b23aaebb2e6e1754ff002ee6f658767737b2ea8b47ac6e42166d9849ba16659849b942d1d9a49c50d58f024e257563cc9c4a399453fb593e6a76d1eeb00c563efdcf1f7550cdefe9227f16f86246eb44f6f1690aa06d7769f6e6f50432e837d51a96be08eb6ae16d6475b56e00d65d6d5bd86b590d6d5c40d6435ad881ac86b5bac06b26eb5bac05f726eb7dfb678269763af6cf05bca3927f6b27cd4eccf75805828ffb87cd68503f8088f866be3d49e667079eed3edcdea0865d1d58c6b638aeab6f2638aea8fe6e2babda62baa7f998e01755d67e382eabecfc7043564b3b1c17565e381576cbc7047328e49ddac9f353b33dd598464f928fb2e64ad1978e8216f8674cc7ab59279a22c4f759fb49b98432e86eb0c5c46ad90d6b92e235575b589246a2eb6b5ee352cbadac2c46aaeb6b0d523551d6246a91aa8eb123508b275cdb508cf14eb9b6a11e68e651c93bb593e6a399ee8330a43ab094c6756267250335218dbc1a3c33a7e3b491bf88520b3cf759fb497985bba01127548382c1c7ddd8801604fbbb1b05d5bfbbb1580fe5d8d95c36d1d8e2b061d4b137584766804dd611e0013746d1e43347328e49ddac9f351ccf7460bb829f26378954b1fbcab819c5c3c35a763d6a66bb8394e3addd67ed25e610cba0925a034e28dcb754386b6f573abaa1c35d5ceadafd658ead891ac812058b86b6e4d240b388bee4d25a2ce763b936eddb7724dbb6face47328e49ddb49f351ccf74805de9fd69d83862b43335ebda7f08f0d69067bca39fc9aaa061dd67ed25e610cba30600e02e4a3668d70312b003de6ae2b0b7bcb62b0235ed8a1670d72310810f1ae464859f89192169312324087e632e8392776b27cd4733dd29826632c8ee182f6762bbe797c34407020e442aa66aba461dc48eeb3f692f30865d0dbb7171c10b825c5dd52b7eb6b7556fd6bf55624eb6b755624dc3b046e4820e0892eb16947adb251bbb64f41c93bb693e6a399ee910d58c951766e771256846886841fc47c37a562d4ab98222c48ee9383af29f30b77403af6690afac7508c02bdcea5b05bf52d82c8ea5b0591d5b23d53aa06689d4c00cd1ea643347a990cfa0e49c0fbd79ddef51ccf747756154b4ee98c71347350c6d862646dc9a2de1bd3f1da58a4e2d528b3cf749ff00bbcd0cba09d60034a3880d0ec56ed5be2b1d5d5be286ceadf142e0589c50bb4104e28757027143ab7b943ab99e83923da4bf351ccf7360bb82985f519c4ad174a218bdeb8759de1cd3507f481dbdae5503107ba5467273432e8c180119ac8075b12b76bdb14311adbd471c9293a8d17199392961922b3a4682388445ee4843ad890b6b31921d6cfa0e48f6b37cc4733dce0177a859ef6b236f04d1aa00e03c3959089296566f2c36550dea72ee9519cbcd6ee8176e272591b9382dfad7c133175ef82a31684fa8aa900c12fa53c1e28e26e0a38e489be47a0e48f6d2fcd4733dce98604ad0b1fbdac2f390f0f5645a924cce0e3dd2a3393d416ee81d6b02af7ead95feeee4ccc0549d8ffe454fd8c9e9521596016592cb2e83923db4bf351ccf7367561257b3b186b5f29f0f699606573ff33414f16711dcea73939840dc7466000b3006f5badbd47c37aa4ec7ff0022a7ec64f4a91659ae6b2cfa0e4b3964f394a399ee405ca98eac4b424460d1f193b4ff000f69892fa449538b3fb9d4b6e5df99aa99e2482377e51d01658af34ccc15466f09f515506d04a7f2a7e2b359abdfa1ee0d17390172a9aee7309de4b8f73885de13c09258d9baf8aa7b474f137834787b483f5ea667707aa8170d77739db7687702a81f63245c0eb0e47a0607a41514cf89c5cc22c73072534ee96dac46afe11ff29c6e7e8d73ed0ea0ce43aa153b6c1c77643b9d38eb12a237a9bf0511bc6c3f947876470644f76e0d2a43ace79e251eb403cbb9d81041c8a76b412078da61ff002146f6c8c6b9a6e08b83f46eaff45c404f79a89b5dbb23aac09add5686f0ee700d5639ca1fee3bcecb4649ef28a13e56f0ee957086864e250c4151e4f6a3813dce68f5c5c6d0ff0061534e699daaeec9c7ff0089408207d49c155d47bc2618ce1f7ddff0a08b540791e91dd0f561b7151f620f1375a0250699cde07c3bed1cb68638d7dd3cd30da4e614a2cf3dd27835c12d1cc282a5f4dd537745fedaa39a395bacc7070fa6f7b58d2e240033254f58e9aec8496b37bb79505380039c30dc38f7468bb82a93660015b56303805ecfcc04ef61f0ee9d98cb541bc17dd44d9cc2aa0620f759216498e4ee28c3341239c0967070c8a6690959612c5adf99a995f4cffeedbd42c84d19ca48cffe417be8c66f8fff00904faea6667303e4dc53f48b9dd8c5fabd3995150e1725e6fc9a14503598bace3fe8775845de14fd695adfcc13cd9ab464deeab6377123c3992ac94cd54f77995f707209d8b14a2f1b4f7774113beedb927525f278fd423427f0b0fea8509fc2cff2851819b9a3904d8221982ee6bfd0eed4e332b6aa0795ca9b63f551b8b5ec77f8fd143209218de37b4786ebdc20a395c7322c9c4b9cf7792396e1920359b64deb436f89c7d588950632b8f00a5cd83cd7e1cad7216869f5a8c039b4f86f4fc9a90c708cce251c9c78b93b33c359336533391be69c2ce3f1109f845654d8979e25498c8c09d8ebe393aeb404dab2cb11c88f0de9c9cbeb1c3f0268eced7cee8feef2997d50b29b9b429459e7e22c1770539b001528b313fb4e41385dcfcec5bfe82d1f318aaa17dfc34f70635ce3b85d54c86492590ef29a3aedb5ec1b8adccf324a66ca93389de6429c647e2308eb2a838bb92a7ecc2b5e47fa0a38b99c08b269b0bfe17aa49c4b4913fcbc33a5641050bf8b97e0f375d0da79e0111d9f24cd952f65c9c0a971603f118029cdf5b9a88598de4998ccee48ecc4511d691a382f67e612533e3e07c33ed1ce75e389587bc0370086c4aee28e6d02db2999270bc7237c90eb443923f0f0a3c189f8eaf34cc947dab911fcaf4b91b6bb0ee2168397dcd6967867494ffc457bceeba6e721f2b2ca11e6e4eb6bbbc9a9b926676516c91c0a70b38fc3c668e1114fc1ec083ec1459b5dc5cad76cc0734ec5919f35149eeaaa291a7814d70734386445fc2f52e10d34af3b9a83aef91e50c2227895636840f23ff28ed4853724dcc26e12483cd4a31f87b06214bb00712a6c276841c5e75421b2c237390ed1c3739b87ec9b8c2f09f8b18e1982b44ce24a26127118785fda09b5298301cd0c2127894f0446c6f923db34705ff71372082384dcc2987c3e218a7e2f8c79aad259331dc4281c1ed7168360bfb63d489b48c3e4983af2b3cca6e3139a7123fe17b393f69113e17f68260671134e0d09e308da9d6333079a18caf3f950d8939a0829369854a2e3e1f1059cbc82aa87df306aed34e0a366a461bbf7afec9e613f0f727984709efc40286133c6e26ffe568898415ccbe44d8f85eb2433563cfe75b538f2c53319afc014cfee9e4137b377a90e893641e053b16a3f0d0a2c93717bcaba28762f4eec9878382976a236dd64fc25611bda8b8b2a03bcc15149af146e1bda0f856b1fee68e6932ead828eee91cee00a8ac5d239459caee4133b279e2e285c43fa943a1fb050c589c31f8684cc1a99938f9a28a8fb192dc16060772054b73130f07052db518e1b8feea6b90c72d0d51af44c04ec1f0ae9e97ddd2323dee2a30431ee51e1138f12a3c2171e24a18403f54708588741c8a8cdd813f347e1613735935336474c38b5c3c8a8f185c3c8adaa777247181dc40ba20ba1b8dd65ece4dd7923f0afb43397d5060c98111a90b4711747ab0b4792ca06f24eb085bc827762ce4874c59152668fc3199a7ec14364741506cb8792a7b16f15082e8cb7c8a82ce6588cc59423598587810b43cdeeab62f0ae9293ded64a776b594db9a1541c00538b3034705360c01496f76cf4843a63cdc3cd49f0c0a3cd4bb1d2553aa7dea1167bdbc1ca2eabe403738a6612c8df351bbdd5482373d31c1cc6bb8807c2733fddc323f83494d3ad5009e374ec6660e05498c8c1e614f896b7cd54a93b36f20874b707b9499741f85051a93eef31f429cd953ed1e69a2d33c71ff9594eefd13ae27bdb300a985a404701fe968c944941193bbc27a5dc22a19389500eb38f928fad338f06a18d4353f19e31f9954296fa8de4874e527e89f923f0a0828d3b6d9cfa4aa7b8c4286daeebf14ec2a5dc8297099a776aa9f6a375f790a7176b0ad032ff004cf693e13f68a5fe444c50e11bdca0ce4728b19cf9355ffa865f8a9d4bb0dc77219749db6f24ec9147e1413325fdc6f23d27254ea1db7732a4eddb6ded0a7da84a9bb30ee04278d6857b3d36acb2338b7c27ed1c97a86b38353708143844e3c4954f8994a1f681753a931637d210e97e6cfd51c93b347eba9e2134f1c64901c730a7d191450c92095e4b5a4fd5c1a322f76d331717117b0360156537f0d286824b5c2e3ebc26649b8c9fa74bb254fbb9a876cf35291ef59c94e3f94c3c1c9f8c0ef20998c2ef30b4348195acf09e9a75eba4f24fc2168f24cc20679854e2ec90f984cedff42a7ba758c6db7009a87449f73d48e49d9a3f5d43f6c8399559f64a8f967a6e38fd1b8e3d306938bddb5b36b07345ae05c155955fc54a1c010d68b007ebdb9a6a6768ef4847a1f928721750df58a9fb562987f24f30537ad111f9553ecaa176a5544783bc27a41fef2ae63c5e55465646e2168fc8a01fcb71fcca2edc29ee86313396286d74ca3aadf50e87a3f5d43f6c8399559f64a8f96546c7caf6b18dbb8a8346c1180641ef1dfe9086102dee996f485368ea6901d56ea3b8b54d0c90486378c7f70a28df33c3182ee2a0d1b0460178f78ef3c97b986d6f74cb7a42343484f60c559494d1d2ccf642d0e0302a8e929a4a689ef89a5c41b955d1b22a97318d0d6d861f5edcd0516dc87923d0fcc28f64df82845caa8ed19c94b630b8efb0509eab42a7b0ff0028752a393d31c1cc6bb8807c22f3aad71e013faf51cdeaa4a96e23e40283b23cca8bb7ff002a600261bc2df2ba383ba029763f51d0f47eba87ed90732ab3ec951f2cad150811be639b8d8720abeb0d3b5ad66dbbfd046aaa49bfbf7df9ad1f5ce9898a5dbcc3b8ad27107d317ef8d68b84361329cde7fd055f58ea70191edbb7f00bf8aaabdfdfbefcd5056ba7bc726d81707885a4d8e7536b027aa711c42a0fb1c3c8ad25f6b7721f5ed41439cbea08f43b690eac6f3bb54a8429c7f323f4a92c6177254f7d516516123f9952e1393c9523c3a921f48bf846a5d6825f414c20ce0fe653e6a6c1aa1ec7f52996f7e14ca1c58e1c0a7041052f66efd3f7e87a3f5d43f6c839aacfb2547cb2b471068e3e642d2ad22763b7167468e69755b2dbae4aac2052ce4fe02a80834707221694691557dc583a346026ac11b9a6eab881493dff000aa0fb1c3c8ad25f6b7721f5ed414193fd68a286d293088f9d82854f6f78db704fec64e4541926e13483f3153f680fe50b45c83f808cf846b05a8e63f9543daff9536d053e0141d8e1f88a6f6cce6a55066e1e49c1372414bd9bf9743d1faea1fb641cd567d92a3e595a32a446f313cd9afcb9a9e08ea19a8f1c8ef051d106f84e2dc95352c74cd2198939b8ad2952d2040d3e6f5a32a430ba179b071bb79aa8a78ea19aaf1c8ef0bfe906fdb8b7254f4d1d33755833ccef2b4a54b5e440d37b1bb9507d8e1e45692fb5bf90faf620a0d97faca29d9268c429b619e6a152dbdf61c027f61270d5c141885fdf7fa9546259e95a21e050b7c23a4fa943310a0ed2fe454b8bc7353d836ca0bfbae4e29f838152e65466d204e41052f64fe5d0ff00af86530cac9036faa7252e937cb13e330b46b348bdfa20d253c4035c048071cd0d2f15bb17a9b4a4cf04463dd8e399e865154c8c6bdb1dda723709b5d554aef753b35ec066715ff578bfecbd1aeaaaa77ba819a84f038a7d154c6c73dd1d9a3126e141a49f042c8c420eaefbaa89cd44a642d0db8187d704d4141b07d6514534298ddcd1c028c704feb4cfe6a4c217f25064bfbeeb65aca7b9d45ecffd90fabc23a55a068f95417d7c381526d8e6a7c941b07c8a92cb12c078808e60a38e2820a5ec9fc914e47bae8b943e9fddef8cff00a2b48523e6b4918bb80b10b524beafbb7df858ad1f46f8499641671160169394329f537c87b8b50507667d65145008e2f2531331713e6a5ec891bec141905fdf7735517eadfcd681706d1bbd5e11d2f8e8f94a86faf87052ed29b6553fdfc54989c1478c439d93826ec85fb744dd93f9229ddda199f0482461e63885056c138db0d77e172b8e2a7ad82018bc39df85aa79df3c85effd0701dc5a828361deb3d24d9a78d9008e0c79e01443153dbdd8c7124287208632bfd454f7bb6eb40b80a377abc23a547fe9f2a876c7252ed27dcb0720a0b6b91e49f8a84edb7f54e4d3d014dd93d14ef85b7a29f61feb3d1c93adb90529b300e25461541d8dc4e6a1070b2658bc9f32a7cdbc9680fb1bfd5e11d2318fe0651e4a3ed0297342e626f24c3695bcd3d30eabd3be84fd93b98fdd14ef8504d4153e527aff00e3a4e28294eb1038260531bc8392660db851e78a9f6c725a0da5b45ccf846ae3bd24c37ea1430947a94b9a8f188f34ec0a7622fc4228e22fd19f44fb1ff9045391f8404137a29ce32f31d1972450b2c4b89e29889d6909f34ec22759459a9b6c85a1c1fe059e1195b78a41c5a549d590f352e6543938278c53082c1e58229870b7d09f267ad14ef8504d4141da49e96fd0270411366b8efb28c294ff002c79951a7e32bb9aa1ead142de23c255acf77532b7838a75c80a2367db884f51bb308842dd03a27ce3e65147e14104143da9f4f413d0ecfa247756c3794c0a6372d0a3b84c1ad20e6a16ea431b4ee681e12d34cd4af97cca18b020754a7e281d5723d17e998f5dbc8a28fc2420820a23fcd6723d37e809c6e5313cdde503669e4a8d9af531378b8784fda28b52763b884dc884503768450371d1743a243790f9001147e16104d367c67f37eff47217e8bea827c90cd38d9ab42c7ef2b59e13f68a1d6a763f814dcd14d38108a07e8b8ddef3f99147e163a1c70bf020ff008e8babac91413cd85b89413f3017b3f1d9d2cbe13d27119a8e616c822354945036211e91d20e1d07e163a0e2084c37634f103a6fd2e3728226e4ad0ccf75460ef71f0991755d1186a656f9a190e8070fa2e7598e3e5f0e1d309fe581c090aff4321d1c544d2f91ad1bca858228a360dcd03c29ed0c1a93b6503078e91f42ea53d5b7123e2309c5e391fa24f412b4353fbfac6701e15d374a24a3240c588fd0bf4ca7168f88c66d20f3047d0bf4dd680a62227cbc7c2ae68735cd3911655b0182a248c8c8f49fa0f3779f88dec41e042bababfd08985f235a066553c4218238c6e1e16f68e92c593b47465f46ff00126baed07c95fe8e82a532d4eb91833c2f59009e9a48edbb052c66391cd3982bcfe83f64fc4e33811e7f45a0b8801689a514b480918bb13e18f6828bddcc2668c1ff00464390f89c671e7f4743d19a9a969b755be19aca68ea69e4854f13a191cc7660fd071bb8fc4c1b63f4180b88685a329bf84a668c9eec4f86b4fe8fff00fa59faf493604fc5587abcba742d17bd97df3c755be1b923648c731c2e085a468df493b9a461d121c87c56338f3e8a681f513358d19954d032961646dcc0f0e695a26d64186db725246e8de5aec0844dcdfe2b8ee4d05f6b6f5a1e8052c2269075dd9787b4fe8bd663aa216fa9104120fc5b4068b331f7d28ea03e1f2010415a6f449a67fbd8c750fc574568e755ca0b8598332a363226358c16007881f1b246163c5da735a6345be8a52e682633f13d1f412d64a001d5de5414f1d3c4d630580f114d0c73c66391b7695a5344cb4721205e3391f88d068f96b250d68c37954b4b1524418c1e24923648c2c7b4105697d0b252bcc918bc7f0fd1ba2e5ac9061666f2a9e9e2a68c3236803c4ce6870208b82b4b6802dbcd4e39b539a5a6ce163f0b009360b45e8392a08926c2351c6c85818c680078a74a68582a817c63524555473d2bcb24611f09869e59de191b492568ed071c004938d67ee6f8b2a29a19d8639580ad23a02680b9f0f5d89cd734d9c2c7b8d959595bb88049b00a8342545510e78d462a5a282918046ce67c5f5da1e92ac124063f8855ba16aa9093abacce211046047c073549a2eaaa88d565871547a1a9a971759eff0019d5e83a4aab90dd42ab340d5d3dcb46bb5398f61b39a477d0d73b00152e87aba8b1d4d56f12a9740d25359d29d7280000005878daae868e7ed2204aaaf66b3303d5468caca6db88a2d70cc777009c828347d5d4102389c553fb3afc1d3bc00a1d1b454dd9c773c4f8f25d194536dc214fecdc3898e453fb3d5b162d01c149435516d44e08b1c3369faf0d71c8151d25449b3138a8740d74b8966a8507b323396551e8ba08075220e3c4a000160001ff00b036054b4b4af16742c254ba1681f9465a9fecdd33b6242a4f6608176ce11f666ab73d88fb3d5ff853b40d78ca34742691ff00b0e5ff0045d21be029ba06bce71a1ecf57fe143d9baab5dcf604cf661f626499aa3f66a0fbf214dd074118b969721474708b3206828003203ffbf0ff00ffc4001d1100010207000000000000000000000000010002031112313260b0ffda0008010201013f00e39e518cead0331a4bac8e69988d24d9182ead0121ce4bffc4001d1100010207000000000000000000000000010002031112313260b0ffda0008010301013f00e39e518cea934cc692eb2392662349364613ab4d121ce4bfffd9, now(), NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_attributes`
--

CREATE TABLE `phppos_attributes` (
  `id` int(10) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `ecommerce_attribute_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_attribute_values`
--

CREATE TABLE `phppos_attribute_values` (
  `id` int(10) NOT NULL,
  `ecommerce_attribute_term_id` varchar(255) NOT NULL,
  `attribute_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_categories`
--

CREATE TABLE `phppos_categories` (
  `id` int(11) NOT NULL,
  `ecommerce_category_id` varchar(255) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted` int(1) NOT NULL DEFAULT 0,
  `hide_from_grid` int(1) NOT NULL DEFAULT 0,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `image_id` int(10) DEFAULT NULL,
  `color` text DEFAULT NULL,
  `system_category` int(1) DEFAULT 0,
  `exclude_from_e_commerce` int(1) NOT NULL DEFAULT 0,
  `category_info_popup` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_categories`
--

INSERT INTO `phppos_categories` (`id`, `ecommerce_category_id`, `last_modified`, `deleted`, `hide_from_grid`, `parent_id`, `name`, `image_id`, `color`, `system_category`, `exclude_from_e_commerce`, `category_info_popup`) VALUES
(1, NULL, now(), 0, 1, NULL, 'Articulos personalizados', NULL, '', 0, 0, ''),
(2, NULL, now(), 0, 0, NULL, 'Bebidas', NULL, '', 0, 0, NULL),
(3, NULL, now(), 0, 1, NULL, 'Abono a línea de crédito', NULL, '', 1, 0, NULL),
(4, NULL, now(), 0, 0, NULL, 'Tecnología', NULL, '', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_currency_exchange_rates`
--

CREATE TABLE `phppos_currency_exchange_rates` (
  `id` int(10) NOT NULL,
  `currency_code_to` varchar(255) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL,
  `exchange_rate` decimal(23,10) NOT NULL,
  `currency_symbol_location` varchar(255) NOT NULL DEFAULT '',
  `number_of_decimals` varchar(255) NOT NULL DEFAULT '',
  `thousands_separator` varchar(255) NOT NULL DEFAULT '',
  `decimal_point` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_customers`
--

CREATE TABLE `phppos_customers` (
  `id` int(10) NOT NULL,
  `person_id` int(10) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `override_default_tax` int(1) NOT NULL DEFAULT 0,
  `company_name` varchar(255) NOT NULL,
  `balance` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `credit_limit` decimal(23,10) DEFAULT NULL,
  `points` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `disable_loyalty` int(1) NOT NULL DEFAULT 0,
  `current_spend_for_points` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `current_sales_for_discount` int(10) NOT NULL DEFAULT 0,
  `taxable` int(1) NOT NULL DEFAULT 1,
  `tax_certificate` varchar(255) NOT NULL DEFAULT '',
  `cc_token` varchar(255) DEFAULT NULL,
  `cc_expire` varchar(255) DEFAULT NULL,
  `cc_ref_no` varchar(255) DEFAULT NULL,
  `cc_preview` varchar(255) DEFAULT NULL,
  `card_issuer` varchar(255) DEFAULT '',
  `tier_id` int(10) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `tax_class_id` int(10) DEFAULT NULL,
  `custom_field_1_value` varchar(255) DEFAULT NULL,
  `custom_field_2_value` varchar(255) DEFAULT NULL,
  `custom_field_3_value` varchar(255) DEFAULT NULL,
  `custom_field_4_value` varchar(255) DEFAULT NULL,
  `custom_field_5_value` varchar(255) DEFAULT NULL,
  `custom_field_6_value` varchar(255) DEFAULT NULL,
  `custom_field_7_value` varchar(255) DEFAULT NULL,
  `custom_field_8_value` varchar(255) DEFAULT NULL,
  `custom_field_9_value` varchar(255) DEFAULT NULL,
  `custom_field_10_value` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `internal_notes` text NOT NULL,
  `customer_info_popup` text DEFAULT NULL,
  `auto_email_receipt` int(1) NOT NULL DEFAULT 0,
  `always_sms_receipt` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Estructura de tabla para la tabla `phppos_customers_series`
--

CREATE TABLE `phppos_customers_series` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `item_id` int(1) NOT NULL DEFAULT 0,
  `expire_date` date DEFAULT NULL,
  `quantity_remaining` decimal(23,10) DEFAULT 0.0000000000,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_customers_series_log`
--

CREATE TABLE `phppos_customers_series_log` (
  `id` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `quantity_used` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_customers_taxes`
--

CREATE TABLE `phppos_customers_taxes` (
  `id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_damaged_items_log`
--

CREATE TABLE `phppos_damaged_items_log` (
  `id` int(10) NOT NULL,
  `damaged_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `damaged_qty` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `item_id` int(10) NOT NULL,
  `item_variation_id` int(10) DEFAULT NULL,
  `sale_id` int(10) DEFAULT NULL,
  `location_id` int(10) NOT NULL,
  `damaged_reason` varchar(255) DEFAULT NULL,
  `damaged_reason_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_ecommerce_locations`
--

CREATE TABLE `phppos_ecommerce_locations` (
  `location_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_ecommerce_locations`
--

INSERT INTO `phppos_ecommerce_locations` (`location_id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_employees`
--

CREATE TABLE `phppos_employees` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `force_password_change` int(1) NOT NULL DEFAULT 0,
  `always_require_password` int(1) NOT NULL DEFAULT 0,
  `person_id` int(10) NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `commission_percent` decimal(23,10) DEFAULT 0.0000000000,
  `commission_percent_type` varchar(255) DEFAULT '',
  `hourly_pay_rate` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `not_required_to_clock_in` int(1) NOT NULL DEFAULT 0,
  `inactive` int(1) NOT NULL DEFAULT 0,
  `reason_inactive` text DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `employee_number` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `custom_field_1_value` varchar(255) DEFAULT NULL,
  `custom_field_2_value` varchar(255) DEFAULT NULL,
  `custom_field_3_value` varchar(255) DEFAULT NULL,
  `custom_field_4_value` varchar(255) DEFAULT NULL,
  `custom_field_5_value` varchar(255) DEFAULT NULL,
  `custom_field_6_value` varchar(255) DEFAULT NULL,
  `custom_field_7_value` varchar(255) DEFAULT NULL,
  `custom_field_8_value` varchar(255) DEFAULT NULL,
  `custom_field_9_value` varchar(255) DEFAULT NULL,
  `custom_field_10_value` varchar(255) DEFAULT NULL,
  `max_discount_percent` decimal(15,3) DEFAULT NULL,
  `login_start_time` time DEFAULT NULL,
  `login_end_time` time DEFAULT NULL,
  `dark_mode` int(1) NOT NULL DEFAULT 0,
  `template_id` int(11) DEFAULT NULL,
  `override_price_adjustments` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_employees`
--

INSERT INTO `phppos_employees` (`id`, `username`, `password`, `force_password_change`, `always_require_password`, `person_id`, `language`, `commission_percent`, `commission_percent_type`, `hourly_pay_rate`, `not_required_to_clock_in`, `inactive`, `reason_inactive`, `hire_date`, `employee_number`, `birthday`, `termination_date`, `deleted`, `custom_field_1_value`, `custom_field_2_value`, `custom_field_3_value`, `custom_field_4_value`, `custom_field_5_value`, `custom_field_6_value`, `custom_field_7_value`, `custom_field_8_value`, `custom_field_9_value`, `custom_field_10_value`, `max_discount_percent`, `login_start_time`, `login_end_time`, `dark_mode`, `template_id`, `override_price_adjustments`) VALUES
(1, 'administrador', '91f5167c34c400758115c2a6826ec2e3', 0, 0, 1, 'spanish', 0.0000000000, 'selling_price', 0.0000000000, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(2, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 0, 0, 2, 'spanish', 0.0000000000, 'selling_price', 0.0000000000, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_employees_app_config`
--

CREATE TABLE `phppos_employees_app_config` (
  `employee_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_employees_app_config`
--

INSERT INTO `phppos_employees_app_config` (`employee_id`, `key`, `value`) VALUES
(1, 'customer_column_prefs', 'a:5:{i:0;s:9:\"full_name\";i:1;s:12:\"phone_number\";i:2;s:20:\"custom_field_1_value\";i:3;s:7:\"balance\";i:4;s:8:\"comments\";}'),
(1, 'detailed_sales', 'a:8:{i:0;s:35:\"id_0a87dcc39217e77f71785d9ad907fce1\";i:1;s:35:\"id_7fd9c8957899827d30568302b1130c6e\";i:2;s:35:\"id_0513d23b7d8905f2d4c73b3db6a198f6\";i:3;s:35:\"id_ede59d6ce5bf1f7d8e04fff0a2995ba8\";i:4;s:35:\"id_d091ea99b6d16d3456d1ac7312417f6c\";i:5;s:35:\"id_05ef963c052fa5a332a327998fcea99d\";i:6;s:35:\"id_06052b3597946d7b0e2baa26cc7bf2aa\";i:7;s:35:\"id_30045922163d87daf194d9bcb2aa8ac4\";}'),
(1, 'item_column_prefs', 'a:6:{i:0;s:7:\"item_id\";i:1;s:4:\"name\";i:2;s:10:\"cost_price\";i:3;s:10:\"unit_price\";i:4;s:8:\"quantity\";i:5;s:8:\"category\";}'),
(1, 'specific_customer', 'a:6:{i:0;s:35:\"id_0a87dcc39217e77f71785d9ad907fce1\";i:1;s:35:\"id_7fd9c8957899827d30568302b1130c6e\";i:2;s:35:\"id_0513d23b7d8905f2d4c73b3db6a198f6\";i:3;s:35:\"id_05ef963c052fa5a332a327998fcea99d\";i:4;s:35:\"id_06052b3597946d7b0e2baa26cc7bf2aa\";i:5;s:35:\"id_30045922163d87daf194d9bcb2aa8ac4\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_employees_locations`
--

CREATE TABLE `phppos_employees_locations` (
  `employee_id` int(10) NOT NULL, -- person_id
  `location_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_employees_locations`
--

INSERT INTO `phppos_employees_locations` (`employee_id`, `location_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_employees_reset_password`
--

CREATE TABLE `phppos_employees_reset_password` (
  `id` int(10) NOT NULL,
  `key` varchar(255) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `expire` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_employees_time_clock`
--

CREATE TABLE `phppos_employees_time_clock` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `clock_in` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clock_out` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clock_in_comment` text NOT NULL,
  `clock_out_comment` text NOT NULL,
  `hourly_pay_rate` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `ip_address_clock_in` varchar(255) NOT NULL,
  `ip_address_clock_out` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_employees_time_off`
--

CREATE TABLE `phppos_employees_time_off` (
  `id` int(11) NOT NULL,
  `approved` int(1) NOT NULL DEFAULT 0,
  `start_day` date DEFAULT NULL,
  `end_day` date DEFAULT NULL,
  `hours_requested` decimal(23,10) DEFAULT 0.0000000000,
  `is_paid` int(1) NOT NULL DEFAULT 0,
  `reason` varchar(255) DEFAULT NULL,
  `employee_requested_person_id` int(10) DEFAULT NULL,
  `employee_requested_location_id` int(10) DEFAULT NULL,
  `employee_approved_person_id` int(10) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_employee_registers`
--

CREATE TABLE `phppos_employee_registers` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `register_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_expenses`
--

CREATE TABLE `phppos_expenses` (
  `id` int(10) NOT NULL,
  `location_id` int(10) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `expense_type` varchar(255) NOT NULL,
  `expense_description` text DEFAULT NULL,
  `expense_reason` varchar(255) DEFAULT NULL,
  `expense_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `expense_amount` decimal(23,10) NOT NULL,
  `expense_tax` decimal(23,10) NOT NULL,
  `expense_note` text NOT NULL,
  `employee_id` int(10) NOT NULL,
  `approved_employee_id` int(10) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `expense_payment_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_expenses_categories`
--

CREATE TABLE `phppos_expenses_categories` (
  `id` int(11) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted` int(1) NOT NULL DEFAULT 0,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_giftcards`
--

CREATE TABLE `phppos_giftcards` (
  `giftcard_id` int(11) NOT NULL,
  `giftcard_number` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `value` decimal(23,10) NOT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `inactive` int(1) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `integrated_gift_card` int(1) NOT NULL DEFAULT 0,
  `integrated_auth_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_giftcards_log`
--

CREATE TABLE `phppos_giftcards_log` (
  `id` int(10) NOT NULL,
  `log_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `giftcard_id` int(11) NOT NULL,
  `transaction_amount` decimal(23,10) NOT NULL,
  `log_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_grid_hidden_categories`
--

CREATE TABLE `phppos_grid_hidden_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_grid_hidden_items`
--

CREATE TABLE `phppos_grid_hidden_items` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_grid_hidden_item_kits`
--

CREATE TABLE `phppos_grid_hidden_item_kits` (
  `id` int(11) NOT NULL,
  `item_kit_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_grid_hidden_tags`
--

CREATE TABLE `phppos_grid_hidden_tags` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_inventory`
--

CREATE TABLE `phppos_inventory` (
  `trans_id` int(11) NOT NULL,
  `trans_items` int(11) NOT NULL DEFAULT 0,
  `item_variation_id` int(10) DEFAULT NULL,
  `trans_user` int(11) NOT NULL DEFAULT 0,
  `trans_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `trans_comment` text NOT NULL,
  `trans_inventory` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `location_id` int(11) NOT NULL,
  `trans_current_quantity` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_inventory`
--

INSERT INTO `phppos_inventory` (`trans_id`, `trans_items`, `item_variation_id`, `trans_user`, `trans_date`, `trans_comment`, `trans_inventory`, `location_id`, `trans_current_quantity`) VALUES
(1, 1, NULL, 1, now(), '', 10.0000000000, 1, 10.0000000000),
(2, 1, NULL, 1, now(), 'Venta 1', -1.0000000000, 1, 9.0000000000),
(3, 1, NULL, 1, now(), 'Venta 1', 1.0000000000, 1, 10.0000000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_inventory_counts`
--

CREATE TABLE `phppos_inventory_counts` (
  `id` int(11) NOT NULL,
  `count_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `employee_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_inventory_counts_items`
--

CREATE TABLE `phppos_inventory_counts_items` (
  `id` int(11) NOT NULL,
  `inventory_counts_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_variation_id` int(10) DEFAULT NULL,
  `count` decimal(23,10) DEFAULT 0.0000000000,
  `actual_quantity` decimal(23,10) DEFAULT 0.0000000000,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_items`
--

CREATE TABLE `phppos_items` (
  `name` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `ecommerce_product_id` varchar(255) DEFAULT NULL,
  `ecommerce_product_quantity` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `size` varchar(255) NOT NULL DEFAULT '',
  `tax_included` int(1) NOT NULL DEFAULT 0,
  `cost_price` decimal(23,10) NOT NULL,
  `unit_price` decimal(23,10) NOT NULL,
  `promo_price` decimal(23,10) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `reorder_level` decimal(23,10) DEFAULT NULL,
  `expire_days` int(10) DEFAULT NULL,
  `item_id` int(10) NOT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `override_default_tax` int(1) NOT NULL DEFAULT 0,
  `is_ecommerce` int(1) DEFAULT 1,
  `is_service` int(1) NOT NULL DEFAULT 0,
  `is_ebt_item` int(1) NOT NULL DEFAULT 0,
  `commission_percent` decimal(23,10) DEFAULT 0.0000000000,
  `commission_percent_type` varchar(255) DEFAULT '',
  `commission_fixed` decimal(23,10) DEFAULT 0.0000000000,
  `change_cost_price` int(1) NOT NULL DEFAULT 0,
  `disable_loyalty` int(1) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `ecommerce_last_modified` timestamp NULL DEFAULT NULL,
  `tax_class_id` int(10) DEFAULT NULL,
  `replenish_level` decimal(23,10) DEFAULT NULL,
  `system_item` int(1) NOT NULL DEFAULT 0,
  `max_discount_percent` decimal(15,3) DEFAULT NULL,
  `max_edit_price` decimal(23,10) DEFAULT NULL,
  `min_edit_price` decimal(23,10) DEFAULT NULL,
  `custom_field_1_value` varchar(255) DEFAULT NULL,
  `custom_field_2_value` varchar(255) DEFAULT NULL,
  `custom_field_3_value` varchar(255) DEFAULT NULL,
  `custom_field_4_value` varchar(255) DEFAULT NULL,
  `custom_field_5_value` varchar(255) DEFAULT NULL,
  `custom_field_6_value` varchar(255) DEFAULT NULL,
  `custom_field_7_value` varchar(255) DEFAULT NULL,
  `custom_field_8_value` varchar(255) DEFAULT NULL,
  `custom_field_9_value` varchar(255) DEFAULT NULL,
  `custom_field_10_value` varchar(255) DEFAULT NULL,
  `required_age` int(10) DEFAULT NULL,
  `verify_age` int(1) NOT NULL DEFAULT 0,
  `weight` decimal(23,10) DEFAULT NULL,
  `length` decimal(23,10) DEFAULT NULL,
  `width` decimal(23,10) DEFAULT NULL,
  `height` decimal(23,10) DEFAULT NULL,
  `ecommerce_shipping_class_id` varchar(255) DEFAULT NULL,
  `long_description` longtext NOT NULL,
  `allow_price_override_regardless_of_permissions` int(1) DEFAULT 0,
  `main_image_id` int(10) DEFAULT NULL,
  `only_integer` int(1) NOT NULL DEFAULT 0,
  `is_series_package` int(1) NOT NULL DEFAULT 0,
  `series_quantity` int(10) DEFAULT NULL,
  `series_days_to_use_within` int(10) DEFAULT NULL,
  `is_barcoded` int(1) NOT NULL DEFAULT 1,
  `default_quantity` decimal(23,10) DEFAULT NULL,
  `disable_from_price_rules` int(1) DEFAULT 0,
  `last_edited` timestamp NULL DEFAULT NULL,
  `info_popup` text DEFAULT NULL,
  `item_inactive` int(1) DEFAULT 0,
  `barcode_name` varchar(255) NOT NULL DEFAULT '',
  `tags` varchar(255) DEFAULT '',
  `is_favorite` int(1) DEFAULT 0,
  `loyalty_multiplier` decimal(23,10) DEFAULT NULL,
  `ecommerce_inventory_item_id` varchar(255) DEFAULT NULL,
  `weight_unit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_items`
--

INSERT INTO `phppos_items` (`name`, `category_id`, `supplier_id`, `manufacturer_id`, `item_number`, `product_id`, `ecommerce_product_id`, `ecommerce_product_quantity`, `description`, `size`, `tax_included`, `cost_price`, `unit_price`, `promo_price`, `start_date`, `end_date`, `reorder_level`, `expire_days`, `item_id`, `allow_alt_description`, `is_serialized`, `override_default_tax`, `is_ecommerce`, `is_service`, `is_ebt_item`, `commission_percent`, `commission_percent_type`, `commission_fixed`, `change_cost_price`, `disable_loyalty`, `deleted`, `last_modified`, `ecommerce_last_modified`, `tax_class_id`, `replenish_level`, `system_item`, `max_discount_percent`, `max_edit_price`, `min_edit_price`, `custom_field_1_value`, `custom_field_2_value`, `custom_field_3_value`, `custom_field_4_value`, `custom_field_5_value`, `custom_field_6_value`, `custom_field_7_value`, `custom_field_8_value`, `custom_field_9_value`, `custom_field_10_value`, `required_age`, `verify_age`, `weight`, `length`, `width`, `height`, `ecommerce_shipping_class_id`, `long_description`, `allow_price_override_regardless_of_permissions`, `main_image_id`, `only_integer`, `is_series_package`, `series_quantity`, `series_days_to_use_within`, `is_barcoded`, `default_quantity`, `disable_from_price_rules`, `last_edited`, `info_popup`, `item_inactive`, `barcode_name`, `tags`, `is_favorite`, `loyalty_multiplier`, `ecommerce_inventory_item_id`, `weight_unit`) VALUES
('Mouse Logitech ', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, 55.0000000000, 75.0000000000, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, '', NULL, 0, 0, 0, now(), NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '', 0, 3, 0, 0, NULL, NULL, 1, NULL, 0, now(), NULL, 0, '', '', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_items_modifiers`
--

CREATE TABLE `phppos_items_modifiers` (
  `item_id` int(10) NOT NULL,
  `modifier_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_items_pricing_history`
--

CREATE TABLE `phppos_items_pricing_history` (					
  `id` int(11) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `employee_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_variation_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `unit_price` decimal(23,10) DEFAULT NULL,
  `cost_price` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_items_pricing_history`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_items_quantity_units`
--

CREATE TABLE `phppos_items_quantity_units` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `unit_quantity` decimal(23,10) NOT NULL,
  `unit_price` decimal(23,10) DEFAULT NULL,
  `cost_price` decimal(23,10) DEFAULT NULL,
  `quantity_unit_item_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_items_secondary_categories`
--

CREATE TABLE `phppos_items_secondary_categories` (
  `id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_items_serial_numbers`
--

CREATE TABLE `phppos_items_serial_numbers` (
  `id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `unit_price` decimal(23,10) DEFAULT NULL,
  `cost_price` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_items_serial_numbers`

INSERT INTO `phppos_items_serial_numbers` (`id`, `item_id`, `serial_number`, `unit_price`, `cost_price`) VALUES
(1, 1, '', 0.0000000000, 0.0000000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_items_tags`
--

CREATE TABLE `phppos_items_tags` (
  `item_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_items_taxes`
--

CREATE TABLE `phppos_items_taxes` (
  `id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_items_tier_prices`
--

CREATE TABLE `phppos_items_tier_prices` (
  `tier_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `unit_price` decimal(23,10) DEFAULT 0.0000000000,
  `percent_off` decimal(15,3) DEFAULT NULL,
  `cost_plus_percent` decimal(15,3) DEFAULT NULL,
  `cost_plus_fixed_amount` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_attributes`
--

CREATE TABLE `phppos_item_attributes` (
  `attribute_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_attribute_values`
--

CREATE TABLE `phppos_item_attribute_values` (
  `item_id` int(10) NOT NULL,
  `attribute_value_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_images`
--

CREATE TABLE `phppos_item_images` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alt_text` varchar(255) NOT NULL DEFAULT '',
  `item_id` int(11) DEFAULT NULL,
  `item_variation_id` int(10) DEFAULT NULL,
  `ecommerce_image_id` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_item_images`
--

INSERT INTO `phppos_item_images` (`id`, `title`, `alt_text`, `item_id`, `item_variation_id`, `ecommerce_image_id`, `image_id`) VALUES
(1, '', '', 1, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_kits`
--

CREATE TABLE `phppos_item_kits` (
  `item_kit_id` int(11) NOT NULL,
  `item_kit_number` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `tax_included` int(1) NOT NULL DEFAULT 0,
  `unit_price` decimal(23,10) DEFAULT NULL,
  `cost_price` decimal(23,10) DEFAULT NULL,
  `override_default_tax` int(1) NOT NULL DEFAULT 0,
  `is_ebt_item` int(1) NOT NULL DEFAULT 0,
  `commission_percent` decimal(23,10) DEFAULT 0.0000000000,
  `commission_percent_type` varchar(255) DEFAULT '',
  `commission_fixed` decimal(23,10) DEFAULT 0.0000000000,
  `change_cost_price` int(1) NOT NULL DEFAULT 0,
  `disable_loyalty` int(1) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `tax_class_id` int(10) DEFAULT NULL,
  `max_discount_percent` decimal(15,3) DEFAULT NULL,
  `max_edit_price` decimal(23,10) DEFAULT NULL,
  `min_edit_price` decimal(23,10) DEFAULT NULL,
  `custom_field_1_value` varchar(255) DEFAULT NULL,
  `custom_field_2_value` varchar(255) DEFAULT NULL,
  `custom_field_3_value` varchar(255) DEFAULT NULL,
  `custom_field_4_value` varchar(255) DEFAULT NULL,
  `custom_field_5_value` varchar(255) DEFAULT NULL,
  `custom_field_6_value` varchar(255) DEFAULT NULL,
  `custom_field_7_value` varchar(255) DEFAULT NULL,
  `custom_field_8_value` varchar(255) DEFAULT NULL,
  `custom_field_9_value` varchar(255) DEFAULT NULL,
  `custom_field_10_value` varchar(255) DEFAULT NULL,
  `required_age` int(10) DEFAULT NULL,
  `verify_age` int(1) NOT NULL DEFAULT 0,
  `allow_price_override_regardless_of_permissions` int(1) DEFAULT 0,
  `only_integer` int(1) NOT NULL DEFAULT 0,
  `is_barcoded` int(1) NOT NULL DEFAULT 1,
  `default_quantity` decimal(23,10) DEFAULT NULL,
  `disable_from_price_rules` int(1) DEFAULT 0,
  `main_image_id` int(10) DEFAULT NULL,
  `dynamic_pricing` int(1) NOT NULL DEFAULT 0,
  `info_popup` text DEFAULT NULL,
  `item_kit_inactive` int(1) DEFAULT 0,
  `barcode_name` varchar(255) NOT NULL DEFAULT '',
  `is_favorite` int(1) DEFAULT 0,
  `loyalty_multiplier` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_kits_modifiers`
--

CREATE TABLE `phppos_item_kits_modifiers` (
  `item_kit_id` int(10) NOT NULL,
  `modifier_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_kits_pricing_history`
--

CREATE TABLE `phppos_item_kits_pricing_history` (
  `id` int(11) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `employee_id` int(11) NOT NULL,
  `item_kit_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `unit_price` decimal(23,10) DEFAULT NULL,
  `cost_price` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_kits_secondary_categories`
--

CREATE TABLE `phppos_item_kits_secondary_categories` (
  `id` int(10) NOT NULL,
  `item_kit_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_kits_tags`
--

CREATE TABLE `phppos_item_kits_tags` (
  `item_kit_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_kits_taxes`
--

CREATE TABLE `phppos_item_kits_taxes` (
  `id` int(10) NOT NULL,
  `item_kit_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_kits_tier_prices`
--

CREATE TABLE `phppos_item_kits_tier_prices` (
  `tier_id` int(10) NOT NULL,
  `item_kit_id` int(10) NOT NULL,
  `unit_price` decimal(23,10) DEFAULT 0.0000000000,
  `percent_off` decimal(15,3) DEFAULT NULL,
  `cost_plus_percent` decimal(15,3) DEFAULT NULL,
  `cost_plus_fixed_amount` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_kit_images`
--

CREATE TABLE `phppos_item_kit_images` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alt_text` varchar(255) NOT NULL DEFAULT '',
  `item_kit_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_kit_items`
--

CREATE TABLE `phppos_item_kit_items` (
  `id` int(10) NOT NULL,
  `item_kit_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_variation_id` int(10) DEFAULT NULL,
  `quantity` decimal(23,10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_kit_item_kits`
--

CREATE TABLE `phppos_item_kit_item_kits` (
  `id` int(10) NOT NULL,
  `item_kit_id` int(11) NOT NULL,
  `item_kit_item_kit` int(11) NOT NULL,
  `quantity` decimal(23,10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_variations`
--

CREATE TABLE `phppos_item_variations` (
  `id` int(10) NOT NULL,
  `ecommerce_variation_id` varchar(255) DEFAULT NULL,
  `ecommerce_variation_quantity` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `item_id` int(10) NOT NULL,
  `reorder_level` decimal(23,10) DEFAULT NULL,
  `replenish_level` decimal(23,10) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `item_number` varchar(255) DEFAULT NULL,
  `unit_price` decimal(23,10) DEFAULT NULL,
  `cost_price` decimal(23,10) DEFAULT NULL,
  `promo_price` decimal(23,10) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `ecommerce_last_modified` timestamp NULL DEFAULT NULL,
  `is_ecommerce` int(1) NOT NULL DEFAULT 1,
  `ecommerce_inventory_item_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_item_variation_attribute_values`
--

CREATE TABLE `phppos_item_variation_attribute_values` (
  `attribute_value_id` int(10) NOT NULL,
  `item_variation_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_keys`
--

CREATE TABLE `phppos_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(40) NOT NULL,
  `key_ending` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_limits`
--

CREATE TABLE `phppos_limits` (
  `id` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_locations`
--

CREATE TABLE `phppos_locations` (
  `location_id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `company` text DEFAULT NULL,
  `website` text DEFAULT NULL,
  `company_logo` int(10) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `cc_email` text DEFAULT NULL,
  `bcc_email` text DEFAULT NULL,
  `color` text DEFAULT NULL,
  `return_policy` text DEFAULT NULL,
  `receive_stock_alert` text DEFAULT NULL,
  `stock_alert_email` text DEFAULT NULL,
  `timezone` text DEFAULT NULL,
  `enable_credit_card_processing` text DEFAULT NULL,
  `credit_card_processor` text DEFAULT NULL,
  `hosted_checkout_merchant_id` text DEFAULT NULL,
  `hosted_checkout_merchant_password` text DEFAULT NULL,
  `emv_merchant_id` text DEFAULT NULL,
  `net_e_pay_server` text DEFAULT NULL,
  `listener_port` text DEFAULT NULL,
  `com_port` text DEFAULT NULL,
  `stripe_public` text DEFAULT NULL,
  `stripe_private` text DEFAULT NULL,
  `stripe_currency_code` text DEFAULT NULL,
  `braintree_merchant_id` text DEFAULT NULL,
  `braintree_public_key` text DEFAULT NULL,
  `braintree_private_key` text DEFAULT NULL,
  `default_tax_1_rate` text DEFAULT NULL,
  `default_tax_1_name` text DEFAULT NULL,
  `default_tax_2_rate` text DEFAULT NULL,
  `default_tax_2_name` text DEFAULT NULL,
  `default_tax_2_cumulative` text DEFAULT NULL,
  `default_tax_3_rate` text DEFAULT NULL,
  `default_tax_3_name` text DEFAULT NULL,
  `default_tax_4_rate` text DEFAULT NULL,
  `default_tax_4_name` text DEFAULT NULL,
  `default_tax_5_rate` text DEFAULT NULL,
  `default_tax_5_name` text DEFAULT NULL,
  `deleted` int(1) DEFAULT 0,
  `secure_device_override_emv` varchar(255) NOT NULL DEFAULT '',
  `secure_device_override_non_emv` varchar(255) NOT NULL DEFAULT '',
  `tax_class_id` int(10) DEFAULT NULL,
  `ebt_integrated` int(1) NOT NULL DEFAULT 0,
  `integrated_gift_cards` int(1) NOT NULL DEFAULT 0,
  `square_currency_code` varchar(255) NOT NULL DEFAULT 'USD',
  `square_location_id` varchar(255) NOT NULL DEFAULT '',
  `square_currency_multiplier` varchar(255) NOT NULL DEFAULT '100',
  `email_sales_email` varchar(255) DEFAULT NULL,
  `email_receivings_email` varchar(255) DEFAULT NULL,
  `stock_alerts_just_order_level` int(1) DEFAULT 0,
  `platformly_api_key` text DEFAULT NULL,
  `platformly_project_id` text DEFAULT NULL,
  `tax_id` varchar(255) NOT NULL DEFAULT '',
  `disable_markup_markdown` text DEFAULT NULL,
  `card_connect_mid` varchar(255) DEFAULT NULL,
  `card_connect_rest_username` varchar(255) DEFAULT NULL,
  `card_connect_rest_password` varchar(255) DEFAULT NULL,
  `auto_reports_email` varchar(255) NOT NULL DEFAULT '',
  `auto_reports_email_time` time DEFAULT NULL,
  `auto_reports_day` varchar(255) NOT NULL DEFAULT 'previous_day',
  `disable_confirmation_option_for_emv_credit_card` int(1) NOT NULL DEFAULT 0,
  `api_key` varchar(200) DEFAULT NULL,
  `nit` varchar(200) DEFAULT NULL,
  `razon_social` varchar(200) DEFAULT NULL,
  `number_establecimiento` varchar(200) DEFAULT NULL,
  `municipio` varchar(200) DEFAULT NULL,
  `departamento` varchar(200) DEFAULT NULL,
  `tipo_contribuyente` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_locations`
--

INSERT INTO `phppos_locations` (`location_id`, `name`, `company`, `website`, `company_logo`, `address`, `phone`, `email`, `cc_email`, `bcc_email`, `color`, `return_policy`, `receive_stock_alert`, `stock_alert_email`, `timezone`, `enable_credit_card_processing`, `credit_card_processor`, `hosted_checkout_merchant_id`, `hosted_checkout_merchant_password`, `emv_merchant_id`, `net_e_pay_server`, `listener_port`, `com_port`, `stripe_public`, `stripe_private`, `stripe_currency_code`, `braintree_merchant_id`, `braintree_public_key`, `braintree_private_key`, `default_tax_1_rate`, `default_tax_1_name`, `default_tax_2_rate`, `default_tax_2_name`, `default_tax_2_cumulative`, `default_tax_3_rate`, `default_tax_3_name`, `default_tax_4_rate`, `default_tax_4_name`, `default_tax_5_rate`, `default_tax_5_name`, `deleted`, `secure_device_override_emv`, `secure_device_override_non_emv`, `tax_class_id`, `ebt_integrated`, `integrated_gift_cards`, `square_currency_code`, `square_location_id`, `square_currency_multiplier`, `email_sales_email`, `email_receivings_email`, `stock_alerts_just_order_level`, `platformly_api_key`, `platformly_project_id`, `tax_id`, `disable_markup_markdown`, `card_connect_mid`, `card_connect_rest_username`, `card_connect_rest_password`, `auto_reports_email`, `auto_reports_email_time`, `auto_reports_day`, `disable_confirmation_option_for_emv_credit_card`, `api_key`, `nit`, `razon_social`, `number_establecimiento`, `municipio`, `departamento`,`tipo_contribuyente`) VALUES
(1, 'Tienda SUMIT', '', 'sumit.gt', 2, 'CC PLAZA ASTURIAS COBAN', '', '', '', '', '#001f49', '', '0', '', 'America/Guatemala', '0', 'mercury', '', '', '', '', '', '', '', '', 'usd', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', 0, '', '', NULL, 1, 0, 'USD', '', '100', '', '', 0, '', '', '', '0', '', '', '', '', '00:00:00', 'previous_day', 0, NULL, NULL, NULL, '1', 'Coban ', 'Alta Verapaz',0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_location_items`
--

CREATE TABLE `phppos_location_items` (
  `location_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL DEFAULT '',
  `cost_price` decimal(23,10) DEFAULT NULL,
  `unit_price` decimal(23,10) DEFAULT NULL,
  `promo_price` decimal(23,10) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `quantity` decimal(23,10) DEFAULT 0.0000000000,
  `reorder_level` decimal(23,10) DEFAULT NULL,
  `override_default_tax` int(1) NOT NULL DEFAULT 0,
  `tax_class_id` int(10) DEFAULT NULL,
  `replenish_level` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_location_items`
--

INSERT INTO `phppos_location_items` (`location_id`, `item_id`, `location`, `cost_price`, `unit_price`, `promo_price`, `start_date`, `end_date`, `quantity`, `reorder_level`, `override_default_tax`, `tax_class_id`, `replenish_level`) VALUES
(1, 1, '', NULL, NULL, NULL, NULL, NULL, 10.0000000000, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_location_items_taxes`
--

CREATE TABLE `phppos_location_items_taxes` (
  `id` int(10) NOT NULL,
  `location_id` int(11) NOT NULL,
  `item_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(16,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_location_items_tier_prices`
--

CREATE TABLE `phppos_location_items_tier_prices` (
  `tier_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `location_id` int(10) NOT NULL,
  `unit_price` decimal(23,10) DEFAULT 0.0000000000,
  `percent_off` decimal(15,3) DEFAULT NULL,
  `cost_plus_percent` decimal(15,3) DEFAULT NULL,
  `cost_plus_fixed_amount` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_location_item_kits`
--

CREATE TABLE `phppos_location_item_kits` (
  `location_id` int(11) NOT NULL,
  `item_kit_id` int(11) NOT NULL,
  `unit_price` decimal(23,10) DEFAULT NULL,
  `cost_price` decimal(23,10) DEFAULT NULL,
  `override_default_tax` int(1) NOT NULL DEFAULT 0,
  `tax_class_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_location_item_kits_taxes`
--

CREATE TABLE `phppos_location_item_kits_taxes` (
  `id` int(10) NOT NULL,
  `location_id` int(11) NOT NULL,
  `item_kit_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(16,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_location_item_kits_tier_prices`
--

CREATE TABLE `phppos_location_item_kits_tier_prices` (
  `tier_id` int(10) NOT NULL,
  `item_kit_id` int(10) NOT NULL,
  `location_id` int(10) NOT NULL,
  `unit_price` decimal(23,10) DEFAULT 0.0000000000,
  `percent_off` decimal(15,3) DEFAULT NULL,
  `cost_plus_percent` decimal(15,3) DEFAULT NULL,
  `cost_plus_fixed_amount` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_location_item_variations`
--

CREATE TABLE `phppos_location_item_variations` (
  `item_variation_id` int(10) NOT NULL,
  `location_id` int(10) NOT NULL,
  `quantity` int(1) DEFAULT NULL,
  `reorder_level` decimal(23,10) DEFAULT NULL,
  `replenish_level` decimal(23,10) DEFAULT NULL,
  `unit_price` decimal(23,10) DEFAULT NULL,
  `cost_price` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_location_item_variations`
--

INSERT INTO `phppos_location_item_variations` (`item_variation_id`, `location_id`, `quantity`, `reorder_level`, `replenish_level`, `unit_price`, `cost_price`) VALUES
(1, 1, 377, NULL, NULL, NULL, NULL),
(2, 1, 365, NULL, NULL, NULL, NULL),
(3, 1, 395, NULL, NULL, NULL, NULL),
(4, 1, 10, NULL, NULL, NULL, NULL),
(5, 1, 10, NULL, NULL, NULL, NULL),
(6, 1, 10, NULL, NULL, NULL, NULL),
(7, 1, 10, NULL, NULL, NULL, NULL),
(8, 1, 10, NULL, NULL, NULL, NULL),
(9, 1, 10, NULL, NULL, NULL, NULL),
(10, 1, 2, NULL, NULL, NULL, NULL),
(11, 1, 89, NULL, NULL, NULL, NULL),
(12, 1, 99, NULL, NULL, NULL, NULL),
(13, 1, 99, NULL, NULL, NULL, NULL),
(14, 1, 100, NULL, NULL, NULL, NULL),
(15, 1, 99, NULL, NULL, NULL, NULL),
(16, 1, 0, 5.0000000000, NULL, 10.0000000000, 10.0000000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_logs`
--

CREATE TABLE `phppos_logs` (
  `id` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` enum('get','post','options','put','patch','delete') NOT NULL,
  `params` text DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_manufacturers`
--

CREATE TABLE `phppos_manufacturers` (
  `id` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_messages`
--

CREATE TABLE `phppos_messages` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `sender_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_messages`
--

INSERT INTO `phppos_messages` (`id`, `message`, `sender_id`, `created_at`, `deleted`) VALUES
(1, 'Hola', 1, now(), 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_message_receiver`
--

CREATE TABLE `phppos_message_receiver` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message_read` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_message_receiver`
--

INSERT INTO `phppos_message_receiver` (`id`, `message_id`, `receiver_id`, `message_read`) VALUES
(1,1,2,0); 
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_migrations`
--

CREATE TABLE `phppos_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_migrations`
--

INSERT INTO `phppos_migrations` (`version`) VALUES
(20210210113502);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_modifiers`
--

CREATE TABLE `phppos_modifiers` (
  `id` int(10) NOT NULL,
  `sort_order` int(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_modifier_items`
--

CREATE TABLE `phppos_modifier_items` (
  `id` int(10) NOT NULL,
  `sort_order` int(10) NOT NULL DEFAULT 0,
  `modifier_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cost_price` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `unit_price` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_modules`
--

CREATE TABLE `phppos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `module_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_modules`
--

INSERT INTO `phppos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `icon`, `module_id`) VALUES
('module_appointments', 'module_appointments_desc', 75, 'ti-calendar', 'appointments'),
('module_config', 'module_config_desc', 100, 'icon ti-settings', 'config'),
('module_customers', 'module_customers_desc', 15, 'icon ti-user', 'customers'),
('module_deliveries', 'module_deliveries_desc', 71, 'ion-android-car', 'deliveries'),
('module_employees', 'module_employees_desc', 80, 'icon ti-id-badge', 'employees'),
('module_expenses', 'module_expenses_desc', 75, 'icon ti-money', 'expenses'),
('module_giftcards', 'module_giftcards_desc', 90, 'icon ti-credit-card', 'giftcards'),
('module_item_kits', 'module_item_kits_desc', 30, 'icon ti-harddrives', 'item_kits'),
('module_items', 'module_items_desc', 20, 'icon ti-harddrive', 'items'),
('module_locations', 'module_locations_desc', 110, 'icon ti-home', 'locations'), -- Se deja sin nombre o desc
('module_locationsadmin', 'module_locationsadmin_desc', 115, 'icon ti-home', 'locationsadmin'), -- Se usa el nombre y desc de 'locations'
('module_messages', 'module_messages_desc', 120, 'icon ti-email', 'messages'),
('module_price_rules', 'module_item_price_rules_desc', 35, 'ion-ios-pricetags-outline', 'price_rules'),
('module_receivings', 'module_receivings_desc', 60, 'icon ti-cloud-down', 'receivings'),
('module_reports', 'module_reports_desc', 50, 'icon ti-bar-chart', 'reports'),
('module_sales', 'module_sales_desc', 10, 'icon ti-shopping-cart', 'sales'),
('module_suppliers', 'module_suppliers_desc', 40, 'icon ti-download', 'suppliers'),
('module_work_orders', 'module_work_orders_desc', 71, 'ion-hammer', 'work_orders');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_modules_actions`
--

CREATE TABLE `phppos_modules_actions` (
  `action_id` varchar(100) NOT NULL,
  `module_id` varchar(100) NOT NULL,
  `action_name_key` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_modules_actions`
--

INSERT INTO `phppos_modules_actions` (`action_id`, `module_id`, `action_name_key`, `sort`) VALUES
('add', 'appointments', 'appointments_add', 240),
('add_update', 'customers', 'module_action_add_update', 1),
('add_update', 'deliveries', 'deliveries_add_update', 240),
('add_update', 'employees', 'module_action_add_update', 130),
('add_update', 'expenses', 'module_expenses_add_update', 315),
('add_update', 'giftcards', 'module_action_add_update', 200),
('add_update', 'item_kits', 'module_action_add_update', 70),
('add_update', 'items', 'module_action_add_update', 40),
('add_update', 'locations', 'module_action_add_update', 240),
('add_update', 'price_rules', 'module_action_add_update', 400),
('add_update', 'suppliers', 'module_action_add_update', 100),
('allow_customer_search_suggestions_for_sales', 'sales', 'sales_allow_customer_search_suggestions_for_sales', 302),
('allow_item_search_suggestions_for_receivings', 'receivings', 'receivings_allow_item_search_suggestions_for_receivings', 301),
('allow_item_search_suggestions_for_sales', 'sales', 'sales_allow_item_search_suggestions_for_sales', 300),
('allow_supplier_search_suggestions_for_suppliers', 'receivings', 'receivings_allow_supplier_search_suggestions_for_suppliers', 303),
('assign_all_locations', 'employees', 'module_action_assign_all_locations', 151),
('can_edit_inventory_comment', 'items', 'items_can_edit_inventory_comment', 500),
('can_lookup_receipt', 'sales', 'sales_can_lookup_receipt', 503),
('change_sale_date', 'sales', 'sales_change_sale_date', 184),
('complete_sale', 'sales', 'sales_complete_sale', 184),
('complete_transfer', 'receivings', 'receivings_complete_transfer', 184),
('count_inventory', 'items', 'items_count_inventory', 65),
('delete', 'appointments', 'appointments_delete', 250),
('delete', 'customers', 'module_action_delete', 20),
('delete', 'deliveries', 'deliveries_delete', 250),
('delete', 'employees', 'module_action_delete', 140),
('delete', 'expenses', 'module_expenses_delete', 330),
('delete', 'giftcards', 'module_action_delete', 210),
('delete', 'item_kits', 'module_action_delete', 80),
('delete', 'items', 'module_action_delete', 50),
('delete', 'locations', 'module_action_delete', 250),
('delete', 'price_rules', 'module_action_delete', 405),
('delete', 'suppliers', 'module_action_delete', 110),
('delete', 'work_orders', 'work_orders_delete', 241),
('delete_receiving', 'receivings', 'module_action_delete_receiving', 306),
('delete_register_log', 'reports', 'common_delete_register_log', 232),
('delete_sale', 'sales', 'module_action_delete_sale', 230),
('delete_suspended_sale', 'sales', 'module_action_delete_suspended_sale', 181),
('delete_taxes', 'receivings', 'module_action_delete_taxes', 300),
('delete_taxes', 'sales', 'module_action_delete_taxes', 182),
('edit', 'appointments', 'appointments_edit', 245),
('edit', 'deliveries', 'deliveries_edit', 245),
('edit', 'work_orders', 'work_orders_edit', 240),
('edit_customer_points', 'customers', 'module_edit_customer_points', 35),
('edit_giftcard_value', 'giftcards', 'module_edit_giftcard_value', 205),
('edit_prices', 'item_kits', 'common_edit_prices', 502),
('edit_prices', 'items', 'common_edit_prices', 501),
('edit_profile', 'employees', 'common_edit_profile', 155),
('edit_quantity', 'items', 'items_edit_quantity', 62),
('edit_receiving', 'receivings', 'module_action_edit_receiving', 303),
('edit_register_log', 'reports', 'common_edit_register_log', 231),
('edit_sale', 'sales', 'module_edit_sale', 190),
('edit_sale_cost_price', 'sales', 'module_edit_sale_cost_price', 175),
('edit_sale_price', 'sales', 'module_edit_sale_price', 170),
('edit_store_account_balance', 'customers', 'customers_edit_store_account_balance', 31),
('edit_store_account_balance', 'suppliers', 'suppliers_edit_store_account_balance', 130),
('edit_suspended_sale', 'sales', 'sales_edit_suspended_sale', 192),
('edit_taxes', 'receivings', 'module_edit_taxes', 304),
('edit_taxes', 'sales', 'module_edit_taxes', 191),
('edit_tier', 'customers', 'customers_edit_tier', 45),
('excel_export', 'customers', 'common_excel_export', 40),
('excel_export', 'employees', 'common_excel_export', 160),
('excel_export', 'giftcards', 'common_excel_export', 225),
('excel_export', 'item_kits', 'common_excel_export', 95),
('excel_export', 'items', 'common_excel_export', 80),
('excel_export', 'suppliers', 'common_excel_export', 135),
('give_discount', 'sales', 'module_give_discount', 180),
('manage_categories', 'expenses', 'items_manage_categories', 316),
('manage_categories', 'items', 'items_manage_categories', 70),
('manage_manufacturers', 'items', 'items_manage_manufacturers', 76),
('manage_statuses', 'work_orders', 'work_orders_manage_statuses', 243),
('manage_tags', 'items', 'items_manage_tags', 75),
('process_returns', 'sales', 'config_process_returns', 184),
('receive_store_account_payment', 'receivings', 'common_receive_store_account_payment', 260),
('receive_store_account_payment', 'sales', 'common_receive_store_account_payment', 255),
('search', 'appointments', 'appointments_search', 255),
('search', 'customers', 'module_action_search_customers', 30),
('search', 'deliveries', 'deliveries_search', 255),
('search', 'employees', 'module_action_search_employees', 150),
('search', 'expenses', 'module_expenses_search', 310),
('search', 'giftcards', 'module_action_search_giftcards', 220),
('search', 'item_kits', 'module_action_search_item_kits', 90),
('search', 'items', 'module_action_search_items', 60),
('search', 'locations', 'module_action_search_locations', 260),
('search', 'price_rules', 'module_action_search_price_rules', 415),
('search', 'sales', 'module_action_search_sales', 235),
('search', 'suppliers', 'module_action_search_suppliers', 120),
('search', 'work_orders', 'work_orders_search', 242),
('see_cost_price', 'item_kits', 'module_see_cost_price', 91),
('see_cost_price', 'items', 'module_see_cost_price', 61),
('see_count_when_count_inventory', 'items', 'items_see_count_when_count_inventory', 66),
('send_message', 'messages', 'employees_send_message', 350),
('send_transfer', 'receivings', 'receivings_send_transfer', 185),
('show_cost_price', 'reports', 'reports_show_cost_price', 290),
('show_profit', 'reports', 'reports_show_profit', 280),
('suspend_sale', 'sales', 'sales_suspend_sale', 183),
('view_all_employee_commissions', 'reports', 'reports_view_all_employee_commissions', 107),
('view_appointments', 'reports', 'reports_appointments', 95),
('view_categories', 'reports', 'reports_categories', 100),
('view_closeout', 'reports', 'reports_closeout', 105),
('view_commissions', 'reports', 'reports_commission', 106),
('view_customers', 'reports', 'reports_customers', 120),
('view_dashboard_stats', 'reports', 'reports_view_dashboard_stats', 300),
('view_deleted_sales', 'reports', 'reports_deleted_sales', 130),
('view_deliveries', 'reports', 'reports_deliveries', 135),
('view_discounts', 'reports', 'reports_discounts', 140),
('view_employees', 'reports', 'reports_employees', 150),
('view_expenses', 'reports', 'module_expenses_report', 155),
('view_giftcards', 'reports', 'reports_giftcards', 160),
('view_inventory_at_all_locations', 'items', 'common_view_inventory_at_all_locations', 268),
('view_inventory_at_all_locations', 'reports', 'reports_view_inventory_at_all_locations', 300),
('view_inventory_print_list', 'items', 'common_view_inventory_print_list', 267),
('view_inventory_reports', 'reports', 'reports_inventory_reports', 170),
('view_item_kits', 'reports', 'module_item_kits', 180),
('view_items', 'reports', 'reports_items', 190),
('view_manufacturers', 'reports', 'reports_manufacturers', 195),
('view_payments', 'reports', 'reports_payments', 200),
('view_price_rules', 'reports', 'reports_price_rules', 205),
('view_profit_and_loss', 'reports', 'reports_profit_and_loss', 210),
('view_receivings', 'reports', 'reports_receivings', 220),
('view_register_log', 'reports', 'reports_register_log_title', 230),
('view_registers', 'reports', 'reports_registers', 235),
('view_sales', 'reports', 'reports_sales', 240),
('view_sales_generator', 'reports', 'reports_sales_generator', 110),
('view_store_account', 'reports', 'reports_store_account', 250),
('view_store_account_suppliers', 'reports', 'reports_store_account_suppliers', 255),
('view_suppliers', 'reports', 'reports_suppliers', 260),
('view_suspended_sales', 'reports', 'reports_suspended_sales', 261),
('view_tags', 'reports', 'common_tags', 264),
('view_taxes', 'reports', 'reports_taxes', 270),
('view_tiers', 'reports', 'reports_tiers', 275),
('view_timeclock', 'reports', 'employees_timeclock', 280),
('add_update', 'locationsadmin', 'module_action_add_update', 240), -- locationsadmin
('search', 'locationsadmin', 'module_action_search_locations', 260);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_people`
--

CREATE TABLE `phppos_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `full_name` text NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `image_id` int(10) DEFAULT NULL,
  `person_id` int(10) NOT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_people`
--

INSERT INTO `phppos_people` (`first_name`, `last_name`, `full_name`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `image_id`, `person_id`, `create_date`, `last_modified`) VALUES
('administrador', '', 'administrador ', '12345678', 'admin@gmail.com', 'Guatemala', '', '', '', '', '', '', NULL, 1, now(), now()),
('demo', '', 'demo ', '', 'demo@gmail.com', 'Guatemala', '', '', '', '', '', '', NULL, 2, now(), now());


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_people_files`
--

CREATE TABLE `phppos_people_files` (
  `id` int(11) NOT NULL,
  `file_id` int(10) NOT NULL,
  `person_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_permissions`
--

CREATE TABLE `phppos_permissions` (
  `module_id` varchar(100) NOT NULL,
  `person_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_permissions`
--

INSERT INTO `phppos_permissions` (`module_id`, `person_id`) VALUES
('appointments', 1),
('appointments', 2),
('config', 1),
('config', 2),
('customers', 1),
('customers', 2),
('deliveries', 1),
('deliveries', 2),
('employees', 1),
('expenses', 1),
('expenses', 2),
('giftcards', 1),
('giftcards', 2),
('item_kits', 1),
('item_kits', 2),
('items', 1),
('items', 2),
('messages', 1),
('messages', 2),
('price_rules', 1),
('price_rules', 2),
('receivings', 1),
('receivings', 2),
('reports', 1),
('reports', 2),
('sales', 1),
('sales', 2),
('suppliers', 1),
('suppliers', 2),
('work_orders', 1),
('work_orders', 2),
('locationsadmin', 1),
('locations', 1);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_permissions_actions`
--

CREATE TABLE `phppos_permissions_actions` (
  `module_id` varchar(100) NOT NULL,
  `person_id` int(11) NOT NULL,
  `action_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_permissions_actions`
--

INSERT INTO `phppos_permissions_actions` (`module_id`, `person_id`, `action_id`) VALUES
('appointments', 1, 'add'),
('appointments', 1, 'delete'),
('appointments', 1, 'edit'),
('appointments', 1, 'search'),
('appointments', 2, 'add'),
('appointments', 2, 'delete'),
('appointments', 2, 'edit'),
('appointments', 2, 'search'),
('customers', 1, 'add_update'),
('customers', 1, 'delete'),
('customers', 1, 'edit_customer_points'),
('customers', 1, 'edit_store_account_balance'),
('customers', 1, 'edit_tier'),
('customers', 1, 'excel_export'),
('customers', 1, 'search'),
('customers', 2, 'add_update'),
('customers', 2, 'delete'),
('customers', 2, 'edit_customer_points'),
('customers', 2, 'edit_store_account_balance'),
('customers', 2, 'edit_tier'),
('customers', 2, 'excel_export'),
('customers', 2, 'search'),
('deliveries', 1, 'add_update'),
('deliveries', 1, 'delete'),
('deliveries', 1, 'edit'),
('deliveries', 1, 'search'),
('deliveries', 2, 'add_update'),
('deliveries', 2, 'delete'),
('deliveries', 2, 'edit'),
('deliveries', 2, 'search'),
('employees', 1, 'add_update'),
('employees', 1, 'assign_all_locations'),
('employees', 1, 'delete'),
('employees', 1, 'edit_profile'),
('employees', 1, 'excel_export'),
('employees', 1, 'search'),
('expenses', 1, 'add_update'),
('expenses', 1, 'delete'),
('expenses', 1, 'manage_categories'),
('expenses', 1, 'search'),
('expenses', 2, 'add_update'),
('expenses', 2, 'delete'),
('expenses', 2, 'manage_categories'),
('expenses', 2, 'search'),
('giftcards', 1, 'add_update'),
('giftcards', 1, 'delete'),
('giftcards', 1, 'edit_giftcard_value'),
('giftcards', 1, 'excel_export'),
('giftcards', 1, 'search'),
('giftcards', 2, 'add_update'),
('giftcards', 2, 'delete'),
('giftcards', 2, 'edit_giftcard_value'),
('giftcards', 2, 'excel_export'),
('giftcards', 2, 'search'),
('item_kits', 1, 'add_update'),
('item_kits', 1, 'delete'),
('item_kits', 1, 'edit_prices'),
('item_kits', 1, 'excel_export'),
('item_kits', 1, 'search'),
('item_kits', 1, 'see_cost_price'),
('item_kits', 2, 'add_update'),
('item_kits', 2, 'delete'),
('item_kits', 2, 'edit_prices'),
('item_kits', 2, 'excel_export'),
('item_kits', 2, 'search'),
('item_kits', 2, 'see_cost_price'),
('items', 1, 'add_update'),
('items', 1, 'can_edit_inventory_comment'),
('items', 1, 'count_inventory'),
('items', 1, 'delete'),
('items', 1, 'edit_prices'),
('items', 1, 'edit_quantity'),
('items', 1, 'excel_export'),
('items', 1, 'manage_categories'),
('items', 1, 'manage_manufacturers'),
('items', 1, 'manage_tags'),
('items', 1, 'search'),
('items', 1, 'see_cost_price'),
('items', 1, 'see_count_when_count_inventory'),
('items', 1, 'view_inventory_at_all_locations'),
('items', 1, 'view_inventory_print_list'),
('items', 2, 'add_update'),
('items', 2, 'can_edit_inventory_comment'),
('items', 2, 'count_inventory'),
('items', 2, 'delete'),
('items', 2, 'edit_prices'),
('items', 2, 'edit_quantity'),
('items', 2, 'excel_export'),
('items', 2, 'manage_categories'),
('items', 2, 'manage_manufacturers'),
('items', 2, 'manage_tags'),
('items', 2, 'search'),
('items', 2, 'see_cost_price'),
('items', 2, 'see_count_when_count_inventory'),
('items', 2, 'view_inventory_at_all_locations'),
('items', 2, 'view_inventory_print_list'),
('messages', 1, 'send_message'),
('messages', 2, 'send_message'),
('price_rules', 1, 'add_update'),
('price_rules', 1, 'delete'),
('price_rules', 1, 'search'),
('price_rules', 2, 'add_update'),
('price_rules', 2, 'delete'),
('price_rules', 2, 'search'),
('receivings', 1, 'allow_item_search_suggestions_for_receivings'),
('receivings', 1, 'allow_supplier_search_suggestions_for_suppliers'),
('receivings', 1, 'complete_transfer'),
('receivings', 1, 'delete_receiving'),
('receivings', 1, 'delete_taxes'),
('receivings', 1, 'edit_receiving'),
('receivings', 1, 'edit_taxes'),
('receivings', 1, 'receive_store_account_payment'),
('receivings', 1, 'send_transfer'),
('receivings', 2, 'allow_item_search_suggestions_for_receivings'),
('receivings', 2, 'allow_supplier_search_suggestions_for_suppliers'),
('receivings', 2, 'complete_transfer'),
('receivings', 2, 'delete_receiving'),
('receivings', 2, 'delete_taxes'),
('receivings', 2, 'edit_receiving'),
('receivings', 2, 'edit_taxes'),
('receivings', 2, 'receive_store_account_payment'),
('receivings', 2, 'send_transfer'),
('reports', 1, 'delete_register_log'),
('reports', 1, 'edit_register_log'),
('reports', 1, 'show_cost_price'),
('reports', 1, 'show_profit'),
('reports', 1, 'view_all_employee_commissions'),
('reports', 1, 'view_appointments'),
('reports', 1, 'view_categories'),
('reports', 1, 'view_closeout'),
('reports', 1, 'view_commissions'),
('reports', 1, 'view_customers'),
('reports', 1, 'view_dashboard_stats'),
('reports', 1, 'view_deleted_sales'),
('reports', 1, 'view_deliveries'),
('reports', 1, 'view_discounts'),
('reports', 1, 'view_employees'),
('reports', 1, 'view_expenses'),
('reports', 1, 'view_giftcards'),
('reports', 1, 'view_inventory_at_all_locations'),
('reports', 1, 'view_inventory_reports'),
('reports', 1, 'view_item_kits'),
('reports', 1, 'view_items'),
('reports', 1, 'view_manufacturers'),
('reports', 1, 'view_payments'),
('reports', 1, 'view_price_rules'),
('reports', 1, 'view_profit_and_loss'),
('reports', 1, 'view_receivings'),
('reports', 1, 'view_register_log'),
('reports', 1, 'view_registers'),
('reports', 1, 'view_sales'),
('reports', 1, 'view_sales_generator'),
('reports', 1, 'view_store_account'),
('reports', 1, 'view_store_account_suppliers'),
('reports', 1, 'view_suppliers'),
('reports', 1, 'view_suspended_sales'),
('reports', 1, 'view_tags'),
('reports', 1, 'view_taxes'),
('reports', 1, 'view_tiers'),
('reports', 1, 'view_timeclock'),
('reports', 2, 'delete_register_log'),
('reports', 2, 'edit_register_log'),
('reports', 2, 'show_cost_price'),
('reports', 2, 'show_profit'),
('reports', 2, 'view_all_employee_commissions'),
('reports', 2, 'view_appointments'),
('reports', 2, 'view_categories'),
('reports', 2, 'view_closeout'),
('reports', 2, 'view_commissions'),
('reports', 2, 'view_customers'),
('reports', 2, 'view_dashboard_stats'),
('reports', 2, 'view_deleted_sales'),
('reports', 2, 'view_deliveries'),
('reports', 2, 'view_discounts'),
('reports', 2, 'view_employees'),
('reports', 2, 'view_expenses'),
('reports', 2, 'view_giftcards'),
('reports', 2, 'view_inventory_at_all_locations'),
('reports', 2, 'view_inventory_reports'),
('reports', 2, 'view_item_kits'),
('reports', 2, 'view_items'),
('reports', 2, 'view_manufacturers'),
('reports', 2, 'view_payments'),
('reports', 2, 'view_price_rules'),
('reports', 2, 'view_profit_and_loss'),
('reports', 2, 'view_receivings'),
('reports', 2, 'view_register_log'),
('reports', 2, 'view_registers'),
('reports', 2, 'view_sales'),
('reports', 2, 'view_sales_generator'),
('reports', 2, 'view_store_account'),
('reports', 2, 'view_store_account_suppliers'),
('reports', 2, 'view_suppliers'),
('reports', 2, 'view_suspended_sales'),
('reports', 2, 'view_tags'),
('reports', 2, 'view_taxes'),
('reports', 2, 'view_tiers'),
('reports', 2, 'view_timeclock'),
('sales', 1, 'allow_customer_search_suggestions_for_sales'),
('sales', 1, 'allow_item_search_suggestions_for_sales'),
('sales', 1, 'can_lookup_receipt'),
('sales', 1, 'change_sale_date'),
('sales', 1, 'complete_sale'),
('sales', 1, 'delete_sale'),
('sales', 1, 'delete_suspended_sale'),
('sales', 1, 'delete_taxes'),
('sales', 1, 'edit_sale'),
('sales', 1, 'edit_sale_cost_price'),
('sales', 1, 'edit_sale_price'),
('sales', 1, 'edit_suspended_sale'),
('sales', 1, 'edit_taxes'),
('sales', 1, 'give_discount'),
('sales', 1, 'process_returns'),
('sales', 1, 'receive_store_account_payment'),
('sales', 1, 'search'),
('sales', 1, 'suspend_sale'),
('sales', 2, 'allow_customer_search_suggestions_for_sales'),
('sales', 2, 'allow_item_search_suggestions_for_sales'),
('sales', 2, 'can_lookup_receipt'),
('sales', 2, 'change_sale_date'),
('sales', 2, 'complete_sale'),
('sales', 2, 'delete_sale'),
('sales', 2, 'delete_suspended_sale'),
('sales', 2, 'delete_taxes'),
('sales', 2, 'edit_sale'),
('sales', 2, 'edit_sale_cost_price'),
('sales', 2, 'edit_sale_price'),
('sales', 2, 'edit_suspended_sale'),
('sales', 2, 'edit_taxes'),
('sales', 2, 'give_discount'),
('sales', 2, 'process_returns'),
('sales', 2, 'receive_store_account_payment'),
('sales', 2, 'search'),
('sales', 2, 'suspend_sale'),
('suppliers', 1, 'add_update'),
('suppliers', 1, 'delete'),
('suppliers', 1, 'edit_store_account_balance'),
('suppliers', 1, 'excel_export'),
('suppliers', 1, 'search'),
('suppliers', 2, 'add_update'),
('suppliers', 2, 'delete'),
('suppliers', 2, 'edit_store_account_balance'),
('suppliers', 2, 'excel_export'),
('suppliers', 2, 'search'),
('work_orders', 1, 'delete'),
('work_orders', 1, 'edit'),
('work_orders', 1, 'manage_statuses'),
('work_orders', 1, 'search'),
('work_orders', 2, 'delete'),
('work_orders', 2, 'edit'),
('work_orders', 2, 'manage_statuses'),
('work_orders', 2, 'search'),
('locations', 1, 'add_update'),
('locations', 1, 'delete'),
('locations', 1, 'search'),
('locationsadmin', 1, 'add_update'),
('locationsadmin', 1, 'search');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_permissions_actions_locations`
--

CREATE TABLE `phppos_permissions_actions_locations` (
  `module_id` varchar(100) NOT NULL,
  `person_id` int(11) NOT NULL,
  `action_id` varchar(100) NOT NULL,
  `location_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_permissions_locations`
--

CREATE TABLE `phppos_permissions_locations` (
  `module_id` varchar(100) NOT NULL,
  `person_id` int(10) NOT NULL,
  `location_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_permissions_template`
--

CREATE TABLE `phppos_permissions_template` (
  `template_id` int(11) NOT NULL,
  `module_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_permissions_templates`
--

CREATE TABLE `phppos_permissions_templates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_permissions_template_actions`
--

CREATE TABLE `phppos_permissions_template_actions` (
  `template_id` int(11) NOT NULL,
  `module_id` varchar(100) NOT NULL,
  `action_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_permissions_template_actions_locations`
--

CREATE TABLE `phppos_permissions_template_actions_locations` (
  `template_id` int(11) NOT NULL,
  `module_id` varchar(100) NOT NULL,
  `action_id` varchar(100) NOT NULL,
  `location_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_permissions_template_locations`
--

CREATE TABLE `phppos_permissions_template_locations` (
  `template_id` int(11) NOT NULL,
  `module_id` varchar(100) NOT NULL,
  `location_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_price_rules`
--

CREATE TABLE `phppos_price_rules` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `added_on` timestamp NULL DEFAULT current_timestamp(),
  `active` int(1) NOT NULL DEFAULT 1,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `type` varchar(255) NOT NULL,
  `items_to_buy` decimal(23,10) DEFAULT NULL,
  `items_to_get` decimal(23,10) DEFAULT NULL,
  `percent_off` decimal(23,10) DEFAULT NULL,
  `fixed_off` decimal(23,10) DEFAULT NULL,
  `spend_amount` decimal(23,10) DEFAULT NULL,
  `num_times_to_apply` int(10) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `show_on_receipt` int(1) NOT NULL DEFAULT 0,
  `coupon_spend_amount` decimal(23,10) DEFAULT NULL,
  `mix_and_match` int(1) NOT NULL DEFAULT 0,
  `disable_loyalty_for_rule` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_price_rules_categories`
--

CREATE TABLE `phppos_price_rules_categories` (
  `id` int(10) NOT NULL,
  `rule_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_price_rules_items`
--

CREATE TABLE `phppos_price_rules_items` (
  `id` int(10) NOT NULL,
  `rule_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_price_rules_item_kits`
--

CREATE TABLE `phppos_price_rules_item_kits` (
  `id` int(10) NOT NULL,
  `rule_id` int(10) NOT NULL,
  `item_kit_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_price_rules_locations`
--

CREATE TABLE `phppos_price_rules_locations` (
  `id` int(10) NOT NULL,
  `rule_id` int(10) NOT NULL,
  `location_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_price_rules_manufacturers`
--

CREATE TABLE `phppos_price_rules_manufacturers` (
  `id` int(10) NOT NULL,
  `rule_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_price_rules_price_breaks`
--

CREATE TABLE `phppos_price_rules_price_breaks` (
  `id` int(10) NOT NULL,
  `rule_id` int(10) NOT NULL,
  `item_qty_to_buy` decimal(23,10) DEFAULT NULL,
  `discount_per_unit_fixed` decimal(23,10) DEFAULT NULL,
  `discount_per_unit_percent` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_price_rules_tags`
--

CREATE TABLE `phppos_price_rules_tags` (
  `id` int(10) NOT NULL,
  `rule_id` int(10) NOT NULL,
  `tag_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_price_rules_tiers_exclude`
--

CREATE TABLE `phppos_price_rules_tiers_exclude` (
  `price_rule_id` int(10) NOT NULL,
  `tier_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_price_tiers`
--

CREATE TABLE `phppos_price_tiers` (
  `id` int(10) NOT NULL,
  `order` int(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `default_percent_off` decimal(15,3) DEFAULT NULL,
  `default_cost_plus_percent` decimal(15,3) DEFAULT NULL,
  `default_cost_plus_fixed_amount` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_receivings`
--

CREATE TABLE `phppos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `supplier_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `receiving_id` int(10) NOT NULL,
  `payment_type` text DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `deleted_by` int(10) DEFAULT NULL,
  `suspended` int(1) NOT NULL DEFAULT 0,
  `location_id` int(11) NOT NULL,
  `transfer_to_location_id` int(11) DEFAULT NULL,
  `deleted_taxes` text DEFAULT NULL,
  `is_po` int(1) NOT NULL DEFAULT 0,
  `store_account_payment` int(1) NOT NULL DEFAULT 0,
  `total_quantity_purchased` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `total_quantity_received` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `subtotal` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `tax` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `total` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `profit` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `custom_field_1_value` varchar(255) DEFAULT NULL,
  `custom_field_2_value` varchar(255) DEFAULT NULL,
  `custom_field_3_value` varchar(255) DEFAULT NULL,
  `custom_field_4_value` varchar(255) DEFAULT NULL,
  `custom_field_5_value` varchar(255) DEFAULT NULL,
  `custom_field_6_value` varchar(255) DEFAULT NULL,
  `custom_field_7_value` varchar(255) DEFAULT NULL,
  `custom_field_8_value` varchar(255) DEFAULT NULL,
  `custom_field_9_value` varchar(255) DEFAULT NULL,
  `custom_field_10_value` varchar(255) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL,
  `override_taxes` text DEFAULT NULL,
  `shipping_cost` decimal(23,10) DEFAULT NULL,
  `signature_image_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_receivings_items`
--

CREATE TABLE `phppos_receivings_items` (
  `receiving_id` int(10) NOT NULL DEFAULT 0,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `item_variation_id` int(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `serialnumber` varchar(255) DEFAULT NULL,
  `line` int(11) NOT NULL DEFAULT 0,
  `quantity_purchased` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `quantity_received` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `item_cost_price` decimal(23,10) NOT NULL,
  `item_unit_price` decimal(23,10) NOT NULL,
  `discount_percent` decimal(15,3) NOT NULL DEFAULT 0.000,
  `expire_date` date DEFAULT NULL,
  `subtotal` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `tax` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `total` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `profit` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `override_taxes` text DEFAULT NULL,
  `unit_quantity` decimal(23,10) DEFAULT NULL,
  `items_quantity_units_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_receivings_items_taxes`
--

CREATE TABLE `phppos_receivings_items_taxes` (
  `receiving_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_receivings_payments`
--

CREATE TABLE `phppos_receivings_payments` (
  `payment_id` int(10) NOT NULL,
  `receiving_id` int(10) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `payment_amount` decimal(23,10) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_registers`
--

CREATE TABLE `phppos_registers` (
  `register_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iptran_device_id` varchar(255) DEFAULT NULL,
  `emv_terminal_id` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `card_connect_hsn` varchar(255) DEFAULT NULL,
  `emv_pinpad_ip` varchar(255) DEFAULT NULL,
  `emv_pinpad_port` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_registers`
--

INSERT INTO `phppos_registers` (`register_id`, `location_id`, `name`, `iptran_device_id`, `emv_terminal_id`, `deleted`, `card_connect_hsn`, `emv_pinpad_ip`, `emv_pinpad_port`) VALUES
(1, 1, 'Caja L1', '', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_registers_cart`
--

CREATE TABLE `phppos_registers_cart` (
  `id` int(10) NOT NULL,
  `register_id` int(11) NOT NULL,
  `data` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_registers_cart`
--

INSERT INTO `phppos_registers_cart` (`id`, `register_id`, `data`) VALUES
(1, 1, 0x613a31343a7b733a343a2263617274223b613a303a7b7d733a383a22737562746f74616c223b733a343a22302e3030223b733a333a22746178223b733a343a22302e3030223b733a31303a22616d6f756e745f647565223b733a343a22302e3030223b733a31333a2265786368616e67655f72617465223b693a313b733a31333a2265786368616e67655f6e616d65223b4e3b733a31353a2265786368616e67655f73796d626f6c223b733a313a2251223b733a32343a2265786368616e67655f73796d626f6c5f6c6f636174696f6e223b733a363a226265666f7265223b733a32373a2265786368616e67655f6e756d6265725f6f665f646563696d616c73223b4e3b733a32383a2265786368616e67655f74686f7573616e64735f736570617261746f72223b733a313a222c223b733a32323a2265786368616e67655f646563696d616c5f706f696e74223b733a313a222e223b733a383a22637573746f6d6572223b4e3b733a383a227061796d656e7473223b613a303a7b7d733a353a22746f74616c223b733a343a22302e3030223b7d);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_register_currency_denominations`
--

CREATE TABLE `phppos_register_currency_denominations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` decimal(23,10) NOT NULL,
  `deleted` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_register_currency_denominations`
--

INSERT INTO `phppos_register_currency_denominations` (`id`, `name`, `value`, `deleted`) VALUES
(1, 'Q200', 200.0000000000, 0),
(2, 'Q100', 100.0000000000, 0),
(3, 'Q50', 50.0000000000, 0),
(4, 'Q20', 20.0000000000, 0),
(5, 'Q10', 10.0000000000, 0),
(6, 'Q5', 5.0000000000, 0),
(7, 'Q1', 1.0000000000, 0),
(8, 'Q0.50', 0.5000000000, 0),
(9, 'Q0.25', 0.2500000000, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_register_log`
--

CREATE TABLE `phppos_register_log` (
  `register_log_id` int(10) NOT NULL,
  `employee_id_open` int(10) NOT NULL,
  `employee_id_close` int(11) DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `shift_start` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shift_end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `notes` text NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_register_log`
--

INSERT INTO `phppos_register_log` (`register_log_id`, `employee_id_open`, `employee_id_close`, `register_id`, `shift_start`, `shift_end`, `notes`, `deleted`) VALUES
(1, 1, 1, 1, now(), now(), '', 0),
(2, 1, 1, 1, now(), now(), '', 0),
(3, 1, 1, 1, now(), now(), '', 0),
(4, 1, 1, 1, now(), now(), '', 0),
(5, 1, NULL, 1, now(), now(), '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_register_log_audit`
--

CREATE TABLE `phppos_register_log_audit` (
  `id` int(11) NOT NULL,
  `register_log_id` int(10) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `amount` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `note` text NOT NULL,
  `payment_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_register_log_denoms`
--

CREATE TABLE `phppos_register_log_denoms` (
  `id` int(11) NOT NULL,
  `register_log_id` int(11) NOT NULL,
  `register_currency_denominations_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_register_log_denoms`
--

INSERT INTO `phppos_register_log_denoms` (`id`, `register_log_id`, `register_currency_denominations_id`, `count`, `type`) VALUES
(1, 1, 1, 0, 'open'),
(2, 1, 2, 0, 'open'),
(3, 1, 3, 0, 'open'),
(4, 1, 4, 0, 'open'),
(5, 1, 5, 0, 'open'),
(6, 1, 6, 0, 'open'),
(7, 1, 7, 0, 'open'),
(8, 1, 1, 0, 'close'),
(9, 1, 2, 0, 'close'),
(10, 1, 3, 0, 'close'),
(11, 1, 4, 0, 'close'),
(12, 1, 5, 0, 'close'),
(13, 1, 6, 0, 'close'),
(14, 1, 7, 0, 'close'),
(15, 1, 13, 0, 'close'),
(16, 1, 14, 0, 'close'),
(17, 1, 15, 0, 'close'),
(18, 2, 1, 0, 'open'),
(19, 2, 2, 0, 'open'),
(20, 2, 3, 0, 'open'),
(21, 2, 4, 0, 'open'),
(22, 2, 5, 0, 'open'),
(23, 2, 6, 0, 'open'),
(24, 2, 7, 0, 'open'),
(25, 2, 13, 0, 'open'),
(26, 2, 14, 0, 'open'),
(27, 2, 15, 0, 'open'),
(28, 2, 1, 0, 'close'),
(29, 2, 2, 0, 'close'),
(30, 2, 3, 0, 'close'),
(31, 2, 4, 0, 'close'),
(32, 2, 5, 0, 'close'),
(33, 2, 6, 0, 'close'),
(34, 2, 7, 0, 'close'),
(35, 2, 13, 0, 'close'),
(36, 2, 14, 0, 'close'),
(37, 2, 15, 0, 'close'),
(38, 3, 1, 0, 'open'),
(39, 3, 2, 0, 'open'),
(40, 3, 3, 0, 'open'),
(41, 3, 4, 0, 'open'),
(42, 3, 5, 0, 'open'),
(43, 3, 6, 0, 'open'),
(44, 3, 7, 0, 'open'),
(45, 3, 13, 0, 'open'),
(46, 3, 14, 0, 'open'),
(47, 3, 15, 0, 'open'),
(48, 3, 1, 0, 'close'),
(49, 3, 2, 0, 'close'),
(50, 3, 3, 0, 'close'),
(51, 3, 4, 0, 'close'),
(52, 3, 5, 0, 'close'),
(53, 3, 6, 0, 'close'),
(54, 3, 7, 0, 'close'),
(55, 3, 13, 0, 'close'),
(56, 3, 14, 0, 'close'),
(57, 3, 15, 0, 'close'),
(58, 4, 1, 0, 'open'),
(59, 4, 2, 0, 'open'),
(60, 4, 3, 0, 'open'),
(61, 4, 4, 0, 'open'),
(62, 4, 5, 0, 'open'),
(63, 4, 6, 0, 'open'),
(64, 4, 7, 0, 'open'),
(65, 4, 13, 0, 'open'),
(66, 4, 14, 0, 'open'),
(67, 4, 15, 0, 'open'),
(68, 4, 1, 0, 'close'),
(69, 4, 2, 0, 'close'),
(70, 4, 3, 0, 'close'),
(71, 4, 4, 0, 'close'),
(72, 4, 5, 0, 'close'),
(73, 4, 6, 0, 'close'),
(74, 4, 7, 0, 'close'),
(75, 4, 13, 0, 'close'),
(76, 4, 14, 0, 'close'),
(77, 4, 15, 0, 'close'),
(78, 5, 1, 0, 'open'),
(79, 5, 2, 0, 'open'),
(80, 5, 3, 0, 'open'),
(81, 5, 4, 0, 'open'),
(82, 5, 5, 0, 'open'),
(83, 5, 6, 0, 'open'),
(84, 5, 7, 0, 'open'),
(85, 5, 13, 0, 'open'),
(86, 5, 14, 0, 'open'),
(87, 5, 15, 0, 'open');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_register_log_payments`
--

CREATE TABLE `phppos_register_log_payments` (
  `id` int(11) NOT NULL,
  `register_log_id` int(10) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `open_amount` decimal(23,10) NOT NULL,
  `close_amount` decimal(23,10) NOT NULL,
  `payment_sales_amount` decimal(23,10) NOT NULL,
  `total_payment_additions` decimal(23,10) NOT NULL,
  `total_payment_subtractions` decimal(23,10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_register_log_payments`
--

INSERT INTO `phppos_register_log_payments` (`id`, `register_log_id`, `payment_type`, `open_amount`, `close_amount`, `payment_sales_amount`, `total_payment_additions`, `total_payment_subtractions`) VALUES
(1, 1, 'common_cash', 1.0000000000, 1468.9300000000, 1467.9300000000, 0.0000000000, 0.0000000000),
(2, 2, 'common_cash', 1468.9300000000, 1480.9300000000, 12.0000000000, 0.0000000000, 0.0000000000),
(3, 3, 'common_cash', 0.0000000000, 1036.5000000000, 1036.5000000000, 0.0000000000, 0.0000000000),
(4, 4, 'common_cash', 0.0000000000, 3596.5000000000, 3596.5000000000, 0.0000000000, 0.0000000000),
(5, 5, 'common_cash', 0.0000000000, 0.0000000000, 0.0000000000, 0.0000000000, 0.0000000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_sales`
--

CREATE TABLE `phppos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT 0,
  `sold_by_employee_id` int(10) DEFAULT NULL,
  `comment` text NOT NULL,
  `discount_reason` text NOT NULL,
  `show_comment_on_receipt` int(1) NOT NULL DEFAULT 0,
  `sale_id` int(10) NOT NULL,
  `rule_id` int(10) DEFAULT NULL,
  `rule_discount` decimal(23,10) DEFAULT NULL,
  `payment_type` text DEFAULT NULL,
  `cc_ref_no` varchar(255) NOT NULL,
  `auth_code` varchar(255) DEFAULT '',
  `deleted_by` int(10) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `suspended` int(10) NOT NULL DEFAULT 0,
  `is_ecommerce` int(1) NOT NULL DEFAULT 0,
  `ecommerce_order_id` bigint(20) DEFAULT NULL,
  `ecommerce_status` varchar(255) NOT NULL DEFAULT '',
  `store_account_payment` int(1) NOT NULL DEFAULT 0,
  `was_layaway` int(1) NOT NULL DEFAULT 0,
  `was_estimate` int(1) NOT NULL DEFAULT 0,
  `location_id` int(11) NOT NULL,
  `register_id` int(11) DEFAULT NULL,
  `tier_id` int(10) DEFAULT NULL,
  `points_used` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `points_gained` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `did_redeem_discount` int(1) NOT NULL DEFAULT 0,
  `signature_image_id` int(10) DEFAULT NULL,
  `deleted_taxes` text DEFAULT NULL,
  `total_quantity_purchased` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `subtotal` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `tax` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `total` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `profit` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `exchange_rate` decimal(23,10) NOT NULL DEFAULT 1.0000000000,
  `exchange_name` varchar(255) NOT NULL DEFAULT '',
  `exchange_currency_symbol` varchar(255) NOT NULL DEFAULT '',
  `exchange_currency_symbol_location` varchar(255) NOT NULL DEFAULT '',
  `exchange_number_of_decimals` varchar(255) NOT NULL DEFAULT '',
  `exchange_thousands_separator` varchar(255) NOT NULL DEFAULT '',
  `exchange_decimal_point` varchar(255) NOT NULL DEFAULT '',
  `is_purchase_points` int(1) NOT NULL DEFAULT 0,
  `custom_field_1_value` varchar(255) DEFAULT NULL,
  `custom_field_2_value` varchar(255) DEFAULT NULL,
  `custom_field_3_value` varchar(255) DEFAULT NULL,
  `custom_field_4_value` varchar(255) DEFAULT NULL,
  `custom_field_5_value` varchar(255) DEFAULT NULL,
  `custom_field_6_value` varchar(255) DEFAULT NULL,
  `custom_field_7_value` varchar(255) DEFAULT NULL,
  `custom_field_8_value` varchar(255) DEFAULT NULL,
  `custom_field_9_value` varchar(255) DEFAULT NULL,
  `custom_field_10_value` varchar(255) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL,
  `override_taxes` text DEFAULT NULL,
  `return_sale_id` int(10) DEFAULT NULL,
  `tip` decimal(23,10) DEFAULT NULL,
  `total_quantity_received` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `non_taxable` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `nit` varchar(255) DEFAULT NULL,
  `fell` varchar(255) DEFAULT NULL,
  `nombreCliente` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_sales`
--

-- INSERT INTO `phppos_sales` (`sale_time`, `customer_id`, `employee_id`, `sold_by_employee_id`, `comment`, `discount_reason`, `show_comment_on_receipt`, `sale_id`, `rule_id`, `rule_discount`, `payment_type`, `cc_ref_no`, `auth_code`, `deleted_by`, `deleted`, `suspended`, `is_ecommerce`, `ecommerce_order_id`, `ecommerce_status`, `store_account_payment`, `was_layaway`, `was_estimate`, `location_id`, `register_id`, `tier_id`, `points_used`, `points_gained`, `did_redeem_discount`, `signature_image_id`, `deleted_taxes`, `total_quantity_purchased`, `subtotal`, `tax`, `total`, `profit`, `exchange_rate`, `exchange_name`, `exchange_currency_symbol`, `exchange_currency_symbol_location`, `exchange_number_of_decimals`, `exchange_thousands_separator`, `exchange_decimal_point`, `is_purchase_points`, `custom_field_1_value`, `custom_field_2_value`, `custom_field_3_value`, `custom_field_4_value`, `custom_field_5_value`, `custom_field_6_value`, `custom_field_7_value`, `custom_field_8_value`, `custom_field_9_value`, `custom_field_10_value`, `last_modified`, `override_taxes`, `return_sale_id`, `tip`, `total_quantity_received`, `non_taxable`, `nit`, `fell`, `nombreCliente`) VALUES
-- (now(), NULL, 1, 1, '', '', 0, 1, NULL, NULL, 'Efectivo: Q75.00<br />', '', '', 1, 1, 0, 0, NULL, '', 0, 0, 0, 1, 1, NULL, 0.0000000000, 0.0000000000, 0, NULL, NULL, 1.0000000000, 75.0000000000, 0.0000000000, 75.0000000000, 20.0000000000, 1.0000000000, '', 'Q', 'before', '', ',', '.', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, now(), NULL, NULL, NULL, 1.0000000000, 75.0000000000, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_sales_coupons`
--

CREATE TABLE `phppos_sales_coupons` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_sales_deliveries`
--

CREATE TABLE `phppos_sales_deliveries` (
  `id` int(11) NOT NULL,
  `sale_id` int(10) NOT NULL,
  `shipping_address_person_id` int(10) NOT NULL,
  `delivery_employee_person_id` int(10) DEFAULT NULL,
  `shipping_method_id` int(10) DEFAULT NULL,
  `shipping_zone_id` int(10) DEFAULT NULL,
  `tax_class_id` int(10) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `estimated_shipping_date` timestamp NULL DEFAULT NULL,
  `actual_shipping_date` timestamp NULL DEFAULT NULL,
  `estimated_delivery_or_pickup_date` timestamp NULL DEFAULT NULL,
  `actual_delivery_or_pickup_date` timestamp NULL DEFAULT NULL,
  `is_pickup` int(1) NOT NULL DEFAULT 0,
  `tracking_number` varchar(255) DEFAULT NULL,
  `comment` text NOT NULL,
  `deleted` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_sales_items`
--

CREATE TABLE `phppos_sales_items` (
  `sale_id` int(10) NOT NULL DEFAULT 0,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `item_variation_id` int(10) DEFAULT NULL,
  `rule_id` int(10) DEFAULT NULL,
  `rule_discount` decimal(23,10) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `serialnumber` varchar(255) DEFAULT NULL,
  `line` int(11) NOT NULL DEFAULT 0,
  `quantity_purchased` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `quantity_received` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `item_cost_price` decimal(23,10) NOT NULL,
  `item_unit_price` decimal(23,10) NOT NULL,
  `regular_item_unit_price_at_time_of_sale` decimal(23,10) DEFAULT NULL,
  `discount_percent` decimal(15,3) NOT NULL DEFAULT 0.000,
  `commission` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `subtotal` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `tax` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `total` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `profit` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `tier_id` int(10) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `damaged_qty` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `override_taxes` text DEFAULT NULL,
  `unit_quantity` decimal(23,10) DEFAULT NULL,
  `items_quantity_units_id` int(11) DEFAULT NULL,
  `loyalty_multiplier` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_sales_items`
--

INSERT INTO `phppos_sales_items` (`sale_id`, `item_id`, `item_variation_id`, `rule_id`, `rule_discount`, `description`, `serialnumber`, `line`, `quantity_purchased`, `quantity_received`, `item_cost_price`, `item_unit_price`, `regular_item_unit_price_at_time_of_sale`, `discount_percent`, `commission`, `subtotal`, `tax`, `total`, `profit`, `tier_id`, `series_id`, `damaged_qty`, `override_taxes`, `unit_quantity`, `items_quantity_units_id`, `loyalty_multiplier`) VALUES
(1, 1, NULL, NULL, NULL, '', NULL, 0, 1.0000000000, 1.0000000000, 55.0000000000, 75.0000000000, 75.0000000000, 0.000, 0.0000000000, 75.0000000000, 0.0000000000, 75.0000000000, 20.0000000000, NULL, NULL, 0.0000000000, NULL, NULL, NULL, 1.0000000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_sales_items_modifier_items`
--

CREATE TABLE `phppos_sales_items_modifier_items` (
  `item_id` int(10) NOT NULL,
  `sale_id` int(10) NOT NULL,
  `line` int(10) NOT NULL,
  `modifier_item_id` int(10) NOT NULL,
  `cost_price` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `unit_price` decimal(23,10) NOT NULL DEFAULT 0.0000000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_sales_items_notes`
--

CREATE TABLE `phppos_sales_items_notes` (
  `note_id` int(11) NOT NULL,
  `note_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(10) NOT NULL DEFAULT 0,
  `item_variation_id` int(10) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `detailed_notes` text DEFAULT NULL,
  `internal` tinyint(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL,
  `images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_sales_items_taxes`
--

CREATE TABLE `phppos_sales_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_sales_item_kits`
--

CREATE TABLE `phppos_sales_item_kits` (
  `sale_id` int(10) NOT NULL DEFAULT 0,
  `item_kit_id` int(10) NOT NULL DEFAULT 0,
  `rule_id` int(10) DEFAULT NULL,
  `rule_discount` decimal(23,10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `line` int(11) NOT NULL DEFAULT 0,
  `quantity_purchased` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `quantity_received` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `item_kit_cost_price` decimal(23,10) NOT NULL,
  `item_kit_unit_price` decimal(23,10) NOT NULL,
  `regular_item_kit_unit_price_at_time_of_sale` decimal(23,10) DEFAULT NULL,
  `discount_percent` decimal(15,3) NOT NULL DEFAULT 0.000,
  `commission` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `subtotal` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `tax` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `total` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `profit` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `tier_id` int(10) DEFAULT NULL,
  `override_taxes` text DEFAULT NULL,
  `loyalty_multiplier` decimal(23,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_sales_item_kits_modifier_items`
--

CREATE TABLE `phppos_sales_item_kits_modifier_items` (
  `item_kit_id` int(10) NOT NULL,
  `sale_id` int(10) NOT NULL,
  `line` int(10) NOT NULL,
  `modifier_item_id` int(10) NOT NULL,
  `cost_price` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `unit_price` decimal(23,10) NOT NULL DEFAULT 0.0000000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_sales_item_kits_taxes`
--

CREATE TABLE `phppos_sales_item_kits_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_kit_id` int(10) NOT NULL,
  `line` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_sales_payments`
--

CREATE TABLE `phppos_sales_payments` (
  `payment_id` int(10) NOT NULL,
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `payment_amount` decimal(23,10) NOT NULL,
  `auth_code` varchar(255) DEFAULT '',
  `ref_no` varchar(255) DEFAULT '',
  `cc_token` varchar(255) DEFAULT '',
  `acq_ref_data` varchar(255) DEFAULT '',
  `process_data` varchar(255) DEFAULT '',
  `entry_method` varchar(255) DEFAULT '',
  `aid` varchar(255) DEFAULT '',
  `tvr` varchar(255) DEFAULT '',
  `iad` varchar(255) DEFAULT '',
  `tsi` varchar(255) DEFAULT '',
  `arc` varchar(255) DEFAULT '',
  `cvm` varchar(255) DEFAULT '',
  `tran_type` varchar(255) DEFAULT '',
  `application_label` varchar(255) DEFAULT '',
  `truncated_card` varchar(255) DEFAULT '',
  `card_issuer` varchar(255) DEFAULT '',
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ebt_auth_code` varchar(255) DEFAULT '',
  `ebt_voucher_no` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_sales_payments`
--

INSERT INTO `phppos_sales_payments` (`payment_id`, `sale_id`, `payment_type`, `payment_amount`, `auth_code`, `ref_no`, `cc_token`, `acq_ref_data`, `process_data`, `entry_method`, `aid`, `tvr`, `iad`, `tsi`, `arc`, `cvm`, `tran_type`, `application_label`, `truncated_card`, `card_issuer`, `payment_date`, `ebt_auth_code`, `ebt_voucher_no`) VALUES
(1, 1, 'Efectivo', 75.0000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, now(), NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_sales_work_orders2`
--

CREATE TABLE `phppos_sales_work_orders2` ( 
`id` int(11) NOT NULL, 
`sale_id` int(10) NOT NULL,
status int(11) DEFAULT 1, 
`employee_id` int(11) DEFAULT NULL, 
`estimated_cost` decimal(23,10) DEFAULT NULL, 
`advance_payment` decimal(23,10) DEFAULT NULL,
`order_type` tinyint(1) DEFAULT NULL, 
`order_date` varchar(50) DEFAULT NULL,
`client_name` varchar(50) DEFAULT NULL,
`client_phone` varchar(50) DEFAULT NULL,
`equipment` varchar(50) DEFAULT NULL,
`model` varchar(100) DEFAULT NULL,
`accessories` varchar(50) DEFAULT NULL,
`service_description` varchar(50) DEFAULT NULL,
`custom_field_1_value` varchar(255) DEFAULT NULL,
`custom_field_2_value` varchar(255) DEFAULT NULL,
`custom_field_3_value` varchar(255) DEFAULT NULL,
`custom_field_4_value` varchar(255) DEFAULT NULL,
`custom_field_5_value` varchar(255) DEFAULT NULL,
`custom_field_6_value` varchar(255) DEFAULT NULL,
`custom_field_7_value` varchar(255) DEFAULT NULL,
`custom_field_8_value` varchar(255) DEFAULT NULL,
`custom_field_9_value` varchar(255) DEFAULT NULL,
`custom_field_10_value` varchar(255) DEFAULT NULL,
`comment` text DEFAULT NULL,
`images` text DEFAULT NULL,
`deleted` int(1) DEFAULT 0 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_sale_types`
--

CREATE TABLE `phppos_sale_types` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sort` int(10) NOT NULL,
  `system_sale_type` int(1) NOT NULL DEFAULT 0,
  `remove_quantity` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_sale_types`
--

INSERT INTO `phppos_sale_types` (`id`, `name`, `sort`, `system_sale_type`, `remove_quantity`) VALUES
(0, 'common_sale', 0, 1, 0),
(1, 'common_layaway', 0, 1, 1),
(2, 'common_estimate', 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_sessions`
--

CREATE TABLE `phppos_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_sessions`
--

INSERT INTO `phppos_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0i5fgkitd3qhur9dfjsrf6ivar6uqhdq', '::1', 1715706070, 0x706572736f6e5f69647c733a313a2231223b656d706c6f7965655f63757272656e745f6c6f636174696f6e5f69647c733a313a2231223b656d706c6f7965655f63757272656e745f72656769737465725f69647c4e3b),
('ev8m8bt7e78jftk09iumbp5uqoedpjm4', '::1', 1715707074, 0x706572736f6e5f69647c733a313a2231223b656d706c6f7965655f63757272656e745f6c6f636174696f6e5f69647c733a313a2231223b656d706c6f7965655f63757272656e745f72656769737465725f69647c733a313a2231223b73616c657c733a323431393a224f3a31343a22504850504f534361727453616c65223a37383a7b733a31393a2200504850504f534361727400636172745f6964223b733a343a2273616c65223b733a32323a2200504850504f534361727400636172745f6974656d73223b613a303a7b7d733a32303a2200504850504f5343617274007061796d656e7473223b613a303a7b7d733a32363a2200504850504f5343617274006578636c756465645f7461786573223b613a303a7b7d733a31363a2200504850504f5343617274006d6f6465223b733a343a2273616c65223b733a33343a2200504850504f534361727400706169645f73746f72655f6163636f756e745f696473223b613a303a7b7d733a32363a22706169645f73746f72655f6163636f756e745f616d6f756e7473223b4e3b733a31313a22656d706c6f7965655f6964223b4e3b733a31313a226c6f636174696f6e5f6964223b4e3b733a31313a2272656769737465725f6964223b4e3b733a373a22636f6d6d656e74223b733a303a22223b733a333a226e6974223b733a303a22223b733a31333a226e6f6d627265436c69656e7465223b733a303a22223b733a363a22616464726573223b4e3b733a343a227469706f223b4e3b733a343a2266656c6c223b733a303a22223b733a31363a2273656c65637465645f7061796d656e74223b733a303a22223b733a31333a22656d61696c5f72656365697074223b623a303b733a31313a22736d735f72656365697074223b623a303b733a393a2273757370656e646564223b693a303b733a31383a226368616e67655f646174655f656e61626c65223b623a303b733a31363a226368616e67655f636172745f64617465223b4e3b733a31393a2269735f65646974696e675f70726576696f7573223b623a303b733a32303a22637573746f6d5f6669656c645f315f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f325f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f335f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f345f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f355f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f365f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f375f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f385f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f395f76616c7565223b4e3b733a32313a22637573746f6d5f6669656c645f31305f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f315f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f325f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f335f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f345f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f355f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f365f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f375f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f385f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f395f76616c7565223b4e3b733a33323a22776f726b5f6f726465725f637573746f6d5f6669656c645f31305f76616c7565223b4e3b733a31383a226f766572726964655f7461785f6e616d6573223b4e3b733a32313a226f766572726964655f7461785f70657263656e7473223b4e3b733a32343a226f766572726964655f7461785f63756d756c617469766573223b4e3b733a31383a226f766572726964655f7461785f636c617373223b4e3b733a31373a2264657461696c735f636f6c6c6170736564223b623a303b733a31323a22736b69705f776562686f6f6b223b623a303b733a363a226f6666736574223b693a303b733a353a226c696d6974223b693a32303b733a373a2273616c655f6964223b4e3b733a31343a2272657475726e5f73616c655f6964223b4e3b733a31313a22637573746f6d65725f6964223b4e3b733a32333a2273686f775f636f6d6d656e745f6f6e5f72656365697074223b623a303b733a31363a2273656c65637465645f746965725f6964223b693a303b733a31363a2270726576696f75735f746965725f6964223b693a303b733a31393a22736f6c645f62795f656d706c6f7965655f6964223b4e3b733a31353a22646973636f756e745f726561736f6e223b733a303a22223b733a31323a226861735f64656c6976657279223b623a303b733a383a2264656c6976657279223b4f3a31383a22504850504f534361727444656c6976657279223a333a7b733a31333a2264656c69766572795f696e666f223b4e3b733a32313a2264656c69766572795f7461785f67726f75705f6964223b4e3b733a32303a2264656c69766572795f706572736f6e5f696e666f223b4e3b7d733a32303a227061727469616c5f7472616e73616374696f6e73223b613a303a7b7d733a31373a227573655f63635f73617665645f696e666f223b623a303b733a31303a22696e766f6963655f6e6f223b733a303a22223b733a31353a2270726f6d70745f666f725f63617264223b623a303b733a31313a226562745f766f7563686572223b733a303a22223b733a31343a226562745f766f75636865725f6e6f223b733a303a22223b733a31333a226562745f617574685f636f6465223b733a303a22223b733a32313a22736176655f6372656469745f636172645f696e666f223b623a303b733a31373a227573655f73617665645f63635f696e666f223b623a303b733a31353a2272656465656d5f646973636f756e74223b623a303b733a32313a2273616c655f65786368616e67655f64657461696c73223b733a303a22223b733a373a22636f75706f6e73223b613a303a7b7d733a31323a2269735f65636f6d6d65726365223b4e3b733a32393a22696e74656772617465645f676966745f636172645f62616c616e636573223b613a303a7b7d733a333a22616765223b4e3b733a31323a227461786a61725f7461786573223b613a303a7b7d733a32323a227761735f6c6173745f656469745f7175616e74697479223b623a303b7d223b666f726569676e5f6c616e67756167655f746f5f6375725f6c616e67756167655f73616c65737c613a39363a7b733a363a22d983d8a7d8b4223b733a383a22456665637469766f223b733a363a22d8b4d98ad983223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31353a22d983d8b1d8aa20d987d8afd98ad8a9223b733a31373a225461726a65746120646520726567616c6f223b733a32333a22d8a8d8b7d8a7d982d8a920d8a7d8a6d8aad985d8a7d986223b733a31313a225461726a65746120442f43223b733a32373a22d8a8d8b7d8a7d982d8a920d8a7d984d8a7d8a6d8aad985d8a7d986223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a32313a22d8add8b3d8a7d8a820d8a7d984d985d8aad8acd8b1223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a383a22d986d982d8a7d8b7223b733a363a2250756e746f73223b733a363a22e78eb0e98791223b733a383a22456665637469766f223b733a363a22e6a380e69fa5223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a22e7a4bce789a9e58da1223b733a31373a225461726a65746120646520726567616c6f223b733a393a22e5809fe8aeb0e58da1223b733a31313a225461726a65746120442f43223b733a393a22e4bfa1e794a8e58da1223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31323a22e59586e5ba97e5b890e58fb7223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a333a22e782b9223b733a363a2250756e746f73223b733a363a22e78fbee98791223b733a383a22456665637469766f223b733a363a22e6aaa2e69fa5223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a22e7a6aee789a9e58da1223b733a31373a225461726a65746120646520726567616c6f223b733a393a22e5809fe8a898e58da1223b733a31313a225461726a65746120442f43223b733a31323a22e59586e5ba97e5b8b3e8999f223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a333a22e9bb9e223b733a363a2250756e746f73223b733a373a22436f6e74616e74223b733a383a22456665637469766f223b733a363a22436865717565223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a22576161726465626f6e223b733a31373a225461726a65746120646520726567616c6f223b733a393a2242616e6b6b61617274223b733a31313a225461726a65746120442f43223b733a31323a224b7265646965746b61617274223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31313a224f702072656b656e696e67223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a2250756e74656e223b733a363a2250756e746f73223b733a343a2243617368223b733a383a22456665637469766f223b733a353a22436865636b223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a22476966742043617264223b733a31373a225461726a65746120646520726567616c6f223b733a31303a2244656269742043617264223b733a31313a225461726a65746120442f43223b733a31313a224372656469742043617264223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31333a2253746f7265204163636f756e74223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a22506f696e7473223b733a363a2250756e746f73223b733a383a22436f6d7074616e74223b733a383a22456665637469766f223b733a373a224368c3a8717565223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31323a22436172746520636164656175223b733a31373a225461726a65746120646520726567616c6f223b733a31323a2243617274652064c3a9626974223b733a31313a225461726a65746120442f43223b733a31323a22436172746520637265646974223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31343a22436f6d707465206d61676173696e223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a31303a2244657320706f696e7473223b733a363a2250756e746f73223b733a373a2242617267656c64223b733a383a22456665637469766f223b733a363a2253636865636b223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a2247757473636865696e223b733a31373a225461726a65746120646520726567616c6f223b733a31313a224b756e64656e6b61727465223b733a31313a225461726a65746120442f43223b733a31313a224b72656469746b61727465223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31333a224c6164656e2d4163636f756e74223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a2250756e6b7465223b733a363a2250756e746f73223b733a353a2254756e6169223b733a383a22456665637469766f223b733a333a2243656b223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31323a22486164696168204b61727475223b733a31373a225461726a65746120646520726567616c6f223b733a31313a224b61727475204465626974223b733a31313a225461726a65746120442f43223b733a31323a224b6172747520437265646974223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a393a22546f6b6f20416b756e223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a343a22506f696e223b733a363a2250756e746f73223b733a383a22436f6e74616e7465223b733a383a22456665637469766f223b733a373a2241737365676e6f223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31323a2242756f6e6f20526567616c6f223b733a31373a225461726a65746120646520726567616c6f223b733a383a2242616e636f6d6174223b733a31313a225461726a65746120442f43223b733a31363a224361727461206469204372656469746f223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31343a22436f6e746f206465706f7369746f223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a353a2250756e7469223b733a363a2250756e746f73223b733a33303a22e19e9fe19eb6e19e85e19f8be19e94e19f92e19e9ae19eb6e19e80e19f8b223b733a383a22456665637469766f223b733a393a22e19e9fe19f82e19e80223b733a31393a225061676f20636f6e74726120656e7472656761223b733a33333a22e19e80e19eb6e19e8fe2808be19e9ae19e84e19f92e19e9ce19eb6e19e93e19f8b223b733a31373a225461726a65746120646520726567616c6f223b733a33363a22e19e94e19f90e19e8ee19f92e19e8ee2808be19ea5e19e8ee19e96e19e93e19f92e19e92223b733a31313a225461726a65746120442f43223b733a33333a22e19e94e19f90e19e8ee19f92e19e8ee2808be19ea5e19e8ee19e91e19eb6e19e93223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a33363a22e19e94e19f92e19e9ae19eb6e19e80e19f8be19e87e19f86e19e96e19eb6e19e80e19f8b223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a31383a22e19e96e19eb7e19e93e19f92e19e91e19ebb223b733a363a2250756e746f73223b733a31303a224e756d6572c3a172696f223b733a383a22456665637469766f223b733a31343a2256616c65206465204f6665727461223b733a31373a225461726a65746120646520726567616c6f223b733a31383a2243617274c3a36f2064652044c3a96269746f223b733a31313a225461726a65746120442f43223b733a31393a2243617274c3a36f206465204372c3a96469746f223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31333a22436f6e7461206461204c6f6a61223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a22506f6e746f73223b733a363a2250756e746f73223b733a383a22456665637469766f223b733a383a22456665637469766f223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31373a225461726a65746120646520726567616c6f223b733a31373a225461726a65746120646520726567616c6f223b733a31313a225461726a65746120442f43223b733a31313a225461726a65746120442f43223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a2250756e746f73223b733a363a2250756e746f73223b733a31323a22e0aeaae0aea3e0aeaee0af8d223b733a383a22456665637469766f223b733a32313a22e0ae95e0aebee0ae9ae0af87e0aebee0aeb2e0af88223b733a31393a225061676f20636f6e74726120656e7472656761223b733a33313a22e0aeaae0aeb0e0aebfe0ae9ae0af8120e0ae85e0ae9fe0af8de0ae9fe0af88223b733a31373a225461726a65746120646520726567616c6f223b733a33373a22e0ae9fe0af86e0aeaae0aebfe0ae9fe0af8d20e0ae95e0aebee0aeb0e0af8de0ae9fe0af81223b733a31313a225461726a65746120442f43223b733a32383a22e0ae95e0ae9fe0aea9e0af8d20e0ae85e0ae9fe0af8de0ae9fe0af88223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a35323a22e0ae95e0aea3e0ae95e0af8de0ae95e0af8120e0ae9ae0af87e0aeaee0aebfe0ae95e0af8de0ae95e0aeb5e0af81e0aeaee0af8d223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a32373a22e0aeaae0af81e0aeb3e0af8de0aeb3e0aebfe0ae95e0aeb3e0af8d223b733a363a2250756e746f73223b733a31323a225469e1bb816e206de1bab774223b733a383a22456665637469766f223b733a343a2253c3a963223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31373a225468e1babb207175c3a02074e1bab76e67223b733a31373a225461726a65746120646520726567616c6f223b733a31343a225468e1babb20676869206ee1bba3223b733a31313a225461726a65746120442f43223b733a31373a225468e1babb2074c3ad6e2064e1bba56e67223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a33303a2254c3a069206b686fe1baa36e2063e1bba7612063e1bbad612068c3a06e67223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a373a22c49069e1bb836d223b733a363a2250756e746f73223b7d66756c6c73637265656e7c733a313a2230223b6b6565705f616c6976657c693a313731353730363432333b616d6f756e745f6368616e67657c643a2d303b),
('fnc3molhae9666q3d80deh04066if3ci', '::1', 1715722244, 0x706572736f6e5f69647c733a313a2231223b656d706c6f7965655f63757272656e745f6c6f636174696f6e5f69647c733a313a2231223b656d706c6f7965655f63757272656e745f72656769737465725f69647c733a313a2231223b73616c657c733a323432353a224f3a31343a22504850504f534361727453616c65223a37383a7b733a31393a2200504850504f534361727400636172745f6964223b733a343a2273616c65223b733a32323a2200504850504f534361727400636172745f6974656d73223b613a303a7b7d733a32303a2200504850504f5343617274007061796d656e7473223b613a303a7b7d733a32363a2200504850504f5343617274006578636c756465645f7461786573223b613a303a7b7d733a31363a2200504850504f5343617274006d6f6465223b733a343a2273616c65223b733a33343a2200504850504f534361727400706169645f73746f72655f6163636f756e745f696473223b613a303a7b7d733a32363a22706169645f73746f72655f6163636f756e745f616d6f756e7473223b4e3b733a31313a22656d706c6f7965655f6964223b4e3b733a31313a226c6f636174696f6e5f6964223b4e3b733a31313a2272656769737465725f6964223b4e3b733a373a22636f6d6d656e74223b733a303a22223b733a333a226e6974223b733a303a22223b733a31333a226e6f6d627265436c69656e7465223b733a303a22223b733a363a22616464726573223b4e3b733a343a227469706f223b4e3b733a343a2266656c6c223b733a303a22223b733a31363a2273656c65637465645f7061796d656e74223b733a303a22223b733a31333a22656d61696c5f72656365697074223b623a303b733a31313a22736d735f72656365697074223b623a303b733a393a2273757370656e646564223b693a303b733a31383a226368616e67655f646174655f656e61626c65223b623a303b733a31363a226368616e67655f636172745f64617465223b4e3b733a31393a2269735f65646974696e675f70726576696f7573223b623a303b733a32303a22637573746f6d5f6669656c645f315f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f325f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f335f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f345f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f355f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f365f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f375f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f385f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f395f76616c7565223b4e3b733a32313a22637573746f6d5f6669656c645f31305f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f315f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f325f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f335f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f345f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f355f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f365f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f375f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f385f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f395f76616c7565223b4e3b733a33323a22776f726b5f6f726465725f637573746f6d5f6669656c645f31305f76616c7565223b4e3b733a31383a226f766572726964655f7461785f6e616d6573223b4e3b733a32313a226f766572726964655f7461785f70657263656e7473223b4e3b733a32343a226f766572726964655f7461785f63756d756c617469766573223b4e3b733a31383a226f766572726964655f7461785f636c617373223b4e3b733a31373a2264657461696c735f636f6c6c6170736564223b623a303b733a31323a22736b69705f776562686f6f6b223b623a303b733a363a226f6666736574223b693a303b733a353a226c696d6974223b693a32303b733a373a2273616c655f6964223b4e3b733a31343a2272657475726e5f73616c655f6964223b4e3b733a31313a22637573746f6d65725f6964223b4e3b733a32333a2273686f775f636f6d6d656e745f6f6e5f72656365697074223b623a303b733a31363a2273656c65637465645f746965725f6964223b693a303b733a31363a2270726576696f75735f746965725f6964223b693a303b733a31393a22736f6c645f62795f656d706c6f7965655f6964223b733a313a2231223b733a31353a22646973636f756e745f726561736f6e223b733a303a22223b733a31323a226861735f64656c6976657279223b623a303b733a383a2264656c6976657279223b4f3a31383a22504850504f534361727444656c6976657279223a333a7b733a31333a2264656c69766572795f696e666f223b4e3b733a32313a2264656c69766572795f7461785f67726f75705f6964223b4e3b733a32303a2264656c69766572795f706572736f6e5f696e666f223b4e3b7d733a32303a227061727469616c5f7472616e73616374696f6e73223b613a303a7b7d733a31373a227573655f63635f73617665645f696e666f223b623a303b733a31303a22696e766f6963655f6e6f223b733a303a22223b733a31353a2270726f6d70745f666f725f63617264223b623a303b733a31313a226562745f766f7563686572223b733a303a22223b733a31343a226562745f766f75636865725f6e6f223b733a303a22223b733a31333a226562745f617574685f636f6465223b733a303a22223b733a32313a22736176655f6372656469745f636172645f696e666f223b623a303b733a31373a227573655f73617665645f63635f696e666f223b623a303b733a31353a2272656465656d5f646973636f756e74223b623a303b733a32313a2273616c655f65786368616e67655f64657461696c73223b733a303a22223b733a373a22636f75706f6e73223b613a303a7b7d733a31323a2269735f65636f6d6d65726365223b4e3b733a32393a22696e74656772617465645f676966745f636172645f62616c616e636573223b613a303a7b7d733a333a22616765223b4e3b733a31323a227461786a61725f7461786573223b613a303a7b7d733a32323a227761735f6c6173745f656469745f7175616e74697479223b623a303b7d223b666f726569676e5f6c616e67756167655f746f5f6375725f6c616e67756167655f73616c65737c613a39363a7b733a363a22d983d8a7d8b4223b733a383a22456665637469766f223b733a363a22d8b4d98ad983223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31353a22d983d8b1d8aa20d987d8afd98ad8a9223b733a31373a225461726a65746120646520726567616c6f223b733a32333a22d8a8d8b7d8a7d982d8a920d8a7d8a6d8aad985d8a7d986223b733a31313a225461726a65746120442f43223b733a32373a22d8a8d8b7d8a7d982d8a920d8a7d984d8a7d8a6d8aad985d8a7d986223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a32313a22d8add8b3d8a7d8a820d8a7d984d985d8aad8acd8b1223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a383a22d986d982d8a7d8b7223b733a363a2250756e746f73223b733a363a22e78eb0e98791223b733a383a22456665637469766f223b733a363a22e6a380e69fa5223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a22e7a4bce789a9e58da1223b733a31373a225461726a65746120646520726567616c6f223b733a393a22e5809fe8aeb0e58da1223b733a31313a225461726a65746120442f43223b733a393a22e4bfa1e794a8e58da1223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31323a22e59586e5ba97e5b890e58fb7223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a333a22e782b9223b733a363a2250756e746f73223b733a363a22e78fbee98791223b733a383a22456665637469766f223b733a363a22e6aaa2e69fa5223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a22e7a6aee789a9e58da1223b733a31373a225461726a65746120646520726567616c6f223b733a393a22e5809fe8a898e58da1223b733a31313a225461726a65746120442f43223b733a31323a22e59586e5ba97e5b8b3e8999f223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a333a22e9bb9e223b733a363a2250756e746f73223b733a373a22436f6e74616e74223b733a383a22456665637469766f223b733a363a22436865717565223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a22576161726465626f6e223b733a31373a225461726a65746120646520726567616c6f223b733a393a2242616e6b6b61617274223b733a31313a225461726a65746120442f43223b733a31323a224b7265646965746b61617274223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31313a224f702072656b656e696e67223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a2250756e74656e223b733a363a2250756e746f73223b733a343a2243617368223b733a383a22456665637469766f223b733a353a22436865636b223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a22476966742043617264223b733a31373a225461726a65746120646520726567616c6f223b733a31303a2244656269742043617264223b733a31313a225461726a65746120442f43223b733a31313a224372656469742043617264223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31333a2253746f7265204163636f756e74223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a22506f696e7473223b733a363a2250756e746f73223b733a383a22436f6d7074616e74223b733a383a22456665637469766f223b733a373a224368c3a8717565223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31323a22436172746520636164656175223b733a31373a225461726a65746120646520726567616c6f223b733a31323a2243617274652064c3a9626974223b733a31313a225461726a65746120442f43223b733a31323a22436172746520637265646974223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31343a22436f6d707465206d61676173696e223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a31303a2244657320706f696e7473223b733a363a2250756e746f73223b733a373a2242617267656c64223b733a383a22456665637469766f223b733a363a2253636865636b223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a2247757473636865696e223b733a31373a225461726a65746120646520726567616c6f223b733a31313a224b756e64656e6b61727465223b733a31313a225461726a65746120442f43223b733a31313a224b72656469746b61727465223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31333a224c6164656e2d4163636f756e74223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a2250756e6b7465223b733a363a2250756e746f73223b733a353a2254756e6169223b733a383a22456665637469766f223b733a333a2243656b223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31323a22486164696168204b61727475223b733a31373a225461726a65746120646520726567616c6f223b733a31313a224b61727475204465626974223b733a31313a225461726a65746120442f43223b733a31323a224b6172747520437265646974223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a393a22546f6b6f20416b756e223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a343a22506f696e223b733a363a2250756e746f73223b733a383a22436f6e74616e7465223b733a383a22456665637469766f223b733a373a2241737365676e6f223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31323a2242756f6e6f20526567616c6f223b733a31373a225461726a65746120646520726567616c6f223b733a383a2242616e636f6d6174223b733a31313a225461726a65746120442f43223b733a31363a224361727461206469204372656469746f223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31343a22436f6e746f206465706f7369746f223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a353a2250756e7469223b733a363a2250756e746f73223b733a33303a22e19e9fe19eb6e19e85e19f8be19e94e19f92e19e9ae19eb6e19e80e19f8b223b733a383a22456665637469766f223b733a393a22e19e9fe19f82e19e80223b733a31393a225061676f20636f6e74726120656e7472656761223b733a33333a22e19e80e19eb6e19e8fe2808be19e9ae19e84e19f92e19e9ce19eb6e19e93e19f8b223b733a31373a225461726a65746120646520726567616c6f223b733a33363a22e19e94e19f90e19e8ee19f92e19e8ee2808be19ea5e19e8ee19e96e19e93e19f92e19e92223b733a31313a225461726a65746120442f43223b733a33333a22e19e94e19f90e19e8ee19f92e19e8ee2808be19ea5e19e8ee19e91e19eb6e19e93223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a33363a22e19e94e19f92e19e9ae19eb6e19e80e19f8be19e87e19f86e19e96e19eb6e19e80e19f8b223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a31383a22e19e96e19eb7e19e93e19f92e19e91e19ebb223b733a363a2250756e746f73223b733a31303a224e756d6572c3a172696f223b733a383a22456665637469766f223b733a31343a2256616c65206465204f6665727461223b733a31373a225461726a65746120646520726567616c6f223b733a31383a2243617274c3a36f2064652044c3a96269746f223b733a31313a225461726a65746120442f43223b733a31393a2243617274c3a36f206465204372c3a96469746f223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31333a22436f6e7461206461204c6f6a61223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a22506f6e746f73223b733a363a2250756e746f73223b733a383a22456665637469766f223b733a383a22456665637469766f223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31373a225461726a65746120646520726567616c6f223b733a31373a225461726a65746120646520726567616c6f223b733a31313a225461726a65746120442f43223b733a31313a225461726a65746120442f43223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a2250756e746f73223b733a363a2250756e746f73223b733a31323a22e0aeaae0aea3e0aeaee0af8d223b733a383a22456665637469766f223b733a32313a22e0ae95e0aebee0ae9ae0af87e0aebee0aeb2e0af88223b733a31393a225061676f20636f6e74726120656e7472656761223b733a33313a22e0aeaae0aeb0e0aebfe0ae9ae0af8120e0ae85e0ae9fe0af8de0ae9fe0af88223b733a31373a225461726a65746120646520726567616c6f223b733a33373a22e0ae9fe0af86e0aeaae0aebfe0ae9fe0af8d20e0ae95e0aebee0aeb0e0af8de0ae9fe0af81223b733a31313a225461726a65746120442f43223b733a32383a22e0ae95e0ae9fe0aea9e0af8d20e0ae85e0ae9fe0af8de0ae9fe0af88223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a35323a22e0ae95e0aea3e0ae95e0af8de0ae95e0af8120e0ae9ae0af87e0aeaee0aebfe0ae95e0af8de0ae95e0aeb5e0af81e0aeaee0af8d223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a32373a22e0aeaae0af81e0aeb3e0af8de0aeb3e0aebfe0ae95e0aeb3e0af8d223b733a363a2250756e746f73223b733a31323a225469e1bb816e206de1bab774223b733a383a22456665637469766f223b733a343a2253c3a963223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31373a225468e1babb207175c3a02074e1bab76e67223b733a31373a225461726a65746120646520726567616c6f223b733a31343a225468e1babb20676869206ee1bba3223b733a31313a225461726a65746120442f43223b733a31373a225468e1babb2074c3ad6e2064e1bba56e67223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a33303a2254c3a069206b686fe1baa36e2063e1bba7612063e1bbad612068c3a06e67223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a373a22c49069e1bb836d223b733a363a2250756e746f73223b7d66756c6c73637265656e7c733a313a2230223b),
('njluhucr9scbfn7vd1aooqk8dgqt8coc', '::1', 1715722002, 0x706572736f6e5f69647c733a313a2231223b656d706c6f7965655f63757272656e745f6c6f636174696f6e5f69647c733a313a2231223b656d706c6f7965655f63757272656e745f72656769737465725f69647c733a313a2231223b73616c657c733a323432353a224f3a31343a22504850504f534361727453616c65223a37383a7b733a31393a2200504850504f534361727400636172745f6964223b733a343a2273616c65223b733a32323a2200504850504f534361727400636172745f6974656d73223b613a303a7b7d733a32303a2200504850504f5343617274007061796d656e7473223b613a303a7b7d733a32363a2200504850504f5343617274006578636c756465645f7461786573223b613a303a7b7d733a31363a2200504850504f5343617274006d6f6465223b733a343a2273616c65223b733a33343a2200504850504f534361727400706169645f73746f72655f6163636f756e745f696473223b613a303a7b7d733a32363a22706169645f73746f72655f6163636f756e745f616d6f756e7473223b4e3b733a31313a22656d706c6f7965655f6964223b4e3b733a31313a226c6f636174696f6e5f6964223b4e3b733a31313a2272656769737465725f6964223b4e3b733a373a22636f6d6d656e74223b733a303a22223b733a333a226e6974223b733a303a22223b733a31333a226e6f6d627265436c69656e7465223b733a303a22223b733a363a22616464726573223b4e3b733a343a227469706f223b4e3b733a343a2266656c6c223b733a303a22223b733a31363a2273656c65637465645f7061796d656e74223b733a303a22223b733a31333a22656d61696c5f72656365697074223b623a303b733a31313a22736d735f72656365697074223b623a303b733a393a2273757370656e646564223b693a303b733a31383a226368616e67655f646174655f656e61626c65223b623a303b733a31363a226368616e67655f636172745f64617465223b4e3b733a31393a2269735f65646974696e675f70726576696f7573223b623a303b733a32303a22637573746f6d5f6669656c645f315f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f325f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f335f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f345f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f355f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f365f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f375f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f385f76616c7565223b4e3b733a32303a22637573746f6d5f6669656c645f395f76616c7565223b4e3b733a32313a22637573746f6d5f6669656c645f31305f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f315f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f325f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f335f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f345f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f355f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f365f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f375f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f385f76616c7565223b4e3b733a33313a22776f726b5f6f726465725f637573746f6d5f6669656c645f395f76616c7565223b4e3b733a33323a22776f726b5f6f726465725f637573746f6d5f6669656c645f31305f76616c7565223b4e3b733a31383a226f766572726964655f7461785f6e616d6573223b4e3b733a32313a226f766572726964655f7461785f70657263656e7473223b4e3b733a32343a226f766572726964655f7461785f63756d756c617469766573223b4e3b733a31383a226f766572726964655f7461785f636c617373223b4e3b733a31373a2264657461696c735f636f6c6c6170736564223b623a303b733a31323a22736b69705f776562686f6f6b223b623a303b733a363a226f6666736574223b693a303b733a353a226c696d6974223b693a32303b733a373a2273616c655f6964223b4e3b733a31343a2272657475726e5f73616c655f6964223b4e3b733a31313a22637573746f6d65725f6964223b4e3b733a32333a2273686f775f636f6d6d656e745f6f6e5f72656365697074223b623a303b733a31363a2273656c65637465645f746965725f6964223b693a303b733a31363a2270726576696f75735f746965725f6964223b693a303b733a31393a22736f6c645f62795f656d706c6f7965655f6964223b733a313a2231223b733a31353a22646973636f756e745f726561736f6e223b733a303a22223b733a31323a226861735f64656c6976657279223b623a303b733a383a2264656c6976657279223b4f3a31383a22504850504f534361727444656c6976657279223a333a7b733a31333a2264656c69766572795f696e666f223b4e3b733a32313a2264656c69766572795f7461785f67726f75705f6964223b4e3b733a32303a2264656c69766572795f706572736f6e5f696e666f223b4e3b7d733a32303a227061727469616c5f7472616e73616374696f6e73223b613a303a7b7d733a31373a227573655f63635f73617665645f696e666f223b623a303b733a31303a22696e766f6963655f6e6f223b733a303a22223b733a31353a2270726f6d70745f666f725f63617264223b623a303b733a31313a226562745f766f7563686572223b733a303a22223b733a31343a226562745f766f75636865725f6e6f223b733a303a22223b733a31333a226562745f617574685f636f6465223b733a303a22223b733a32313a22736176655f6372656469745f636172645f696e666f223b623a303b733a31373a227573655f73617665645f63635f696e666f223b623a303b733a31353a2272656465656d5f646973636f756e74223b623a303b733a32313a2273616c655f65786368616e67655f64657461696c73223b733a303a22223b733a373a22636f75706f6e73223b613a303a7b7d733a31323a2269735f65636f6d6d65726365223b4e3b733a32393a22696e74656772617465645f676966745f636172645f62616c616e636573223b613a303a7b7d733a333a22616765223b4e3b733a31323a227461786a61725f7461786573223b613a303a7b7d733a32323a227761735f6c6173745f656469745f7175616e74697479223b623a303b7d223b666f726569676e5f6c616e67756167655f746f5f6375725f6c616e67756167655f73616c65737c613a39363a7b733a363a22d983d8a7d8b4223b733a383a22456665637469766f223b733a363a22d8b4d98ad983223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31353a22d983d8b1d8aa20d987d8afd98ad8a9223b733a31373a225461726a65746120646520726567616c6f223b733a32333a22d8a8d8b7d8a7d982d8a920d8a7d8a6d8aad985d8a7d986223b733a31313a225461726a65746120442f43223b733a32373a22d8a8d8b7d8a7d982d8a920d8a7d984d8a7d8a6d8aad985d8a7d986223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a32313a22d8add8b3d8a7d8a820d8a7d984d985d8aad8acd8b1223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a383a22d986d982d8a7d8b7223b733a363a2250756e746f73223b733a363a22e78eb0e98791223b733a383a22456665637469766f223b733a363a22e6a380e69fa5223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a22e7a4bce789a9e58da1223b733a31373a225461726a65746120646520726567616c6f223b733a393a22e5809fe8aeb0e58da1223b733a31313a225461726a65746120442f43223b733a393a22e4bfa1e794a8e58da1223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31323a22e59586e5ba97e5b890e58fb7223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a333a22e782b9223b733a363a2250756e746f73223b733a363a22e78fbee98791223b733a383a22456665637469766f223b733a363a22e6aaa2e69fa5223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a22e7a6aee789a9e58da1223b733a31373a225461726a65746120646520726567616c6f223b733a393a22e5809fe8a898e58da1223b733a31313a225461726a65746120442f43223b733a31323a22e59586e5ba97e5b8b3e8999f223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a333a22e9bb9e223b733a363a2250756e746f73223b733a373a22436f6e74616e74223b733a383a22456665637469766f223b733a363a22436865717565223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a22576161726465626f6e223b733a31373a225461726a65746120646520726567616c6f223b733a393a2242616e6b6b61617274223b733a31313a225461726a65746120442f43223b733a31323a224b7265646965746b61617274223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31313a224f702072656b656e696e67223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a2250756e74656e223b733a363a2250756e746f73223b733a343a2243617368223b733a383a22456665637469766f223b733a353a22436865636b223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a22476966742043617264223b733a31373a225461726a65746120646520726567616c6f223b733a31303a2244656269742043617264223b733a31313a225461726a65746120442f43223b733a31313a224372656469742043617264223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31333a2253746f7265204163636f756e74223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a22506f696e7473223b733a363a2250756e746f73223b733a383a22436f6d7074616e74223b733a383a22456665637469766f223b733a373a224368c3a8717565223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31323a22436172746520636164656175223b733a31373a225461726a65746120646520726567616c6f223b733a31323a2243617274652064c3a9626974223b733a31313a225461726a65746120442f43223b733a31323a22436172746520637265646974223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31343a22436f6d707465206d61676173696e223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a31303a2244657320706f696e7473223b733a363a2250756e746f73223b733a373a2242617267656c64223b733a383a22456665637469766f223b733a363a2253636865636b223b733a31393a225061676f20636f6e74726120656e7472656761223b733a393a2247757473636865696e223b733a31373a225461726a65746120646520726567616c6f223b733a31313a224b756e64656e6b61727465223b733a31313a225461726a65746120442f43223b733a31313a224b72656469746b61727465223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31333a224c6164656e2d4163636f756e74223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a2250756e6b7465223b733a363a2250756e746f73223b733a353a2254756e6169223b733a383a22456665637469766f223b733a333a2243656b223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31323a22486164696168204b61727475223b733a31373a225461726a65746120646520726567616c6f223b733a31313a224b61727475204465626974223b733a31313a225461726a65746120442f43223b733a31323a224b6172747520437265646974223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a393a22546f6b6f20416b756e223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a343a22506f696e223b733a363a2250756e746f73223b733a383a22436f6e74616e7465223b733a383a22456665637469766f223b733a373a2241737365676e6f223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31323a2242756f6e6f20526567616c6f223b733a31373a225461726a65746120646520726567616c6f223b733a383a2242616e636f6d6174223b733a31313a225461726a65746120442f43223b733a31363a224361727461206469204372656469746f223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31343a22436f6e746f206465706f7369746f223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a353a2250756e7469223b733a363a2250756e746f73223b733a33303a22e19e9fe19eb6e19e85e19f8be19e94e19f92e19e9ae19eb6e19e80e19f8b223b733a383a22456665637469766f223b733a393a22e19e9fe19f82e19e80223b733a31393a225061676f20636f6e74726120656e7472656761223b733a33333a22e19e80e19eb6e19e8fe2808be19e9ae19e84e19f92e19e9ce19eb6e19e93e19f8b223b733a31373a225461726a65746120646520726567616c6f223b733a33363a22e19e94e19f90e19e8ee19f92e19e8ee2808be19ea5e19e8ee19e96e19e93e19f92e19e92223b733a31313a225461726a65746120442f43223b733a33333a22e19e94e19f90e19e8ee19f92e19e8ee2808be19ea5e19e8ee19e91e19eb6e19e93223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a33363a22e19e94e19f92e19e9ae19eb6e19e80e19f8be19e87e19f86e19e96e19eb6e19e80e19f8b223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a31383a22e19e96e19eb7e19e93e19f92e19e91e19ebb223b733a363a2250756e746f73223b733a31303a224e756d6572c3a172696f223b733a383a22456665637469766f223b733a31343a2256616c65206465204f6665727461223b733a31373a225461726a65746120646520726567616c6f223b733a31383a2243617274c3a36f2064652044c3a96269746f223b733a31313a225461726a65746120442f43223b733a31393a2243617274c3a36f206465204372c3a96469746f223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31333a22436f6e7461206461204c6f6a61223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a22506f6e746f73223b733a363a2250756e746f73223b733a383a22456665637469766f223b733a383a22456665637469766f223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31373a225461726a65746120646520726567616c6f223b733a31373a225461726a65746120646520726567616c6f223b733a31313a225461726a65746120442f43223b733a31313a225461726a65746120442f43223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a363a2250756e746f73223b733a363a2250756e746f73223b733a31323a22e0aeaae0aea3e0aeaee0af8d223b733a383a22456665637469766f223b733a32313a22e0ae95e0aebee0ae9ae0af87e0aebee0aeb2e0af88223b733a31393a225061676f20636f6e74726120656e7472656761223b733a33313a22e0aeaae0aeb0e0aebfe0ae9ae0af8120e0ae85e0ae9fe0af8de0ae9fe0af88223b733a31373a225461726a65746120646520726567616c6f223b733a33373a22e0ae9fe0af86e0aeaae0aebfe0ae9fe0af8d20e0ae95e0aebee0aeb0e0af8de0ae9fe0af81223b733a31313a225461726a65746120442f43223b733a32383a22e0ae95e0ae9fe0aea9e0af8d20e0ae85e0ae9fe0af8de0ae9fe0af88223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a35323a22e0ae95e0aea3e0ae95e0af8de0ae95e0af8120e0ae9ae0af87e0aeaee0aebfe0ae95e0af8de0ae95e0aeb5e0af81e0aeaee0af8d223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a32373a22e0aeaae0af81e0aeb3e0af8de0aeb3e0aebfe0ae95e0aeb3e0af8d223b733a363a2250756e746f73223b733a31323a225469e1bb816e206de1bab774223b733a383a22456665637469766f223b733a343a2253c3a963223b733a31393a225061676f20636f6e74726120656e7472656761223b733a31373a225468e1babb207175c3a02074e1bab76e67223b733a31373a225461726a65746120646520726567616c6f223b733a31343a225468e1babb20676869206ee1bba3223b733a31313a225461726a65746120442f43223b733a31373a225468e1babb2074c3ad6e2064e1bba56e67223b733a32343a225472616e73666572656e636961206f206465706f7369746f223b733a33303a2254c3a069206b686fe1baa36e2063e1bba7612063e1bbad612068c3a06e67223b733a31383a224cc3ad6e6561206465206372c3a96469746f223b733a373a22c49069e1bb836d223b733a363a2250756e746f73223b7d66756c6c73637265656e7c733a313a2230223b6b6565705f616c6976657c693a313731353732323030323b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_shipping_methods`
--

CREATE TABLE `phppos_shipping_methods` (
  `id` int(10) NOT NULL,
  `shipping_provider_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fee` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `fee_tax_class_id` int(10) DEFAULT NULL,
  `time_in_days` int(11) DEFAULT NULL,
  `has_tracking_number` int(1) NOT NULL DEFAULT 0,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_shipping_providers`
--

CREATE TABLE `phppos_shipping_providers` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order` int(10) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_shipping_zones`
--

CREATE TABLE `phppos_shipping_zones` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fee` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `tax_class_id` int(10) DEFAULT NULL,
  `order` int(10) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_store_accounts`
--

CREATE TABLE `phppos_store_accounts` (
  `sno` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `transaction_amount` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `balance` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_store_accounts_paid_sales`
--

CREATE TABLE `phppos_store_accounts_paid_sales` (
  `id` int(10) NOT NULL,
  `store_account_payment_sale_id` int(10) DEFAULT NULL,
  `sale_id` int(10) DEFAULT NULL,
  `partial_payment_amount` decimal(23,10) NOT NULL DEFAULT 0.0000000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_store_accounts_paid_sales`
--

INSERT INTO `phppos_store_accounts_paid_sales` (`id`, `store_account_payment_sale_id`, `sale_id`, `partial_payment_amount`) VALUES
(1, 43, 41, 0.0000000000),
(2, 45, 42, 0.0000000000),
(3, 48, 47, 0.0000000000),
(4, 51, 50, 500.0000000000),
(5, 58, 57, 80.0000000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_suppliers`
--

CREATE TABLE `phppos_suppliers` (
  `id` int(10) NOT NULL,
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `override_default_tax` int(1) NOT NULL DEFAULT 0,
  `balance` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `tax_class_id` int(10) DEFAULT NULL,
  `custom_field_1_value` varchar(255) DEFAULT NULL,
  `custom_field_2_value` varchar(255) DEFAULT NULL,
  `custom_field_3_value` varchar(255) DEFAULT NULL,
  `custom_field_4_value` varchar(255) DEFAULT NULL,
  `custom_field_5_value` varchar(255) DEFAULT NULL,
  `custom_field_6_value` varchar(255) DEFAULT NULL,
  `custom_field_7_value` varchar(255) DEFAULT NULL,
  `custom_field_8_value` varchar(255) DEFAULT NULL,
  `custom_field_9_value` varchar(255) DEFAULT NULL,
  `custom_field_10_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_suppliers_taxes`
--

CREATE TABLE `phppos_suppliers_taxes` (
  `id` int(10) NOT NULL,
  `supplier_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_supplier_store_accounts`
--

CREATE TABLE `phppos_supplier_store_accounts` (
  `sno` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `receiving_id` int(11) DEFAULT NULL,
  `transaction_amount` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `balance` decimal(23,10) NOT NULL DEFAULT 0.0000000000,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_supplier_store_accounts_paid_receivings`
--

CREATE TABLE `phppos_supplier_store_accounts_paid_receivings` (
  `id` int(10) NOT NULL,
  `store_account_payment_receiving_id` int(10) DEFAULT NULL,
  `receiving_id` int(10) DEFAULT NULL,
  `partial_payment_amount` decimal(23,10) NOT NULL DEFAULT 0.0000000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_tags`
--

CREATE TABLE `phppos_tags` (
  `id` int(11) NOT NULL,
  `ecommerce_tag_id` varchar(255) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted` int(1) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_tax_classes`
--

CREATE TABLE `phppos_tax_classes` (
  `id` int(10) NOT NULL,
  `order` int(10) NOT NULL DEFAULT 0,
  `location_id` int(10) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `ecommerce_tax_class_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_tax_classes`
--

INSERT INTO `phppos_tax_classes` (`id`, `order`, `location_id`, `deleted`, `name`, `ecommerce_tax_class_id`) VALUES
(1, 1, NULL, 1, 'IVA', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_tax_classes_taxes`
--

CREATE TABLE `phppos_tax_classes_taxes` (
  `id` int(10) NOT NULL,
  `order` int(10) NOT NULL DEFAULT 0,
  `tax_class_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  `cumulative` int(1) NOT NULL DEFAULT 0,
  `ecommerce_tax_class_tax_rate_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `phppos_tax_classes_taxes`
--

INSERT INTO `phppos_tax_classes_taxes` (`id`, `order`, `tax_class_id`, `name`, `percent`, `cumulative`, `ecommerce_tax_class_tax_rate_id`) VALUES
(1, 1, 1, 'IVA', 5.000, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_workorder_statuses`
--

CREATE TABLE `phppos_workorder_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_by_email` tinyint(1) DEFAULT 0,
  `notify_by_sms` tinyint(1) DEFAULT 0,
  `color` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `phppos_workorder_statuses`
--

INSERT INTO `phppos_workorder_statuses` (`id`, `name`, `description`, `notify_by_email`, `notify_by_sms`, `color`, `sort_order`, `last_modified`) VALUES
(1, 'lang:work_orders_new', NULL, 0, 0, '#4594cc', 10, '2020-07-09 09:32:32'),
(2, 'lang:work_orders_in_progress', NULL, 0, 0, '#28a745', 20, '2020-07-09 09:32:47'),
(3, 'lang:work_orders_out_for_repair', NULL, 0, 0, '#f7ac08', 30, '2020-07-09 09:32:54'),
(4, 'lang:work_orders_waiting_on_customer', NULL, 0, 0, '#6a0dad', 40, '2020-07-09 09:33:01'),
(5, 'lang:work_orders_repaired', NULL, 0, 0, '#006400', 50, '2020-07-09 09:33:09'),
(6, 'lang:work_orders_complete', NULL, 0, 0, '#28a745', 60, '2020-07-09 09:33:17'),
(7, 'lang:work_orders_cancelled', NULL, 0, 0, '#fb5d5d', 70, '2020-07-09 09:33:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phppos_zips`
--

CREATE TABLE `phppos_zips` (
  `name` varchar(255) NOT NULL,
  `shipping_zone_id` int(10) DEFAULT NULL,
  `order` int(10) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indices de la tabla `phppos_access`
--
ALTER TABLE `phppos_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `controller` (`controller`),
  ADD KEY `phppos_access_key_fk` (`key`);

--
-- Indices de la tabla `phppos_additional_item_numbers`
--
ALTER TABLE `phppos_additional_item_numbers`
  ADD PRIMARY KEY (`item_id`,`item_number`),
  ADD UNIQUE KEY `item_number` (`item_number`),
  ADD KEY `phppos_additional_item_numbers_ibfk_2` (`item_variation_id`);

--
-- Indices de la tabla `phppos_appointments`
--
ALTER TABLE `phppos_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_appointments_ibfk_1` (`appointments_type_id`),
  ADD KEY `phppos_appointments_ibfk_2` (`person_id`),
  ADD KEY `phppos_appointments_ibfk_3` (`location_id`),
  ADD KEY `phppos_appointments_ibfk_4` (`employee_id`);

--
-- Indices de la tabla `phppos_appointment_types`
--
ALTER TABLE `phppos_appointment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phppos_app_config`
--
ALTER TABLE `phppos_app_config`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `phppos_app_files`
--
ALTER TABLE `phppos_app_files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `expires` (`expires`),
  ADD KEY `file_name` (`file_name`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `filename_timestamp` (`file_name`,`timestamp`);

--
-- Indices de la tabla `phppos_attributes`
--
ALTER TABLE `phppos_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`item_id`,`name`);

--
-- Indices de la tabla `phppos_attribute_values`
--
ALTER TABLE `phppos_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_attribute_id` (`name`,`attribute_id`),
  ADD KEY `phppos_attribute_values_ibfk_1` (`attribute_id`);

--
-- Indices de la tabla `phppos_categories`
--
ALTER TABLE `phppos_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `phppos_categories_ibfk_1` (`parent_id`),
  ADD KEY `phppos_categories_ibfk_2` (`image_id`),
  ADD KEY `name` (`name`);

--
-- Indices de la tabla `phppos_currency_exchange_rates`
--
ALTER TABLE `phppos_currency_exchange_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phppos_customers`
--
ALTER TABLE `phppos_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `cc_token` (`cc_token`),
  ADD KEY `phppos_customers_ibfk_2` (`tier_id`),
  ADD KEY `company_name` (`company_name`),
  ADD KEY `phppos_customers_ibfk_3` (`tax_class_id`),
  ADD KEY `custom_field_1_value` (`custom_field_1_value`),
  ADD KEY `custom_field_2_value` (`custom_field_2_value`),
  ADD KEY `custom_field_3_value` (`custom_field_3_value`),
  ADD KEY `custom_field_4_value` (`custom_field_4_value`),
  ADD KEY `custom_field_5_value` (`custom_field_5_value`),
  ADD KEY `custom_field_6_value` (`custom_field_6_value`),
  ADD KEY `custom_field_7_value` (`custom_field_7_value`),
  ADD KEY `custom_field_8_value` (`custom_field_8_value`),
  ADD KEY `custom_field_9_value` (`custom_field_9_value`),
  ADD KEY `custom_field_10_value` (`custom_field_10_value`),
  ADD KEY `phppos_customers_ibfk_4` (`location_id`);

--
-- Indices de la tabla `phppos_customers_series`
--
ALTER TABLE `phppos_customers_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_customers_series_ibfk_1` (`item_id`),
  ADD KEY `phppos_customers_series_ibfk_2` (`customer_id`),
  ADD KEY `phppos_customers_series_ibfk_3` (`sale_id`);

--
-- Indices de la tabla `phppos_customers_series_log`
--
ALTER TABLE `phppos_customers_series_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_customers_series_log_ibfk_1` (`series_id`);

--
-- Indices de la tabla `phppos_customers_taxes`
--
ALTER TABLE `phppos_customers_taxes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_tax` (`customer_id`,`name`,`percent`);

--
-- Indices de la tabla `phppos_damaged_items_log`
--
ALTER TABLE `phppos_damaged_items_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_damaged_items_log_ibfk_1` (`item_id`),
  ADD KEY `phppos_damaged_items_log_ibfk_2` (`item_variation_id`),
  ADD KEY `phppos_damaged_items_log_ibfk_3` (`sale_id`),
  ADD KEY `phppos_damaged_items_log_ibfk_4` (`location_id`);

--
-- Indices de la tabla `phppos_ecommerce_locations`
--
ALTER TABLE `phppos_ecommerce_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indices de la tabla `phppos_employees`
--
ALTER TABLE `phppos_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `employee_number` (`employee_number`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `custom_field_1_value` (`custom_field_1_value`),
  ADD KEY `custom_field_2_value` (`custom_field_2_value`),
  ADD KEY `custom_field_3_value` (`custom_field_3_value`),
  ADD KEY `custom_field_4_value` (`custom_field_4_value`),
  ADD KEY `custom_field_5_value` (`custom_field_5_value`),
  ADD KEY `custom_field_6_value` (`custom_field_6_value`),
  ADD KEY `custom_field_7_value` (`custom_field_7_value`),
  ADD KEY `custom_field_8_value` (`custom_field_8_value`),
  ADD KEY `custom_field_9_value` (`custom_field_9_value`),
  ADD KEY `custom_field_10_value` (`custom_field_10_value`),
  ADD KEY `template_id` (`template_id`);

--
-- Indices de la tabla `phppos_employees_app_config`
--
ALTER TABLE `phppos_employees_app_config`
  ADD PRIMARY KEY (`employee_id`,`key`);

--
-- Indices de la tabla `phppos_employees_locations`
--
ALTER TABLE `phppos_employees_locations`
  ADD PRIMARY KEY (`employee_id`,`location_id`),
  ADD KEY `phppos_employees_locations_ibfk_2` (`location_id`);

--
-- Indices de la tabla `phppos_employees_reset_password`
--
ALTER TABLE `phppos_employees_reset_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_employees_reset_password_ibfk_1` (`employee_id`);

--
-- Indices de la tabla `phppos_employees_time_clock`
--
ALTER TABLE `phppos_employees_time_clock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_employees_time_clock_ibfk_1` (`employee_id`),
  ADD KEY `phppos_employees_time_clock_ibfk_2` (`location_id`);

--
-- Indices de la tabla `phppos_employees_time_off`
--
ALTER TABLE `phppos_employees_time_off`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_employees_time_off_ibfk_1` (`employee_requested_person_id`),
  ADD KEY `phppos_employees_time_off_ibfk_2` (`employee_approved_person_id`),
  ADD KEY `phppos_employees_time_off_ibfk_3` (`employee_requested_location_id`);

--
-- Indices de la tabla `phppos_employee_registers`
--
ALTER TABLE `phppos_employee_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_employee_registers_ibfk_1` (`employee_id`),
  ADD KEY `phppos_employee_registers_ibfk_2` (`register_id`);

--
-- Indices de la tabla `phppos_expenses`
--
ALTER TABLE `phppos_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `approved_employee_id` (`approved_employee_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `expense_type` (`expense_type`),
  ADD KEY `expense_date` (`expense_date`),
  ADD KEY `expense_amount` (`expense_amount`),
  ADD KEY `expense_description` (`expense_description`(255)),
  ADD KEY `expense_reason` (`expense_reason`),
  ADD KEY `expense_note` (`expense_note`(255));

--
-- Indices de la tabla `phppos_expenses_categories`
--
ALTER TABLE `phppos_expenses_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `phppos_expenses_categories_ibfk_1` (`parent_id`),
  ADD KEY `name` (`name`);

--
-- Indices de la tabla `phppos_giftcards`
--
ALTER TABLE `phppos_giftcards`
  ADD PRIMARY KEY (`giftcard_id`),
  ADD UNIQUE KEY `giftcard_number` (`giftcard_number`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `phppos_giftcards_ibfk_1` (`customer_id`),
  ADD KEY `description` (`description`(255));

--
-- Indices de la tabla `phppos_giftcards_log`
--
ALTER TABLE `phppos_giftcards_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_giftcards_log_ibfk_1` (`giftcard_id`);

--
-- Indices de la tabla `phppos_grid_hidden_categories`
--
ALTER TABLE `phppos_grid_hidden_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_grid` (`category_id`,`location_id`),
  ADD KEY `phppos_grid_hidden_categories_ibfk_2` (`location_id`);

--
-- Indices de la tabla `phppos_grid_hidden_items`
--
ALTER TABLE `phppos_grid_hidden_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_grid` (`item_id`,`location_id`),
  ADD KEY `phppos_grid_hidden_items_ibfk_2` (`location_id`);

--
-- Indices de la tabla `phppos_grid_hidden_item_kits`
--
ALTER TABLE `phppos_grid_hidden_item_kits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_grid` (`item_kit_id`,`location_id`),
  ADD KEY `phppos_grid_hidden_item_kits_ibfk_2` (`location_id`);

--
-- Indices de la tabla `phppos_grid_hidden_tags`
--
ALTER TABLE `phppos_grid_hidden_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_grid` (`tag_id`,`location_id`),
  ADD KEY `phppos_grid_hidden_tags_ibfk_2` (`location_id`);

--
-- Indices de la tabla `phppos_inventory`
--
ALTER TABLE `phppos_inventory`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `phppos_inventory_ibfk_1` (`trans_items`),
  ADD KEY `phppos_inventory_ibfk_2` (`trans_user`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `trans_date` (`trans_date`,`trans_inventory`,`location_id`),
  ADD KEY `phppos_inventory_ibfk_4` (`item_variation_id`),
  ADD KEY `phppos_inventory_custom` (`trans_items`,`location_id`,`trans_date`,`item_variation_id`,`trans_id`);

--
-- Indices de la tabla `phppos_inventory_counts`
--
ALTER TABLE `phppos_inventory_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_inventory_counts_ibfk_1` (`employee_id`),
  ADD KEY `phppos_inventory_counts_ibfk_2` (`location_id`);

--
-- Indices de la tabla `phppos_inventory_counts_items`
--
ALTER TABLE `phppos_inventory_counts_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_inventory_counts_items_ibfk_1` (`inventory_counts_id`),
  ADD KEY `phppos_inventory_counts_items_ibfk_2` (`item_id`),
  ADD KEY `inventory_counts_items_ibfk_3` (`item_variation_id`);

--
-- Indices de la tabla `phppos_items`
--
ALTER TABLE `phppos_items`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_number` (`item_number`),
  ADD UNIQUE KEY `product_id` (`product_id`),
  ADD KEY `phppos_items_ibfk_1` (`supplier_id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `phppos_items_ibfk_3` (`category_id`),
  ADD KEY `phppos_items_ibfk_4` (`manufacturer_id`),
  ADD KEY `phppos_items_ibfk_5` (`ecommerce_product_id`),
  ADD KEY `description` (`description`(255)),
  ADD KEY `size` (`size`),
  ADD KEY `reorder_level` (`reorder_level`),
  ADD KEY `cost_price` (`cost_price`),
  ADD KEY `unit_price` (`unit_price`),
  ADD KEY `promo_price` (`promo_price`),
  ADD KEY `last_modified` (`last_modified`),
  ADD KEY `name` (`name`),
  ADD KEY `phppos_items_ibfk_6` (`tax_class_id`),
  ADD KEY `deleted_system_item` (`deleted`,`system_item`),
  ADD KEY `custom_field_1_value` (`custom_field_1_value`),
  ADD KEY `custom_field_2_value` (`custom_field_2_value`),
  ADD KEY `custom_field_3_value` (`custom_field_3_value`),
  ADD KEY `custom_field_4_value` (`custom_field_4_value`),
  ADD KEY `custom_field_5_value` (`custom_field_5_value`),
  ADD KEY `custom_field_6_value` (`custom_field_6_value`),
  ADD KEY `custom_field_7_value` (`custom_field_7_value`),
  ADD KEY `custom_field_8_value` (`custom_field_8_value`),
  ADD KEY `custom_field_9_value` (`custom_field_9_value`),
  ADD KEY `custom_field_10_value` (`custom_field_10_value`),
  ADD KEY `verify_age` (`verify_age`),
  ADD KEY `phppos_items_ibfk_7` (`main_image_id`),
  ADD KEY `item_inactive_index` (`item_inactive`),
  ADD KEY `tags` (`tags`),
  ADD KEY `is_favorite_index` (`is_favorite`),
  ADD KEY `ecommerce_product_id` (`ecommerce_product_id`),
  ADD KEY `ecommerce_inventory_item_id` (`ecommerce_inventory_item_id`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `full_search` (`name`,`item_number`,`product_id`,`description`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `name_search` (`name`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `item_number_search` (`item_number`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `product_id_search` (`product_id`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `description_search` (`description`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `size_search` (`size`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `custom_field_1_value_search` (`custom_field_1_value`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `custom_field_2_value_search` (`custom_field_2_value`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `custom_field_3_value_search` (`custom_field_3_value`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `custom_field_4_value_search` (`custom_field_4_value`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `custom_field_5_value_search` (`custom_field_5_value`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `custom_field_6_value_search` (`custom_field_6_value`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `custom_field_7_value_search` (`custom_field_7_value`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `custom_field_8_value_search` (`custom_field_8_value`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `custom_field_9_value_search` (`custom_field_9_value`);
ALTER TABLE `phppos_items` ADD FULLTEXT KEY `custom_field_10_value_search` (`custom_field_10_value`);

--
-- Indices de la tabla `phppos_items_modifiers`
--
ALTER TABLE `phppos_items_modifiers`
  ADD PRIMARY KEY (`item_id`,`modifier_id`),
  ADD KEY `phppos_items_modifiers_ibfk_1` (`modifier_id`);

--
-- Indices de la tabla `phppos_items_pricing_history`
--
ALTER TABLE `phppos_items_pricing_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_items_pricing_history_ibfk_1` (`item_id`),
  ADD KEY `phppos_items_pricing_history_ibfk_2` (`item_variation_id`),
  ADD KEY `phppos_items_pricing_history_ibfk_3` (`location_id`),
  ADD KEY `phppos_items_pricing_history_ibfk_4` (`employee_id`);

--
-- Indices de la tabla `phppos_items_quantity_units`
--
ALTER TABLE `phppos_items_quantity_units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quantity_unit_item_number` (`quantity_unit_item_number`),
  ADD KEY `phppos_items_quantity_units_ibfk_1` (`item_id`);

--
-- Indices de la tabla `phppos_items_secondary_categories`
--
ALTER TABLE `phppos_items_secondary_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_category` (`item_id`,`category_id`),
  ADD KEY `phppos_items_secondary_categories_ibfk_1` (`item_id`),
  ADD KEY `phppos_items_secondary_categories_ibfk_2` (`category_id`);

--
-- Indices de la tabla `phppos_items_serial_numbers`
--
ALTER TABLE `phppos_items_serial_numbers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serial_number` (`serial_number`),
  ADD KEY `phppos_items_serial_numbers_ibfk_1` (`item_id`);

--
-- Indices de la tabla `phppos_items_tags`
--
ALTER TABLE `phppos_items_tags`
  ADD PRIMARY KEY (`item_id`,`tag_id`),
  ADD KEY `phppos_items_tags_ibfk_2` (`tag_id`);

--
-- Indices de la tabla `phppos_items_taxes`
--
ALTER TABLE `phppos_items_taxes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_tax` (`item_id`,`name`,`percent`);

--
-- Indices de la tabla `phppos_items_tier_prices`
--
ALTER TABLE `phppos_items_tier_prices`
  ADD PRIMARY KEY (`tier_id`,`item_id`),
  ADD KEY `phppos_items_tier_prices_ibfk_2` (`item_id`);

--
-- Indices de la tabla `phppos_item_attributes`
--
ALTER TABLE `phppos_item_attributes`
  ADD PRIMARY KEY (`attribute_id`,`item_id`),
  ADD KEY `phppos_item_attributes_ibfk_1` (`item_id`);

--
-- Indices de la tabla `phppos_item_attribute_values`
--
ALTER TABLE `phppos_item_attribute_values`
  ADD PRIMARY KEY (`attribute_value_id`,`item_id`),
  ADD KEY `phppos_item_attribute_values_ibfk_1` (`item_id`);

--
-- Indices de la tabla `phppos_item_images`
--
ALTER TABLE `phppos_item_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_item_images_ibfk_1` (`item_id`),
  ADD KEY `phppos_item_images_ibfk_2` (`image_id`),
  ADD KEY `phppos_item_images_ibfk_3` (`item_variation_id`);

--
-- Indices de la tabla `phppos_item_kits`
--
ALTER TABLE `phppos_item_kits`
  ADD PRIMARY KEY (`item_kit_id`),
  ADD UNIQUE KEY `item_kit_number` (`item_kit_number`),
  ADD UNIQUE KEY `product_id` (`product_id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `phppos_item_kits_ibfk_1` (`category_id`),
  ADD KEY `phppos_item_kits_ibfk_2` (`manufacturer_id`),
  ADD KEY `name` (`name`),
  ADD KEY `description` (`description`),
  ADD KEY `cost_price` (`cost_price`),
  ADD KEY `unit_price` (`unit_price`),
  ADD KEY `phppos_item_kits_ibfk_3` (`tax_class_id`),
  ADD KEY `custom_field_1_value` (`custom_field_1_value`),
  ADD KEY `custom_field_2_value` (`custom_field_2_value`),
  ADD KEY `custom_field_3_value` (`custom_field_3_value`),
  ADD KEY `custom_field_4_value` (`custom_field_4_value`),
  ADD KEY `custom_field_5_value` (`custom_field_5_value`),
  ADD KEY `custom_field_6_value` (`custom_field_6_value`),
  ADD KEY `custom_field_7_value` (`custom_field_7_value`),
  ADD KEY `custom_field_8_value` (`custom_field_8_value`),
  ADD KEY `custom_field_9_value` (`custom_field_9_value`),
  ADD KEY `custom_field_10_value` (`custom_field_10_value`),
  ADD KEY `verify_age` (`verify_age`),
  ADD KEY `phppos_item_kits_ibfk_4` (`main_image_id`),
  ADD KEY `item_kit_inactive_index` (`item_kit_inactive`),
  ADD KEY `is_favorite_index` (`is_favorite`);

--
-- Indices de la tabla `phppos_item_kits_modifiers`
--
ALTER TABLE `phppos_item_kits_modifiers`
  ADD PRIMARY KEY (`item_kit_id`,`modifier_id`),
  ADD KEY `phppos_item_kits_modifiers_ibfk_1` (`modifier_id`);

--
-- Indices de la tabla `phppos_item_kits_pricing_history`
--
ALTER TABLE `phppos_item_kits_pricing_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_item_kits_pricing_history_ibfk_1` (`item_kit_id`),
  ADD KEY `phppos_item_kits_pricing_history_ibfk_2` (`location_id`),
  ADD KEY `phppos_item_kits_pricing_history_ibfk_3` (`employee_id`);

--
-- Indices de la tabla `phppos_item_kits_secondary_categories`
--
ALTER TABLE `phppos_item_kits_secondary_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_kit_category` (`item_kit_id`,`category_id`),
  ADD KEY `phppos_item_kits_secondary_categories_ibfk_1` (`item_kit_id`),
  ADD KEY `phppos_item_kits_secondary_categories_ibfk_2` (`category_id`);

--
-- Indices de la tabla `phppos_item_kits_tags`
--
ALTER TABLE `phppos_item_kits_tags`
  ADD PRIMARY KEY (`item_kit_id`,`tag_id`),
  ADD KEY `phppos_item_kits_tags_ibfk_2` (`tag_id`);

--
-- Indices de la tabla `phppos_item_kits_taxes`
--
ALTER TABLE `phppos_item_kits_taxes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_tax` (`item_kit_id`,`name`,`percent`);

--
-- Indices de la tabla `phppos_item_kits_tier_prices`
--
ALTER TABLE `phppos_item_kits_tier_prices`
  ADD PRIMARY KEY (`tier_id`,`item_kit_id`),
  ADD KEY `phppos_item_kits_tier_prices_ibfk_2` (`item_kit_id`);

--
-- Indices de la tabla `phppos_item_kit_images`
--
ALTER TABLE `phppos_item_kit_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_item_kit_images_ibfk_1` (`item_kit_id`),
  ADD KEY `phppos_item_kit_images_ibfk_2` (`image_id`);

--
-- Indices de la tabla `phppos_item_kit_items`
--
ALTER TABLE `phppos_item_kit_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_item_kit_items_ibfk_1` (`item_kit_id`),
  ADD KEY `phppos_item_kit_items_ibfk_2` (`item_id`),
  ADD KEY `phppos_item_kit_items_ibfk_3` (`item_variation_id`);

--
-- Indices de la tabla `phppos_item_kit_item_kits`
--
ALTER TABLE `phppos_item_kit_item_kits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_item_kit_item_kits_ibfk_1` (`item_kit_id`),
  ADD KEY `phppos_item_kit_item_kits_ibfk_2` (`item_kit_item_kit`);

--
-- Indices de la tabla `phppos_item_variations`
--
ALTER TABLE `phppos_item_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_number` (`item_number`),
  ADD KEY `phppos_item_variations_ibfk_1` (`item_id`),
  ADD KEY `phppos_item_variations_ibfk_2` (`ecommerce_variation_id`),
  ADD KEY `ecommerce_inventory_item_id` (`ecommerce_inventory_item_id`);
ALTER TABLE `phppos_item_variations` ADD FULLTEXT KEY `name_search` (`name`);

--
-- Indices de la tabla `phppos_item_variation_attribute_values`
--
ALTER TABLE `phppos_item_variation_attribute_values`
  ADD PRIMARY KEY (`attribute_value_id`,`item_variation_id`),
  ADD KEY `phppos_item_variation_attribute_values_ibfk_2` (`item_variation_id`);

--
-- Indices de la tabla `phppos_keys`
--
ALTER TABLE `phppos_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `phppos_keys_user_id_fk` (`user_id`);

--
-- Indices de la tabla `phppos_limits`
--
ALTER TABLE `phppos_limits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uri` (`uri`),
  ADD KEY `phppos_limits_api_key_fk` (`api_key`);

--
-- Indices de la tabla `phppos_locations`
--
ALTER TABLE `phppos_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `phppos_locations_ibfk_1` (`company_logo`),
  ADD KEY `name` (`name`(255)),
  ADD KEY `address` (`address`(255)),
  ADD KEY `phone` (`phone`(255)),
  ADD KEY `email` (`email`(255)),
  ADD KEY `phppos_locations_ibfk_2` (`tax_class_id`);

--
-- Indices de la tabla `phppos_location_items`
--
ALTER TABLE `phppos_location_items`
  ADD PRIMARY KEY (`location_id`,`item_id`),
  ADD KEY `phppos_location_items_ibfk_2` (`item_id`),
  ADD KEY `quantity` (`quantity`),
  ADD KEY `phppos_location_items_ibfk_3` (`tax_class_id`);

--
-- Indices de la tabla `phppos_location_items_taxes`
--
ALTER TABLE `phppos_location_items_taxes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_tax` (`location_id`,`item_id`,`name`,`percent`),
  ADD KEY `phppos_location_items_taxes_ibfk_2` (`item_id`);

--
-- Indices de la tabla `phppos_location_items_tier_prices`
--
ALTER TABLE `phppos_location_items_tier_prices`
  ADD PRIMARY KEY (`tier_id`,`item_id`,`location_id`),
  ADD KEY `phppos_location_items_tier_prices_ibfk_2` (`location_id`),
  ADD KEY `phppos_location_items_tier_prices_ibfk_3` (`item_id`);

--
-- Indices de la tabla `phppos_location_item_kits`
--
ALTER TABLE `phppos_location_item_kits`
  ADD PRIMARY KEY (`location_id`,`item_kit_id`),
  ADD KEY `phppos_location_item_kits_ibfk_2` (`item_kit_id`),
  ADD KEY `phppos_location_item_kits_ibfk_3` (`tax_class_id`);

--
-- Indices de la tabla `phppos_location_item_kits_taxes`
--
ALTER TABLE `phppos_location_item_kits_taxes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_tax` (`location_id`,`item_kit_id`,`name`,`percent`),
  ADD KEY `phppos_location_item_kits_taxes_ibfk_2` (`item_kit_id`);

--
-- Indices de la tabla `phppos_location_item_kits_tier_prices`
--
ALTER TABLE `phppos_location_item_kits_tier_prices`
  ADD PRIMARY KEY (`tier_id`,`item_kit_id`,`location_id`),
  ADD KEY `phppos_location_item_kits_tier_prices_ibfk_2` (`location_id`),
  ADD KEY `phppos_location_item_kits_tier_prices_ibfk_3` (`item_kit_id`);

--
-- Indices de la tabla `phppos_location_item_variations`
--
ALTER TABLE `phppos_location_item_variations`
  ADD PRIMARY KEY (`item_variation_id`,`location_id`),
  ADD KEY `phppos_item_attribute_location_values_ibfk_2` (`location_id`);

--
-- Indices de la tabla `phppos_logs`
--
ALTER TABLE `phppos_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phppos_manufacturers`
--
ALTER TABLE `phppos_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `name` (`name`);

--
-- Indices de la tabla `phppos_messages`
--
ALTER TABLE `phppos_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_messages_ibfk_1` (`sender_id`),
  ADD KEY `phppos_messages_key_1` (`deleted`,`created_at`,`id`);

--
-- Indices de la tabla `phppos_message_receiver`
--
ALTER TABLE `phppos_message_receiver`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_message_receiver_ibfk_2` (`receiver_id`),
  ADD KEY `phppos_message_receiver_key_1` (`message_id`,`receiver_id`);

--
-- Indices de la tabla `phppos_modifiers`
--
ALTER TABLE `phppos_modifiers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `sort_index` (`deleted`,`sort_order`);

--
-- Indices de la tabla `phppos_modifier_items`
--
ALTER TABLE `phppos_modifier_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_modifier_items_ibfk_1` (`modifier_id`),
  ADD KEY `sort_index` (`deleted`,`modifier_id`,`sort_order`);

--
-- Indices de la tabla `phppos_modules`
--
ALTER TABLE `phppos_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  ADD UNIQUE KEY `name_lang_key` (`name_lang_key`);

--
-- Indices de la tabla `phppos_modules_actions`
--
ALTER TABLE `phppos_modules_actions`
  ADD PRIMARY KEY (`action_id`,`module_id`),
  ADD KEY `phppos_modules_actions_ibfk_1` (`module_id`);

--
-- Indices de la tabla `phppos_people`
--
ALTER TABLE `phppos_people`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `phppos_people_ibfk_1` (`image_id`),
  ADD KEY `first_name` (`first_name`),
  ADD KEY `last_name` (`last_name`),
  ADD KEY `email` (`email`),
  ADD KEY `phone_number` (`phone_number`),
  ADD KEY `full_name` (`full_name`(255));

--
-- Indices de la tabla `phppos_people_files`
--
ALTER TABLE `phppos_people_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_people_files_ibfk_1` (`file_id`);

--
-- Indices de la tabla `phppos_permissions`
--
ALTER TABLE `phppos_permissions`
  ADD PRIMARY KEY (`module_id`,`person_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indices de la tabla `phppos_permissions_actions`
--
ALTER TABLE `phppos_permissions_actions`
  ADD PRIMARY KEY (`module_id`,`person_id`,`action_id`),
  ADD KEY `phppos_permissions_actions_ibfk_2` (`person_id`),
  ADD KEY `phppos_permissions_actions_ibfk_3` (`action_id`);

--
-- Indices de la tabla `phppos_permissions_actions_locations`
--
ALTER TABLE `phppos_permissions_actions_locations`
  ADD PRIMARY KEY (`module_id`,`person_id`,`action_id`,`location_id`),
  ADD KEY `phppos_permissions_actions_locations_ibfk_2` (`person_id`),
  ADD KEY `phppos_permissions_actions_locations_ibfk_3` (`action_id`),
  ADD KEY `phppos_permissions_actions_locations_ibfk_4` (`location_id`);

--
-- Indices de la tabla `phppos_permissions_locations`
--
ALTER TABLE `phppos_permissions_locations`
  ADD PRIMARY KEY (`module_id`,`person_id`,`location_id`),
  ADD KEY `phppos_permissions_locations_ibfk_1` (`person_id`),
  ADD KEY `phppos_permissions_locations_ibfk_3` (`location_id`);

--
-- Indices de la tabla `phppos_permissions_template`
--
ALTER TABLE `phppos_permissions_template`
  ADD PRIMARY KEY (`template_id`,`module_id`),
  ADD KEY `phppos_permissions_template_ibfk_1` (`module_id`);

--
-- Indices de la tabla `phppos_permissions_templates`
--
ALTER TABLE `phppos_permissions_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `name` (`name`),
  ADD KEY `name_deleted` (`name`,`deleted`);

--
-- Indices de la tabla `phppos_permissions_template_actions`
--
ALTER TABLE `phppos_permissions_template_actions`
  ADD PRIMARY KEY (`template_id`,`module_id`,`action_id`),
  ADD KEY `phppos_permissions_template_actions_ibfk_2` (`action_id`),
  ADD KEY `phppos_permissions_template_actions_ibfk_3` (`template_id`),
  ADD KEY `phppos_permissions_template_actions_ibfk_1` (`module_id`);

--
-- Indices de la tabla `phppos_permissions_template_actions_locations`
--
ALTER TABLE `phppos_permissions_template_actions_locations`
  ADD PRIMARY KEY (`template_id`,`module_id`,`action_id`,`location_id`),
  ADD KEY `phppos_permissions_template_actions_locations_ibfk_2` (`action_id`),
  ADD KEY `phppos_permissions_template_actions_locations_ibfk_3` (`location_id`),
  ADD KEY `phppos_permissions_template_actions_locations_ibfk_4` (`template_id`),
  ADD KEY `phppos_permissions_template_actions_locations_ibfk_1` (`module_id`);

--
-- Indices de la tabla `phppos_permissions_template_locations`
--
ALTER TABLE `phppos_permissions_template_locations`
  ADD PRIMARY KEY (`template_id`,`module_id`,`location_id`),
  ADD KEY `phppos_permissions_template_locations_ibfk_2` (`location_id`),
  ADD KEY `phppos_permissions_template_locations_ibfk_3` (`template_id`),
  ADD KEY `phppos_permissions_template_locations_ibfk_1` (`module_id`);

--
-- Indices de la tabla `phppos_price_rules`
--
ALTER TABLE `phppos_price_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `start_date` (`start_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `type` (`type`);

--
-- Indices de la tabla `phppos_price_rules_categories`
--
ALTER TABLE `phppos_price_rules_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_price_rules_categories_ibfk_1` (`rule_id`),
  ADD KEY `phppos_price_rules_categories_ibfk_2` (`category_id`);

--
-- Indices de la tabla `phppos_price_rules_items`
--
ALTER TABLE `phppos_price_rules_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_price_rules_items_ibfk_1` (`rule_id`),
  ADD KEY `phppos_price_rules_items_ibfk_2` (`item_id`);

--
-- Indices de la tabla `phppos_price_rules_item_kits`
--
ALTER TABLE `phppos_price_rules_item_kits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_price_rules_item_kits_ibfk_1` (`rule_id`),
  ADD KEY `phppos_price_rules_item_kits_ibfk_2` (`item_kit_id`);

--
-- Indices de la tabla `phppos_price_rules_locations`
--
ALTER TABLE `phppos_price_rules_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_price_rules_locations_ibfk_1` (`rule_id`),
  ADD KEY `phppos_price_rules_locations_ibfk_2` (`location_id`);

--
-- Indices de la tabla `phppos_price_rules_manufacturers`
--
ALTER TABLE `phppos_price_rules_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_price_rules_manufacturers_ibfk_1` (`rule_id`),
  ADD KEY `phppos_price_rules_manufacturers_ibfk_2` (`manufacturer_id`);

--
-- Indices de la tabla `phppos_price_rules_price_breaks`
--
ALTER TABLE `phppos_price_rules_price_breaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_price_rules_custom_ibfk_1` (`rule_id`);

--
-- Indices de la tabla `phppos_price_rules_tags`
--
ALTER TABLE `phppos_price_rules_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_price_rules_tags_ibfk_1` (`rule_id`),
  ADD KEY `phppos_price_rules_tags_ibfk_2` (`tag_id`);

--
-- Indices de la tabla `phppos_price_rules_tiers_exclude`
--
ALTER TABLE `phppos_price_rules_tiers_exclude`
  ADD PRIMARY KEY (`price_rule_id`,`tier_id`),
  ADD KEY `phppos_price_rules_tiers_ibfk_2` (`tier_id`);

--
-- Indices de la tabla `phppos_price_tiers`
--
ALTER TABLE `phppos_price_tiers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phppos_receivings`
--
ALTER TABLE `phppos_receivings`
  ADD PRIMARY KEY (`receiving_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `transfer_to_location_id` (`transfer_to_location_id`),
  ADD KEY `recv_search` (`location_id`,`deleted`,`receiving_time`,`suspended`,`store_account_payment`,`total_quantity_purchased`),
  ADD KEY `custom_field_1_value` (`custom_field_1_value`),
  ADD KEY `custom_field_2_value` (`custom_field_2_value`),
  ADD KEY `custom_field_3_value` (`custom_field_3_value`),
  ADD KEY `custom_field_4_value` (`custom_field_4_value`),
  ADD KEY `custom_field_5_value` (`custom_field_5_value`),
  ADD KEY `custom_field_6_value` (`custom_field_6_value`),
  ADD KEY `custom_field_7_value` (`custom_field_7_value`),
  ADD KEY `custom_field_8_value` (`custom_field_8_value`),
  ADD KEY `custom_field_9_value` (`custom_field_9_value`),
  ADD KEY `custom_field_10_value` (`custom_field_10_value`),
  ADD KEY `signature_image_id` (`signature_image_id`);

--
-- Indices de la tabla `phppos_receivings_items`
--
ALTER TABLE `phppos_receivings_items`
  ADD PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `phppos_receivings_items_ibfk_3` (`item_variation_id`),
  ADD KEY `phppos_receivings_items_ibfk_4` (`items_quantity_units_id`),
  ADD KEY `serialnumber` (`serialnumber`);

--
-- Indices de la tabla `phppos_receivings_items_taxes`
--
ALTER TABLE `phppos_receivings_items_taxes`
  ADD PRIMARY KEY (`receiving_id`,`item_id`,`line`,`name`,`percent`),
  ADD KEY `item_id` (`item_id`);

--
-- Indices de la tabla `phppos_receivings_payments`
--
ALTER TABLE `phppos_receivings_payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `receiving_id` (`receiving_id`),
  ADD KEY `payment_date` (`payment_date`);

--
-- Indices de la tabla `phppos_registers`
--
ALTER TABLE `phppos_registers`
  ADD PRIMARY KEY (`register_id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `phppos_registers_ibfk_1` (`location_id`);

--
-- Indices de la tabla `phppos_registers_cart`
--
ALTER TABLE `phppos_registers_cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `register_id` (`register_id`);

--
-- Indices de la tabla `phppos_register_currency_denominations`
--
ALTER TABLE `phppos_register_currency_denominations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phppos_register_log`
--
ALTER TABLE `phppos_register_log`
  ADD PRIMARY KEY (`register_log_id`),
  ADD KEY `phppos_register_log_ibfk_1` (`employee_id_open`),
  ADD KEY `phppos_register_log_ibfk_2` (`register_id`),
  ADD KEY `phppos_register_log_ibfk_3` (`employee_id_close`);

--
-- Indices de la tabla `phppos_register_log_audit`
--
ALTER TABLE `phppos_register_log_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `register_log_audit_ibfk_1` (`register_log_id`),
  ADD KEY `register_log_audit_ibfk_2` (`employee_id`);

--
-- Indices de la tabla `phppos_register_log_denoms`
--
ALTER TABLE `phppos_register_log_denoms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_register_log_denoms_ibfk_1` (`register_log_id`),
  ADD KEY `phppos_register_log_denoms_ibfk_2` (`register_currency_denominations_id`);

--
-- Indices de la tabla `phppos_register_log_payments`
--
ALTER TABLE `phppos_register_log_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_register_log_payments_ibfk_1` (`register_log_id`);

--
-- Indices de la tabla `phppos_sales`
--
ALTER TABLE `phppos_sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `phppos_sales_ibfk_4` (`deleted_by`),
  ADD KEY `phppos_sales_ibfk_5` (`tier_id`),
  ADD KEY `phppos_sales_ibfk_7` (`register_id`),
  ADD KEY `phppos_sales_ibfk_6` (`sold_by_employee_id`),
  ADD KEY `phppos_sales_ibfk_8` (`signature_image_id`),
  ADD KEY `was_layaway` (`was_layaway`),
  ADD KEY `was_estimate` (`was_estimate`),
  ADD KEY `phppos_sales_ibfk_9` (`rule_id`),
  ADD KEY `sales_search` (`location_id`,`deleted`,`sale_time`,`suspended`,`store_account_payment`,`total_quantity_purchased`),
  ADD KEY `phppos_sales_ibfk_10` (`suspended`),
  ADD KEY `custom_field_1_value` (`custom_field_1_value`),
  ADD KEY `custom_field_2_value` (`custom_field_2_value`),
  ADD KEY `custom_field_3_value` (`custom_field_3_value`),
  ADD KEY `custom_field_4_value` (`custom_field_4_value`),
  ADD KEY `custom_field_5_value` (`custom_field_5_value`),
  ADD KEY `custom_field_6_value` (`custom_field_6_value`),
  ADD KEY `custom_field_7_value` (`custom_field_7_value`),
  ADD KEY `custom_field_8_value` (`custom_field_8_value`),
  ADD KEY `custom_field_9_value` (`custom_field_9_value`),
  ADD KEY `custom_field_10_value` (`custom_field_10_value`),
  ADD KEY `phppos_sales_ibfk_11` (`return_sale_id`),
  ADD KEY `ecommerce_order_id` (`ecommerce_order_id`);

--
-- Indices de la tabla `phppos_sales_coupons`
--
ALTER TABLE `phppos_sales_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_sales_coupons_ibfk_1` (`sale_id`),
  ADD KEY `phppos_sales_coupons_ibfk_2` (`rule_id`);

--
-- Indices de la tabla `phppos_sales_deliveries`
--
ALTER TABLE `phppos_sales_deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `search_index` (`status`,`shipping_address_person_id`),
  ADD KEY `phppos_sales_deliveries_ibfk_1` (`sale_id`),
  ADD KEY `phppos_sales_deliveries_ibfk_2` (`shipping_address_person_id`),
  ADD KEY `phppos_sales_deliveries_ibfk_3` (`shipping_method_id`),
  ADD KEY `phppos_sales_deliveries_ibfk_4` (`shipping_zone_id`),
  ADD KEY `phppos_sales_deliveries_ibfk_5` (`tax_class_id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `phppos_sales_deliveries_ibfk_6` (`delivery_employee_person_id`);

--
-- Indices de la tabla `phppos_sales_items`
--
ALTER TABLE `phppos_sales_items`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `phppos_sales_items_ibfk_3` (`rule_id`),
  ADD KEY `phppos_sales_items_ibfk_4` (`item_variation_id`),
  ADD KEY `phppos_sales_items_ibfk_5` (`series_id`),
  ADD KEY `phppos_sales_items_ibfk_6` (`items_quantity_units_id`),
  ADD KEY `serialnumber` (`serialnumber`);

--
-- Indices de la tabla `phppos_sales_items_modifier_items`
--
ALTER TABLE `phppos_sales_items_modifier_items`
  ADD PRIMARY KEY (`item_id`,`sale_id`,`line`,`modifier_item_id`),
  ADD KEY `phppos_sales_items_modifier_items_ibfk_2` (`sale_id`),
  ADD KEY `phppos_sales_items_modifier_items_ibfk_3` (`modifier_item_id`);

--
-- Indices de la tabla `phppos_sales_items_notes`
--
ALTER TABLE `phppos_sales_items_notes`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `phppos_sales_items_notes_ibfk_1` (`sale_id`),
  ADD KEY `phppos_sales_items_notes_ibfk_2` (`item_id`),
  ADD KEY `phppos_sales_items_notes_ibfk_3` (`employee_id`);

--
-- Indices de la tabla `phppos_sales_items_taxes`
--
ALTER TABLE `phppos_sales_items_taxes`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  ADD KEY `item_id` (`item_id`);

--
-- Indices de la tabla `phppos_sales_item_kits`
--
ALTER TABLE `phppos_sales_item_kits`
  ADD PRIMARY KEY (`sale_id`,`item_kit_id`,`line`),
  ADD KEY `item_kit_id` (`item_kit_id`),
  ADD KEY `phppos_sales_item_kits_ibfk_3` (`rule_id`);

--
-- Indices de la tabla `phppos_sales_item_kits_modifier_items`
--
ALTER TABLE `phppos_sales_item_kits_modifier_items`
  ADD PRIMARY KEY (`item_kit_id`,`sale_id`,`line`,`modifier_item_id`),
  ADD KEY `phppos_sales_item_kits_modifier_items_ibfk_2` (`sale_id`),
  ADD KEY `phppos_sales_item_kits_modifier_items_ibfk_3` (`modifier_item_id`);

--
-- Indices de la tabla `phppos_sales_item_kits_taxes`
--
ALTER TABLE `phppos_sales_item_kits_taxes`
  ADD PRIMARY KEY (`sale_id`,`item_kit_id`,`line`,`name`,`percent`),
  ADD KEY `item_id` (`item_kit_id`);

--
-- Indices de la tabla `phppos_sales_payments`
--
ALTER TABLE `phppos_sales_payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `payment_date` (`payment_date`);

--
-- Indices de la tabla `phppos_sales_work_orders2`
--
ALTER TABLE `phppos_sales_work_orders2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phppos_sale_types`
--
ALTER TABLE `phppos_sale_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phppos_sessions`
--
ALTER TABLE `phppos_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `phppos_shipping_methods`
--
ALTER TABLE `phppos_shipping_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_shipping_methods_ibfk_1` (`shipping_provider_id`),
  ADD KEY `phppos_shipping_methods_ibfk_2` (`fee_tax_class_id`);

--
-- Indices de la tabla `phppos_shipping_providers`
--
ALTER TABLE `phppos_shipping_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phppos_shipping_zones`
--
ALTER TABLE `phppos_shipping_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_shipping_zones_ibfk_1` (`tax_class_id`);

--
-- Indices de la tabla `phppos_store_accounts`
--
ALTER TABLE `phppos_store_accounts`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `phppos_store_accounts_ibfk_1` (`sale_id`),
  ADD KEY `phppos_store_accounts_ibfk_2` (`customer_id`);

--
-- Indices de la tabla `phppos_store_accounts_paid_sales`
--
ALTER TABLE `phppos_store_accounts_paid_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_store_accounts_sales_ibfk_1` (`sale_id`),
  ADD KEY `phppos_store_accounts_sales_ibfk_2` (`store_account_payment_sale_id`);

--
-- Indices de la tabla `phppos_suppliers`
--
ALTER TABLE `phppos_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `phppos_suppliers_ibfk_2` (`tax_class_id`),
  ADD KEY `custom_field_1_value` (`custom_field_1_value`),
  ADD KEY `custom_field_2_value` (`custom_field_2_value`),
  ADD KEY `custom_field_3_value` (`custom_field_3_value`),
  ADD KEY `custom_field_4_value` (`custom_field_4_value`),
  ADD KEY `custom_field_5_value` (`custom_field_5_value`),
  ADD KEY `custom_field_6_value` (`custom_field_6_value`),
  ADD KEY `custom_field_7_value` (`custom_field_7_value`),
  ADD KEY `custom_field_8_value` (`custom_field_8_value`),
  ADD KEY `custom_field_9_value` (`custom_field_9_value`),
  ADD KEY `custom_field_10_value` (`custom_field_10_value`);

--
-- Indices de la tabla `phppos_suppliers_taxes`
--
ALTER TABLE `phppos_suppliers_taxes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_tax` (`supplier_id`,`name`,`percent`);

--
-- Indices de la tabla `phppos_supplier_store_accounts`
--
ALTER TABLE `phppos_supplier_store_accounts`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `phppos_supplier_store_accounts_ibfk_1` (`receiving_id`),
  ADD KEY `phppos_supplier_store_accounts_ibfk_2` (`supplier_id`);

--
-- Indices de la tabla `phppos_supplier_store_accounts_paid_receivings`
--
ALTER TABLE `phppos_supplier_store_accounts_paid_receivings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_supplier_store_accounts_paid_receivings_ibfk_1` (`receiving_id`),
  ADD KEY `phppos_supplier_store_accounts_paid_receivings_ibfk_2` (`store_account_payment_receiving_id`);

--
-- Indices de la tabla `phppos_tags`
--
ALTER TABLE `phppos_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_name` (`name`),
  ADD KEY `deleted` (`deleted`);

--
-- Indices de la tabla `phppos_tax_classes`
--
ALTER TABLE `phppos_tax_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_tax_classes_ibfk_1` (`location_id`);

--
-- Indices de la tabla `phppos_tax_classes_taxes`
--
ALTER TABLE `phppos_tax_classes_taxes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_tax` (`tax_class_id`,`name`,`percent`);

--
-- Indices de la tabla `phppos_workorder_statuses`
--
ALTER TABLE `phppos_workorder_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phppos_zips`
--
ALTER TABLE `phppos_zips`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `phppos_zips_ibfk_1` (`shipping_zone_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `phppos_access`
--
ALTER TABLE `phppos_access`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_appointments`
--
ALTER TABLE `phppos_appointments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_appointment_types`
--
ALTER TABLE `phppos_appointment_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_app_files`
--
ALTER TABLE `phppos_app_files`
  MODIFY `file_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `phppos_attributes`
--
ALTER TABLE `phppos_attributes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_attribute_values`
--
ALTER TABLE `phppos_attribute_values`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_categories`
--
ALTER TABLE `phppos_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `phppos_currency_exchange_rates`
--
ALTER TABLE `phppos_currency_exchange_rates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_customers`
--
ALTER TABLE `phppos_customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_customers_series`
--
ALTER TABLE `phppos_customers_series`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_customers_series_log`
--
ALTER TABLE `phppos_customers_series_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_customers_taxes`
--
ALTER TABLE `phppos_customers_taxes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_damaged_items_log`
--
ALTER TABLE `phppos_damaged_items_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_employees`
--
ALTER TABLE `phppos_employees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `phppos_employees_reset_password`
--
ALTER TABLE `phppos_employees_reset_password`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_employees_time_clock`
--
ALTER TABLE `phppos_employees_time_clock`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_employees_time_off`
--
ALTER TABLE `phppos_employees_time_off`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_employee_registers`
--
ALTER TABLE `phppos_employee_registers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_expenses`
--
ALTER TABLE `phppos_expenses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_expenses_categories`
--
ALTER TABLE `phppos_expenses_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_giftcards`
--
ALTER TABLE `phppos_giftcards`
  MODIFY `giftcard_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_giftcards_log`
--
ALTER TABLE `phppos_giftcards_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_grid_hidden_categories`
--
ALTER TABLE `phppos_grid_hidden_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_grid_hidden_items`
--
ALTER TABLE `phppos_grid_hidden_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_grid_hidden_item_kits`
--
ALTER TABLE `phppos_grid_hidden_item_kits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_grid_hidden_tags`
--
ALTER TABLE `phppos_grid_hidden_tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_inventory`
--
ALTER TABLE `phppos_inventory`
  MODIFY `trans_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `phppos_inventory_counts`
--
ALTER TABLE `phppos_inventory_counts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_inventory_counts_items`
--
ALTER TABLE `phppos_inventory_counts_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_items`
--
ALTER TABLE `phppos_items`
  MODIFY `item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `phppos_items_pricing_history`
--
ALTER TABLE `phppos_items_pricing_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `phppos_items_quantity_units`
--
ALTER TABLE `phppos_items_quantity_units`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_items_secondary_categories`
--
ALTER TABLE `phppos_items_secondary_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_items_serial_numbers`
--
ALTER TABLE `phppos_items_serial_numbers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `phppos_items_taxes`
--
ALTER TABLE `phppos_items_taxes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_item_images`
--
ALTER TABLE `phppos_item_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_item_kits`
--
ALTER TABLE `phppos_item_kits`
  MODIFY `item_kit_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_item_kits_pricing_history`
--
ALTER TABLE `phppos_item_kits_pricing_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_item_kits_secondary_categories`
--
ALTER TABLE `phppos_item_kits_secondary_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_item_kits_taxes`
--
ALTER TABLE `phppos_item_kits_taxes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_item_kit_images`
--
ALTER TABLE `phppos_item_kit_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_item_kit_items`
--
ALTER TABLE `phppos_item_kit_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_item_kit_item_kits`
--
ALTER TABLE `phppos_item_kit_item_kits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_item_variations`
--
ALTER TABLE `phppos_item_variations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_keys`
--
ALTER TABLE `phppos_keys`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_limits`
--
ALTER TABLE `phppos_limits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_locations`
--
ALTER TABLE `phppos_locations`
  MODIFY `location_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `phppos_location_items_taxes`
--
ALTER TABLE `phppos_location_items_taxes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_location_item_kits_taxes`
--
ALTER TABLE `phppos_location_item_kits_taxes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_logs`
--
ALTER TABLE `phppos_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_manufacturers`
--
ALTER TABLE `phppos_manufacturers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_messages`
--
ALTER TABLE `phppos_messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `phppos_message_receiver`
--
ALTER TABLE `phppos_message_receiver`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_modifiers`
--
ALTER TABLE `phppos_modifiers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_modifier_items`
--
ALTER TABLE `phppos_modifier_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_people`
--
ALTER TABLE `phppos_people`
  MODIFY `person_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `phppos_people_files`
--
ALTER TABLE `phppos_people_files`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_permissions_templates`
--
ALTER TABLE `phppos_permissions_templates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_price_rules`
--
ALTER TABLE `phppos_price_rules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_price_rules_categories`
--
ALTER TABLE `phppos_price_rules_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_price_rules_items`
--
ALTER TABLE `phppos_price_rules_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_price_rules_item_kits`
--
ALTER TABLE `phppos_price_rules_item_kits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_price_rules_locations`
--
ALTER TABLE `phppos_price_rules_locations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_price_rules_manufacturers`
--
ALTER TABLE `phppos_price_rules_manufacturers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_price_rules_price_breaks`
--
ALTER TABLE `phppos_price_rules_price_breaks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_price_rules_tags`
--
ALTER TABLE `phppos_price_rules_tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_price_tiers`
--
ALTER TABLE `phppos_price_tiers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_receivings`
--
ALTER TABLE `phppos_receivings`
  MODIFY `receiving_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_receivings_payments`
--
ALTER TABLE `phppos_receivings_payments`
  MODIFY `payment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_registers`
--
ALTER TABLE `phppos_registers`
  MODIFY `register_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `phppos_registers_cart`
--
ALTER TABLE `phppos_registers_cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `phppos_register_currency_denominations`
--
ALTER TABLE `phppos_register_currency_denominations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `phppos_register_log`
--
ALTER TABLE `phppos_register_log`
  MODIFY `register_log_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `phppos_register_log_audit`
--
ALTER TABLE `phppos_register_log_audit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_register_log_denoms`
--
ALTER TABLE `phppos_register_log_denoms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de la tabla `phppos_register_log_payments`
--
ALTER TABLE `phppos_register_log_payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `phppos_sales`
--
ALTER TABLE `phppos_sales`
  MODIFY `sale_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `phppos_sales_coupons`
--
ALTER TABLE `phppos_sales_coupons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_sales_deliveries`
--
ALTER TABLE `phppos_sales_deliveries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `phppos_sales_items_notes`
--
ALTER TABLE `phppos_sales_items_notes`
  MODIFY `note_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_sales_payments`
--
ALTER TABLE `phppos_sales_payments`
  MODIFY `payment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `phppos_sales_work_orders2`
--
ALTER TABLE `phppos_sales_work_orders2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_sale_types`
--
ALTER TABLE `phppos_sale_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `phppos_shipping_methods`
--
ALTER TABLE `phppos_shipping_methods`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_shipping_providers`
--
ALTER TABLE `phppos_shipping_providers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_shipping_zones`
--
ALTER TABLE `phppos_shipping_zones`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_store_accounts`
--
ALTER TABLE `phppos_store_accounts`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `phppos_store_accounts_paid_sales`
--
ALTER TABLE `phppos_store_accounts_paid_sales`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `phppos_suppliers`
--
ALTER TABLE `phppos_suppliers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `phppos_suppliers_taxes`
--
ALTER TABLE `phppos_suppliers_taxes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_supplier_store_accounts`
--
ALTER TABLE `phppos_supplier_store_accounts`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_supplier_store_accounts_paid_receivings`
--
ALTER TABLE `phppos_supplier_store_accounts_paid_receivings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phppos_tags`
--
ALTER TABLE `phppos_tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `phppos_tax_classes`
--
ALTER TABLE `phppos_tax_classes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `phppos_tax_classes_taxes`
--
ALTER TABLE `phppos_tax_classes_taxes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `phppos_workorder_statuses`
--
ALTER TABLE `phppos_workorder_statuses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `phppos_access`
--
ALTER TABLE `phppos_access`
  ADD CONSTRAINT `phppos_access_key_fk` FOREIGN KEY (`key`) REFERENCES `phppos_keys` (`key`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `phppos_additional_item_numbers`
--
ALTER TABLE `phppos_additional_item_numbers`
  ADD CONSTRAINT `phppos_additional_item_numbers_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `phppos_items` (`item_id`),
  ADD CONSTRAINT `phppos_additional_item_numbers_ibfk_2` FOREIGN KEY (`item_variation_id`) REFERENCES `phppos_item_variations` (`id`);

--
-- Filtros para la tabla `phppos_appointments`
--
ALTER TABLE `phppos_appointments`
  ADD CONSTRAINT `phppos_appointments_ibfk_1` FOREIGN KEY (`appointments_type_id`) REFERENCES `phppos_appointment_types` (`id`),
  ADD CONSTRAINT `phppos_appointments_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `phppos_people` (`person_id`),
  ADD CONSTRAINT `phppos_appointments_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `phppos_locations` (`location_id`),
  ADD CONSTRAINT `phppos_appointments_ibfk_4` FOREIGN KEY (`employee_id`) REFERENCES `phppos_employees` (`person_id`);

--
-- Filtros para la tabla `phppos_attribute_values`
--
ALTER TABLE `phppos_attribute_values`
  ADD CONSTRAINT `phppos_attribute_values_ibfk_1` FOREIGN KEY (`attribute_id`) REFERENCES `phppos_attributes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
