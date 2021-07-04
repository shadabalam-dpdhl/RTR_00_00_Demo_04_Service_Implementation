using {procurement as external} from './external/procurement.csn';

service ProcurementService {

    entity PurchaseOrders as projection on external.PurchaseOrders {
        key POId, OrderedById, OrderedByName, GrossAmount, CurrencyCode, SupplierName, SupplierId, DeliveryAddress, ItemCount
    };

    entity PurchaseOrderItems as projection on external.PurchaseOrderItems {
        key POId, POItemPos, Product, Quantity, QuantityUnit, Price, PriceCurrency
    };

}