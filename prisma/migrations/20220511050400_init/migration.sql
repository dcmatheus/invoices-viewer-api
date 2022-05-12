-- CreateTable
CREATE TABLE `buyers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `tradingName` VARCHAR(255) NULL,
    `cashforceTax` VARCHAR(255) NULL,
    `responsibleName` VARCHAR(255) NULL,
    `responsibleEmail` VARCHAR(255) NULL,
    `responsiblePosition` VARCHAR(255) NULL,
    `responsiblePhone` VARCHAR(255) NULL,
    `responsibleMobile` VARCHAR(255) NULL,
    `website` VARCHAR(255) NULL,
    `postalCode` VARCHAR(255) NULL,
    `address` VARCHAR(255) NULL,
    `number` VARCHAR(255) NULL,
    `complement` VARCHAR(255) NULL,
    `neighborhood` VARCHAR(255) NULL,
    `city` VARCHAR(255) NULL,
    `state` VARCHAR(255) NULL,
    `phoneNumber` VARCHAR(255) NULL,
    `situation` VARCHAR(255) NULL,
    `situationDate` VARCHAR(255) NULL,
    `createdAt` DATETIME(0) NOT NULL,
    `updatedAt` DATETIME(0) NOT NULL,
    `cnpjId` INTEGER NULL,
    `confirm` BOOLEAN NULL DEFAULT true,
    `email` VARCHAR(255) NULL,

    INDEX `cnpjId`(`cnpjId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cnpjs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `cnpj` VARCHAR(255) NOT NULL,
    `companyType` VARCHAR(255) NOT NULL,
    `createdAt` DATETIME(0) NOT NULL,
    `updatedAt` DATETIME(0) NOT NULL,

    UNIQUE INDEX `cnpj`(`cnpj`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `offers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `tax` VARCHAR(255) NOT NULL,
    `tariff` VARCHAR(255) NOT NULL,
    `adValorem` VARCHAR(255) NOT NULL,
    `float` VARCHAR(255) NOT NULL,
    `iof` VARCHAR(255) NOT NULL,
    `expiresIn` DATETIME(0) NOT NULL,
    `paymentStatusSponsor` BOOLEAN NULL DEFAULT false,
    `paymentStatusProvider` BOOLEAN NULL DEFAULT false,
    `createdAt` DATETIME(0) NOT NULL,
    `updatedAt` DATETIME(0) NOT NULL,
    `orderId` INTEGER NULL,
    `sponsorId` INTEGER NULL,

    INDEX `orderId`(`orderId`),
    INDEX `sponsorId`(`sponsorId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `orderportions` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nDup` VARCHAR(255) NOT NULL,
    `dVenc` VARCHAR(255) NOT NULL,
    `vDup` VARCHAR(255) NOT NULL,
    `availableToMarket` BOOLEAN NULL DEFAULT true,
    `createdAt` DATETIME(0) NOT NULL,
    `updatedAt` DATETIME(0) NOT NULL,
    `orderId` INTEGER NULL,

    INDEX `orderId`(`orderId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `orders` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `orderNfId` VARCHAR(255) NOT NULL,
    `orderNumber` VARCHAR(255) NOT NULL,
    `orderPath` VARCHAR(255) NULL,
    `orderFileName` VARCHAR(255) NULL,
    `orderOriginalName` VARCHAR(255) NULL,
    `emissionDate` VARCHAR(255) NULL,
    `pdfFile` VARCHAR(255) NULL,
    `emitedTo` VARCHAR(255) NOT NULL,
    `nNf` VARCHAR(255) NULL,
    `CTE` VARCHAR(255) NULL,
    `value` VARCHAR(255) NULL,
    `createdAt` DATETIME(0) NOT NULL,
    `updatedAt` DATETIME(0) NOT NULL,
    `cnpjId` INTEGER NULL,
    `userId` INTEGER NULL,
    `buyerId` INTEGER NULL,
    `providerId` INTEGER NULL,
    `orderStatusBuyer` VARCHAR(255) NULL DEFAULT '0',
    `orderStatusProvider` VARCHAR(255) NULL DEFAULT '0',
    `deliveryReceipt` VARCHAR(255) NULL,
    `cargoPackingList` VARCHAR(255) NULL,
    `deliveryCtrc` VARCHAR(255) NULL,

    UNIQUE INDEX `orderNfId`(`orderNfId`),
    UNIQUE INDEX `orderPath`(`orderPath`),
    UNIQUE INDEX `orderFileName`(`orderFileName`),
    UNIQUE INDEX `orderOriginalName`(`orderOriginalName`),
    INDEX `buyerId`(`buyerId`),
    INDEX `cnpjId`(`cnpjId`),
    INDEX `providerId`(`providerId`),
    INDEX `userId`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `providers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `tradingName` VARCHAR(255) NULL,
    `cashforceTax` VARCHAR(255) NULL,
    `responsibleName` VARCHAR(255) NULL,
    `responsibleEmail` VARCHAR(255) NULL,
    `responsiblePosition` VARCHAR(255) NULL,
    `responsiblePhone` VARCHAR(255) NULL,
    `responsibleMobile` VARCHAR(255) NULL,
    `website` VARCHAR(255) NULL,
    `postalCode` VARCHAR(255) NULL,
    `address` VARCHAR(255) NULL,
    `number` VARCHAR(255) NULL,
    `complement` VARCHAR(255) NULL,
    `neighborhood` VARCHAR(255) NULL,
    `city` VARCHAR(255) NULL,
    `state` VARCHAR(255) NULL,
    `bank` VARCHAR(255) NULL,
    `bankAgency` VARCHAR(255) NULL,
    `account` VARCHAR(255) NULL,
    `documents` VARCHAR(255) NULL,
    `phoneNumber` VARCHAR(255) NULL,
    `situation` VARCHAR(255) NULL,
    `situationDate` VARCHAR(255) NULL,
    `createdAt` DATETIME(0) NOT NULL,
    `updatedAt` DATETIME(0) NOT NULL,
    `cnpjId` INTEGER NULL,
    `email` VARCHAR(255) NULL,

    INDEX `cnpjId`(`cnpjId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sponsors` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `tradingName` VARCHAR(255) NULL,
    `cashforceTax` VARCHAR(255) NULL,
    `responsibleName` VARCHAR(255) NULL,
    `responsibleEmail` VARCHAR(255) NULL,
    `responsiblePosition` VARCHAR(255) NULL,
    `responsiblePhone` VARCHAR(255) NULL,
    `responsibleMobile` VARCHAR(255) NULL,
    `website` VARCHAR(255) NULL,
    `postalCode` VARCHAR(255) NULL,
    `address` VARCHAR(255) NULL,
    `number` VARCHAR(255) NULL,
    `complement` VARCHAR(255) NULL,
    `neighborhood` VARCHAR(255) NULL,
    `city` VARCHAR(255) NULL,
    `state` VARCHAR(255) NULL,
    `bank` VARCHAR(255) NULL,
    `bankAgency` VARCHAR(255) NULL,
    `account` VARCHAR(255) NULL,
    `phoneNumber` VARCHAR(255) NULL,
    `situation` VARCHAR(255) NULL,
    `situationDate` VARCHAR(255) NULL,
    `createdAt` DATETIME(0) NOT NULL,
    `updatedAt` DATETIME(0) NOT NULL,
    `cnpjId` INTEGER NULL,
    `email` VARCHAR(255) NULL,

    INDEX `cnpjId`(`cnpjId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `phoneNumber` VARCHAR(255) NULL,
    `mobile` VARCHAR(255) NULL,
    `departament` VARCHAR(255) NULL,
    `verificationCode` VARCHAR(255) NULL,
    `emailChecked` BOOLEAN NULL DEFAULT false,
    `createdAt` DATETIME(0) NOT NULL,
    `updatedAt` DATETIME(0) NOT NULL,
    `cashforceAdm` BOOLEAN NULL DEFAULT false,

    UNIQUE INDEX `email`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `buyers` ADD CONSTRAINT `buyers_ibfk_1` FOREIGN KEY (`cnpjId`) REFERENCES `cnpjs`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `offers` ADD CONSTRAINT `offers_ibfk_61` FOREIGN KEY (`orderId`) REFERENCES `orders`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `offers` ADD CONSTRAINT `offers_ibfk_62` FOREIGN KEY (`sponsorId`) REFERENCES `sponsors`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orderportions` ADD CONSTRAINT `orderPortions_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orders` ADD CONSTRAINT `orders_ibfk_139` FOREIGN KEY (`buyerId`) REFERENCES `buyers`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orders` ADD CONSTRAINT `orders_ibfk_141` FOREIGN KEY (`cnpjId`) REFERENCES `cnpjs`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orders` ADD CONSTRAINT `orders_ibfk_140` FOREIGN KEY (`providerId`) REFERENCES `providers`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orders` ADD CONSTRAINT `orders_ibfk_142` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `providers` ADD CONSTRAINT `providers_ibfk_1` FOREIGN KEY (`cnpjId`) REFERENCES `cnpjs`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `sponsors` ADD CONSTRAINT `sponsors_ibfk_1` FOREIGN KEY (`cnpjId`) REFERENCES `cnpjs`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
