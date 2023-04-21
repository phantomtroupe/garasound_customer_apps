// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_history_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PurchaseHistoryEntity _$PurchaseHistoryEntityFromJson(
        Map<String, dynamic> json) =>
    PurchaseHistoryEntity(
      json['id'] as String?,
      json['id_customer'] as String?,
      json['invoice_code'] as String?,
      json['total_price'] as String?,
      json['admin_price'] as String?,
      json['final_price'] as String?,
      json['payment_date'] as String?,
      json['payment_status'] as String?,
      json['payment_method'] as String?,
      json['payment_ext_channel'] as String?,
      json['payment_ext_id'] as String?,
      json['payment_ext_code'] as String?,
      json['payment_ext_phone'] as String?,
      json['payment_ext_url'] as String?,
      json['payment_token_auth'] as String?,
      json['id_promo'] as String?,
      json['price_disc'] as String?,
      json['manual_paid_from'] as String?,
      json['manual_paid_sender'] as String?,
      json['journal_status'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['customer_full_name'] as String?,
      json['customer_username'] as String?,
      json['customer_email'] as String?,
      json['customer_phone_number'] as String?,
      json['hightlight_id_track'] as String?,
      json['hightlight_track_name'] as String?,
      json['hightlight_price'] as String?,
      json['hightlight_creator_username'] as String?,
      json['hightlight_operator_full_name'] as String?,
      json['order_count'] as String?,
    );

Map<String, dynamic> _$PurchaseHistoryEntityToJson(
        PurchaseHistoryEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_customer': instance.id_customer,
      'invoice_code': instance.invoice_code,
      'total_price': instance.total_price,
      'admin_price': instance.admin_price,
      'final_price': instance.final_price,
      'payment_date': instance.payment_date,
      'payment_status': instance.payment_status,
      'payment_method': instance.payment_method,
      'payment_ext_channel': instance.payment_ext_channel,
      'payment_ext_id': instance.payment_ext_id,
      'payment_ext_code': instance.payment_ext_code,
      'payment_ext_phone': instance.payment_ext_phone,
      'payment_ext_url': instance.payment_ext_url,
      'payment_token_auth': instance.payment_token_auth,
      'id_promo': instance.id_promo,
      'price_disc': instance.price_disc,
      'manual_paid_from': instance.manual_paid_from,
      'manual_paid_sender': instance.manual_paid_sender,
      'journal_status': instance.journal_status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'customer_full_name': instance.customer_full_name,
      'customer_username': instance.customer_username,
      'customer_email': instance.customer_email,
      'customer_phone_number': instance.customer_phone_number,
      'hightlight_id_track': instance.hightlight_id_track,
      'hightlight_track_name': instance.hightlight_track_name,
      'hightlight_price': instance.hightlight_price,
      'hightlight_creator_username': instance.hightlight_creator_username,
      'hightlight_operator_full_name': instance.hightlight_operator_full_name,
      'order_count': instance.order_count,
    };
