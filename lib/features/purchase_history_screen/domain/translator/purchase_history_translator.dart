import 'package:garasound_customer_apps/features/purchase_history_screen/data/entity/purchase_history_entity.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/domain/model/purchase_history_model.dart';

class PurchaseHistoryTranslator {
  static PurchaseHistoryModel toModel(PurchaseHistoryEntity entity) {
    return PurchaseHistoryModel(
        entity.id,
        entity.id_customer,
        entity.invoice_code,
        entity.total_price,
        entity.admin_price,
        entity.final_price,
        entity.payment_date,
        entity.payment_status,
        entity.payment_method,
        entity.payment_ext_channel,
        entity.payment_ext_id,
        entity.payment_ext_code,
        entity.payment_ext_phone,
        entity.payment_ext_url,
        entity.payment_token_auth,
        entity.id_promo,
        entity.price_disc,
        entity.manual_paid_from,
        entity.manual_paid_sender,
        entity.journal_status,
        entity.created_at,
        entity.updated_at,
        entity.customer_full_name,
        entity.customer_username,
        entity.customer_email,
        entity.customer_phone_number,
        entity.hightlight_id_track,
        entity.hightlight_track_name,
        entity.hightlight_price,
        entity.hightlight_creator_username,
        entity.hightlight_operator_full_name,
        entity.order_count);
  }
}
