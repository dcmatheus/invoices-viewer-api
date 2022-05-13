import { Request, Response } from 'express';
import service from '../services/orders';

async function getOrders(_req: Request, res: Response) {
  const { code, message } = await service.getOrders();
  res.status(code).json(message);
}

export default { getOrders };
