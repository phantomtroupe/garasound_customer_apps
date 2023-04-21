class PurchaseHistoryModel{
  String? id;
  String? id_customer;
  String? invoice_code;
  String? total_price;
  String? admin_price;
  String? final_price;
  String? payment_date;
  String? payment_status;
  String? payment_method;
  String? payment_ext_channel;
  String? payment_ext_id;
  String? payment_ext_code;
  String? payment_ext_phone;
  String? payment_ext_url;
  String? payment_token_auth;
  String? id_promo;
  String? price_disc;
  String? manual_paid_from;
  String? manual_paid_sender;
  String? journal_status;
  String? created_at;
  String? updated_at;
  String? customer_full_name;
  String? customer_username;
  String? customer_email;
  String? customer_phone_number;
  String? hightlight_id_track;
  String? hightlight_track_name;
  String? hightlight_price;
  String? hightlight_creator_username;
  String? hightlight_operator_full_name;
  String? order_count;

  PurchaseHistoryModel(
      this.id,
      this.id_customer,
      this.invoice_code,
      this.total_price,
      this.admin_price,
      this.final_price,
      this.payment_date,
      this.payment_status,
      this.payment_method,
      this.payment_ext_channel,
      this.payment_ext_id,
      this.payment_ext_code,
      this.payment_ext_phone,
      this.payment_ext_url,
      this.payment_token_auth,
      this.id_promo,
      this.price_disc,
      this.manual_paid_from,
      this.manual_paid_sender,
      this.journal_status,
      this.created_at,
      this.updated_at,
      this.customer_full_name,
      this.customer_username,
      this.customer_email,
      this.customer_phone_number,
      this.hightlight_id_track,
      this.hightlight_track_name,
      this.hightlight_price,
      this.hightlight_creator_username,
      this.hightlight_operator_full_name,
      this.order_count);
}