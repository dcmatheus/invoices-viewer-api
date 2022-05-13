import model from '../model/orders';
import { ok, internalError } from '../utils/httpStatus.json';

async function getOrders() {
  try {
    const orders = await model.getOrders();
    return { code: ok, message: {
      
    } };
  } catch (e) {
    console.error(e);
    return { code: internalError, message: 'Internal server error.' };
  }
}

export default { getOrders };
