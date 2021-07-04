const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	const { PurchaseOrders , PurchaseOrderItems } = this.entities;
    const service = await cds.connect.to('BackEndProcurementService');
    
	this.on('READ', PurchaseOrders, request => {
		return service.tx(request).run(request.query);
    });

	this.on('READ', PurchaseOrderItems, request => {
		return service.tx(request).run(request.query);
	});

});