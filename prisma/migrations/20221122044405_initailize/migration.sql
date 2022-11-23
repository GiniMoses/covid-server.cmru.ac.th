-- CreateTable
CREATE TABLE `Personal` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `citizenId` VARCHAR(191) NOT NULL,
    `studentCode` VARCHAR(191) NOT NULL,
    `prefix` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `surname` VARCHAR(191) NOT NULL,
    `institute` ENUM('CHIANGMAI', 'CHIANGRAI', 'LAMPANG', 'UDTARADIT', 'PETCHABOON', 'KAMPEANGPHET', 'PIBOONSONGKRAM', 'NAKORNSAWAN') NOT NULL,
    `dateAdd` DATETIME(3) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL,
    `statusPersonalId` INTEGER NOT NULL,

    UNIQUE INDEX `Personal_citizenId_key`(`citizenId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CovidTest` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `citizenId` VARCHAR(191) NOT NULL,
    `fullName` VARCHAR(191) NOT NULL,
    `queqeId` INTEGER NOT NULL,
    `checkedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `testedAt` DATETIME(3) NOT NULL,
    `testStatus` ENUM('NORESULT', 'NOTPASSED', 'PASSED') NOT NULL DEFAULT 'NORESULT',
    `checkedOutAt` DATETIME(3) NOT NULL,
    `doubleCheckedAt` DATETIME(3) NULL,
    `doubleCheckedStatus` ENUM('NORESULT', 'NOTPASSED', 'PASSED') NULL,
    `institue` ENUM('CHIANGMAI', 'CHIANGRAI', 'LAMPANG', 'UDTARADIT', 'PETCHABOON', 'KAMPEANGPHET', 'PIBOONSONGKRAM', 'NAKORNSAWAN') NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `statusPersonalId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `StatusPersonal` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Personal` ADD CONSTRAINT `Personal_statusPersonalId_fkey` FOREIGN KEY (`statusPersonalId`) REFERENCES `StatusPersonal`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `CovidTest` ADD CONSTRAINT `CovidTest_statusPersonalId_fkey` FOREIGN KEY (`statusPersonalId`) REFERENCES `StatusPersonal`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
