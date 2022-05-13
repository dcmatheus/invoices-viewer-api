import prisma from './connection';

async function getOrders() {
  const orders = await prisma.orders.findMany({
    select: {
      orderNumber: true,
      emissionDate: true,
      value: true,
      orderStatusBuyer: true,
      buyers: {
        select: {
          name: true,
        },
      },
      providers: {
        select: {
          name: true,
        },
      },
    },
  });
  return orders;
}

export default { getOrders };
