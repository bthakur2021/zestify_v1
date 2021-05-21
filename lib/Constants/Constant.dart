import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class Constant {

  static bool isDebug = false;

  static const String API_STATUS_SUCCESS = "Success";
  static const String API_STATUS_FAILURE = "Failure";

  static const String FILTER_CONST_DIR_ASC = "asc";
  static const String FILTER_CONST_DIR_DESC = "desc";
  static const String FILTER_CONST_CONTAINS = "contains";
  static const String FILTER_CONST_EQ = "eq";
  static const String FILTER_CONST_DOCUMENT_TITLE = "documentTitle";
  static const String FILTER_CONST_CONTENT_TYPE_DESC = "contentTypeDesc";
  static const String FILTER_CONST_TARGET_DESCRIPTION = "targetDescription";
  static const String FILTER_CONST_TARGET_LEVEL_DESC = "targetLevelDesc";

  static const String FILTER_CONST_CONTACT_ENTITY = "EntityName";
  static const String FILTER_CONST_CONTACT_ASSIGNED_ENTITY = "AssignedEntityName";
  static const String FILTER_CONST_CONTACT_ROLE_NAME = "rol_role_nm";
  static const String FILTER_CONST_CONTACT_EMAIL = "email";
  static const String FILTER_CONST_CONTACT_PHONE = "Phone";

  static const String FILTER_CONST_ASSET_CUSIP = "cusip_desc";
  static const String FILTER_CONST_ASSET_PRODUCTTYPE = "product_type";


  static const String FILTER_CONST_TRANSACTION_DESCRIPTION = 'TransactionDescription';
  static const String FILTER_CONST_TRANSACTION_ACCOUNT_NAME = 'AccountName';
  static const String FILTER_CONST_TRANSACTION_ENTITY_NAME = 'EntityName';
  static const String FILTER_CONST_TRANSACTION_TRADE_DATE = 'TradeDate';
  static const String FILTER_CONST_TRANSACTION_AMOUNT = 'TransactionAmt';
  static const String FILTER_CONST_TRANSACTION_ETC = 'ETC';

  static const String FILTER_CONST_TRANSACTION_METHOD = "transMethod";
  static const String FILTER_CONST_RELATIONSHIP = "relationship";
  static const String FILTER_CONST_PAYOR = "payor";
  static const String FILTER_CONST_PAYOR_ACCOUNT_NUMBER = "payorAcctNum";
  static const String FILTER_CONST_PAYEE = "payee";
  static const String FILTER_CONST_AMOUNT_PAID = "amountPaid";
  static const String FILTER_CONST_CUSIP_DESCRIPTION = "cusipDescription";
  static const String FILTER_CONST_ASSET_CLASS = "AssetClass";
  static const String FILTER_CONST_SUB_ASSET_CLASS = "SubAssetClass";
  static const String FILTER_CONST_PRICE = "price";
  static const String FILTER_CONST_PAY_DATE = "pay_date";
  static const String FILTER_CONST_AS_OF_DATE = "asOfDate";
  static const String FILTER_CONST_PRICE_DATE = "priceDate";

  static const String FILTER_CONST_COUNTRY_PARTY = "countryparty";
  static const String FILTER_CONST_AMOUNT = "amount";
  static const String FILTER_CONST_ACCOUNT_DESC = "accountDesc";
  static const String FILTER_CONST_PAY_METHOD_DESC = "payMehtodDesc";
  static const String FILTER_CONST_INVOICE_NO = "InvoiceNo";
  static const String FILTER_CONST_PAYDATE = "payDate";
  static const String FILTER_CONST_NAME = "name";
  static const String FILTER_CONST_TITLE = "title";
  static const String FILTER_CONST_AND = "and";
  static const String FILTER_CONST_OR = "or";

  static double deviceActualHeight = 0.0;
  static double deviceActualWidth = 0.0;

  static double contentCardWidthLongHeight = 0.0;
  static double contentCardWidthLongWidth = 0.0;

  static const double appDefaultSpacing = 16.0;
  static const double appDefaultSpacingSemiHalf = 12.0;
  static const double appDefaultSpacingHalf = 8.0;

  static const double appListSeparatorHeight = 6.0;
  static const double appSearchBarHeight = 56.0;
  static const double appIconSize = 22.0;

  static const double cardRadius = 4.0;

  static const double maxActionBillShowInWidget = 5;

  static const int milliSecondsInSecond = 1000;
  static const int secondsInMinute = 60;
  static const int minutesInHour = 60;
  static const int hourInDay = 24;

  static void initialize(BuildContext context) {
    isDebug = kDebugMode;

    deviceActualWidth = MediaQuery.of(context).size.width;
    deviceActualHeight = MediaQuery.of(context).size.height;

    contentCardWidthLongWidth = deviceActualWidth / 2;
    contentCardWidthLongHeight = contentCardWidthLongWidth / 1.35;
  }

  static const int DEFAULT_MAX_IMAGE_MEDIA_SELECTION_ALLOWED = 30;
  static const int DEFAULT_MAX_VIDEO_MEDIA_SELECTION_ALLOWED = 10;

  static const int maxMb = 100;
  static const int kiloBytes = 1024;
  static const int bytes = 1024;
  static const int maxFileSize = maxMb * kiloBytes * bytes;
}
