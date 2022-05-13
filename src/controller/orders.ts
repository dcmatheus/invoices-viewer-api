/* eslint-disable @typescript-eslint/no-unused-vars */
import { Request, Response } from 'express';
import service from '../service/orders';

// eslint-disable-next-line import/prefer-default-export
export const getOrders = (_req: Request, res: Response) => {
  const { code, message } = service.getOrders();
  res.status(code).json(message);
};
