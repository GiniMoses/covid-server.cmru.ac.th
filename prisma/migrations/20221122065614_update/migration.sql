-- DropForeignKey
ALTER TABLE `Personal` DROP FOREIGN KEY `Personal_statusPersonalId_fkey`;

-- AlterTable
ALTER TABLE `Personal` MODIFY `statusPersonalId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `Personal` ADD CONSTRAINT `Personal_statusPersonalId_fkey` FOREIGN KEY (`statusPersonalId`) REFERENCES `StatusPersonal`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
