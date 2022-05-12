import { PrismaClient } from '@prisma/client';
import buyers from './data/buyers';
import cnpjs from './data/cnpjs';
import orders from './data/orders';
import providers from './data/providers';
import users from './data/users';

const prisma = new PrismaClient();

async function seedBuyers() {
  await prisma.buyers.createMany({ data: buyers });
}

async function seedCnpjs() {
  await prisma.cnpjs.createMany({ data: cnpjs });
}

async function seedOrders() {
  await prisma.orders.createMany({ data: orders });
}

async function seedProviders() {
  await prisma.providers.createMany({ data: providers });
}

async function seedUsers() {
  await prisma.users.createMany({ data: users });
}

async function main() {
  await seedUsers();
  await seedCnpjs();
  await seedProviders();
  await seedBuyers();
  await seedOrders();
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
}).finally(() => {
  prisma.$disconnect();
});
