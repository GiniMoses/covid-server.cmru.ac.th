import { Module } from '@nestjs/common';
import { CheckinController } from './checkin.controller';
import { CheckinService } from './checkin.service';
import { PrismaService } from '../prisma.service';

@Module({
  controllers: [CheckinController],
  providers: [CheckinService,PrismaService]
})
export class CheckinModule {}
