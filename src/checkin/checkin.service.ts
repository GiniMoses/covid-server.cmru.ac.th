import { Injectable } from '@nestjs/common';
import { Prisma } from '@prisma/client';
import { PrismaService } from '../prisma.service';

@Injectable()
export class CheckinService {
    constructor(
        private prisma:PrismaService
    ) {}
    async checkin(data:Prisma.PersonalCreateInput){
        return  await this.prisma.personal.create({
            data
        })
    }
}
