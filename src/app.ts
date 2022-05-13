import express from 'express';
import cors from 'cors';
import orders from './routes/orders';

const app = express();

app.use(cors());
app.use(express.json());
app.use('/orders', orders);

export default app;
