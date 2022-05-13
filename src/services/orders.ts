import model from '../model/orders';
import { addCentsSeparator, convertToReal } from '../utils';
import { ok, internalError } from '../utils/httpStatus.json';
import orderStatus from '../utils/orderStatus.json';

async function getOrders() {
  try {
    const orders = await model.getOrders();

    const formattedOrders = orders.map(({
      nNf, emissionDate, value, orderStatusBuyer, buyers, providers,
    }) => ({
      nNf,
      buyers: buyers && buyers.name,
      providers: providers && providers.name,
      emissionDate: emissionDate && new Date(emissionDate).toLocaleDateString('pt-BR'),
      value: convertToReal(parseInt(addCentsSeparator(value || '100'), 10)),
      orderStatusBuyer: orderStatusBuyer && orderStatus[parseInt(orderStatusBuyer, 10)],
    }));

    return {
      code: ok,
      message: formattedOrders,
    };
  } catch (e) {
    console.error(e);
    return { code: internalError, message: 'Internal server error.' };
  }
}

export default { getOrders };
