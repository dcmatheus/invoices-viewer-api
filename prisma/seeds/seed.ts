import { PrismaClient } from '@prisma/client';
import buyers from './data/buyers';
import cnpjs from './data/cnpjs';
import orders from './data/orders';
import providers from './data/providers';
import users from './data/users';

const prisma = new PrismaClient();

async function main() {
  await prisma.users.createMany({ data: users });
  await prisma.cnpjs.createMany({ data: cnpjs });
  await prisma.providers.createMany({ data: providers });
  await prisma.buyers.createMany({ data: buyers });
  await prisma.orders.createMany({ data: orders });
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
}).finally(() => {
  prisma.$disconnect();
});
