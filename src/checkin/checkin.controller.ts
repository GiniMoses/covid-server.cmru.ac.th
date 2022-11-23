import { Body, Controller, Get, Post, Req } from '@nestjs/common';
import { CheckinService } from './checkin.service';
import { Prisma } from '@prisma/client';

@Controller('checkin')
export class CheckinController {
    constructor(private readonly checkinService: CheckinService) { }


    @Post('/create')
    async checkin(@Body() data:Prisma.PersonalCreateInput) {
        return this.checkinService.checkin(data);
    }
}
