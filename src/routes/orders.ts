import { Router } from 'express';
import controller from '../controller/orders';

const router = Router();

router.get('/', controller.getOrders);

export default router;
