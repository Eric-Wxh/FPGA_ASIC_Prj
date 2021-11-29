`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:18:40 11/27/2021 
// Design Name: 
// Module Name:    pwm_buzzer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pwm_buzzer(

	input				clk	,
	input				rst_n	,

	output	    	buzzer	//驱动蜂鸣器
);

//参数定义
		
		localparam 	M1 = 95600,
						M2 = 85150,
						M3 = 75850,
						M4 = 71600,
						M5 = 63750,
						M6 = 56800,
						M7 = 50600,
						M1_H = 47801,
						M2_H = 42553;
						
		parameter 	TIMES	= 100;
		
//信号定义
	reg				buzzer_r	;
	
	reg	[16:0]	cnt0	;//计数每个音符对应的周期
	reg	[8:0]		cnt1	;//计数每个音符重复多少次
	reg	[9:0]		cnt2	;//一共有多少个音符
	
	reg	[16:0]	pre_set;//预装载值
	reg 	[16:0]	pre_div;//设定占空比

	always@(posedge clk or negedge rst_n)begin 
		if(~rst_n)begin 
			cnt0 <= 0;
		end 
		else begin 
			if(cnt0 == pre_set-1)
				cnt0 <= 0;
			else 
				cnt0 <= cnt0 + 1;
		end 
	end 
	
	always@(posedge clk or negedge rst_n)begin 
		if(~rst_n)begin 
			cnt1 <= 0;
		end 
		else if(cnt0 == pre_set-1)begin 
			if(cnt1 == TIMES-1)
				cnt1 <= 0;
			else 
				cnt1 <= cnt1 + 1;
		end 
	end
	
	always@(posedge clk or negedge rst_n)begin 
		if(~rst_n)begin 
			cnt2 <= 0;
		end 
		else if(cnt1 == TIMES-1 && cnt0 == pre_set-1)begin 
			if(cnt2 == 769-1)
				cnt2 <= 0;
			else 
				cnt2 <= cnt2 + 1;
		end 
	end
	
	//pre_set  查找表 选择每个音频对应的计数周期
	always@(posedge clk or negedge rst_n)begin 
		if(~rst_n)begin 
			pre_set <= 0;
		end 
		else begin 
			case(cnt2)
			0 :pre_set <= M1_H;
			1 :pre_set <= 1000;
			2 :pre_set <= 1000;
			3 :pre_set <= 1000;
			4 :pre_set <= 1000;
			5 :pre_set <= 1000;
			6 :pre_set <= 1000;
			7 :pre_set <= 1000;
			8 :pre_set <= 1000;
			9 :pre_set <= 1000;
			10:pre_set <= 1000;
			11:pre_set <= 1000;
			12:pre_set <= 1000;
			13:pre_set <= 1000;
			14:pre_set <= 1000;
			15:pre_set <= 1000;
			16:pre_set <= 1000;
			17:pre_set <= 1000;
			18:pre_set <= 1000;
			19:pre_set <= 1000;
			20:pre_set <= 1000;
			21:pre_set <= 1000;
			22:pre_set <= 1000;
			23:pre_set <= 1000;
			24:pre_set <= 1000;
			25:pre_set <= 1000;
			26:pre_set <= 1000;
			27:pre_set <= 1000;
			28:pre_set <= 1000;
			29:pre_set <= 1000;
			30:pre_set <= 1000;
			31:pre_set <= 1000;
			32:pre_set <= 1000;
			33:pre_set <= 1000;
			34:pre_set <= 1000;
			35:pre_set <= 1000;
			36:pre_set <= 1000;
			37:pre_set <= 1000;
			38:pre_set <= 1000;
			39:pre_set <= 1000;
			40:pre_set <= 1000;
			41:pre_set <= 1000;
			42:pre_set <= 1000;
			43:pre_set <= 1000;
			44:pre_set <= 1000;
			45:pre_set <= 1000;
			46:pre_set <= 1000;
			47:pre_set <= 1000;
			48:pre_set <= 1000;
			49:pre_set <= 1000;
			50:pre_set <= 1000;
			51:pre_set <= 1000;
			52:pre_set <= 1000;
			53:pre_set <= 1000;

			54:pre_set <= M1_H;
			55:pre_set <= M1_H;
			56:pre_set <= 1000;
			57:pre_set <= 1000;
			58:pre_set <= 1000;
			59:pre_set <= 1000;
			60:pre_set <= 1000;
			61:pre_set <= 1000;
			62:pre_set <= 1000;
			63:pre_set <= 1000;
			64:pre_set <= 1000;
			65:pre_set <= 1000;
			66:pre_set <= 1000;
			67:pre_set <= 1000;
			68:pre_set <= 1000;
			69:pre_set <= 1000;
			70:pre_set <= 1000;
			71:pre_set <= 1000;
			72:pre_set <= 1000;
			73:pre_set <= 1000;
			74:pre_set <= 1000;
			75:pre_set <= 1000;
			76:pre_set <= 1000;
			77:pre_set <= 1000;
			78:pre_set <= 1000;
			79:pre_set <= 1000;
			80:pre_set <= 1000;
			81:pre_set <= 1000;
			82:pre_set <= 1000;
			83:pre_set <= 1000;
			84:pre_set <= 1000;
			85:pre_set <= 1000;
			86:pre_set <= 1000;
			87:pre_set <= 1000;
			88:pre_set <= 1000;
			89:pre_set <= 1000;
			90:pre_set <= 1000;
			91:pre_set <= 1000;
			92:pre_set <= 1000;
			93:pre_set <= 1000;
			94:pre_set <= 1000;
			95:pre_set <= 1000;
			96:pre_set <= 1000;
			97:pre_set <= 1000;
			98:pre_set <= 1000;
			99:pre_set <= 1000;
			100:pre_set <= 1000;
			101:pre_set <= 1000;
			102:pre_set <= 1000;
			103:pre_set <= 1000;
			104:pre_set <= 1000;
			105:pre_set <= 1000;
			106:pre_set <= 1000;
			107:pre_set <= 1000;
			108:pre_set <= 1000;

			109:pre_set <= M1_H;
			110:pre_set <= M1_H;
			111:pre_set <= 1000;
			112:pre_set <= 1000;
			113:pre_set <= 1000;
			114:pre_set <= 1000;
			115:pre_set <= 1000;
			116:pre_set <= 1000;
			117:pre_set <= 1000;
			118:pre_set <= 1000;
			119:pre_set <= 1000;
			120:pre_set <= 1000;
			121:pre_set <= 1000;
			122:pre_set <= 1000;
			123:pre_set <= 1000;
			124:pre_set <= 1000;
			125:pre_set <= 1000;
			126:pre_set <= 1000;
			127:pre_set <= 1000;
			128:pre_set <= 1000;
			129:pre_set <= 1000;
			130:pre_set <= 1000;
			131:pre_set <= 1000;
			132:pre_set <= 1000;
			133:pre_set <= 1000;
			134:pre_set <= 1000;
			135:pre_set <= 1000;
			136:pre_set <= 1000;
			137:pre_set <= 1000;
			138:pre_set <= 1000;
			139:pre_set <= 1000;
			140:pre_set <= 1000;
			141:pre_set <= 1000;
			142:pre_set <= 1000;
			143:pre_set <= 1000;
			144:pre_set <= 1000;
			145:pre_set <= 1000;
			146:pre_set <= 1000;
			147:pre_set <= 1000;
			148:pre_set <= 1000;
			149:pre_set <= 1000;
			150:pre_set <= 1000;
			151:pre_set <= 1000;
			152:pre_set <= 1000;
			153:pre_set <= 1000;
			154:pre_set <= 1000;
			155:pre_set <= 1000;
			156:pre_set <= 1000;
			157:pre_set <= 1000;
			158:pre_set <= 1000;
			159:pre_set <= 1000;
			160:pre_set <= 1000;
			161:pre_set <= 1000;
			162:pre_set <= 1000;
			163:pre_set <= 1000;

			164:pre_set <= M1_H;
			165:pre_set <= 1000;
			166:pre_set <= 1000;
			167:pre_set <= 1000;
			168:pre_set <= 1000;
			169:pre_set <= 1000;
			170:pre_set <= 1000;
			171:pre_set <= 1000;
			172:pre_set <= 1000;
			173:pre_set <= 1000;
			174:pre_set <= 1000;
			175:pre_set <= 1000;
			176:pre_set <= 1000;
			177:pre_set <= 1000;
			178:pre_set <= 1000;
			179:pre_set <= 1000;
			180:pre_set <= 1000;
			181:pre_set <= 1000;
			182:pre_set <= 1000;
			183:pre_set <= 1000;
			184:pre_set <= 1000;
			185:pre_set <= 1000;
			186:pre_set <= 1000;
			187:pre_set <= 1000;
			188:pre_set <= 1000;
			189:pre_set <= 1000;
			190:pre_set <= 1000;
			191:pre_set <= 1000;
			192:pre_set <= 1000;
			193:pre_set <= 1000;
			194:pre_set <= 1000;
			195:pre_set <= 1000;
			196:pre_set <= 1000;
			197:pre_set <= 1000;
			198:pre_set <= 1000;
			199:pre_set <= 1000;
			200:pre_set <= 1000;
			201:pre_set <= 1000;
			202:pre_set <= 1000;
			203:pre_set <= 1000;
			204:pre_set <= 1000;
			205:pre_set <= 1000;
			206:pre_set <= 1000;
			207:pre_set <= 1000;
			208:pre_set <= 1000;
			209:pre_set <= 1000;
			210:pre_set <= 1000;
			211:pre_set <= 1000;
			212:pre_set <= 1000;
			213:pre_set <= 1000;
			214:pre_set <= 1000;
			215:pre_set <= 1000;
			216:pre_set <= 1000;
			217:pre_set <= 1000;
			218:pre_set <= 1000;

			219:pre_set <= M2_H;
			220:pre_set <= M2_H;
			221:pre_set <= 1000;
			222:pre_set <= 1000;
			223:pre_set <= 1000;
			224:pre_set <= 1000;
			225:pre_set <= 1000;
			226:pre_set <= 1000;
			227:pre_set <= 1000;
			228:pre_set <= 1000;
			229:pre_set <= 1000;
			230:pre_set <= 1000;
			231:pre_set <= 1000;
			232:pre_set <= 1000;
			233:pre_set <= 1000;
			234:pre_set <= 1000;
			235:pre_set <= 1000;
			236:pre_set <= 1000;
			237:pre_set <= 1000;
			238:pre_set <= 1000;
			239:pre_set <= 1000;
			240:pre_set <= 1000;
			241:pre_set <= 1000;
			242:pre_set <= 1000;
			243:pre_set <= 1000;
			244:pre_set <= 1000;
			245:pre_set <= 1000;
			246:pre_set <= 1000;
			247:pre_set <= 1000;
			248:pre_set <= 1000;
			249:pre_set <= 1000;
			250:pre_set <= 1000;
			251:pre_set <= 1000;
			252:pre_set <= 1000;
			253:pre_set <= 1000;
			254:pre_set <= 1000;
			255:pre_set <= 1000;
			256:pre_set <= 1000;
			257:pre_set <= 1000;
			258:pre_set <= 1000;
			259:pre_set <= 1000;
			260:pre_set <= 1000;
			261:pre_set <= 1000;
			262:pre_set <= 1000;
			263:pre_set <= 1000;
			264:pre_set <= 1000;
			265:pre_set <= 1000;
			266:pre_set <= 1000;
			267:pre_set <= 1000;
			268:pre_set <= 1000;
			269:pre_set <= 1000;
			270:pre_set <= 1000;
			271:pre_set <= 1000;
			272:pre_set <= 1000;
			273:pre_set <= 1000;

			274:pre_set <= M2_H;
			275:pre_set <= M2_H;
			276:pre_set <= 1000;
			277:pre_set <= 1000;
			278:pre_set <= 1000;
			279:pre_set <= 1000;
			280:pre_set <= 1000;
			281:pre_set <= 1000;
			282:pre_set <= 1000;
			283:pre_set <= 1000;
			284:pre_set <= 1000;
			285:pre_set <= 1000;
			286:pre_set <= 1000;
			287:pre_set <= 1000;
			288:pre_set <= 1000;
			289:pre_set <= 1000;
			290:pre_set <= 1000;
			291:pre_set <= 1000;
			292:pre_set <= 1000;
			293:pre_set <= 1000;
			294:pre_set <= 1000;
			295:pre_set <= 1000;
			296:pre_set <= 1000;
			297:pre_set <= 1000;
			298:pre_set <= 1000;
			299:pre_set <= 1000;
			300:pre_set <= 1000;
			301:pre_set <= 1000;
			302:pre_set <= 1000;
			303:pre_set <= 1000;
			304:pre_set <= 1000;
			305:pre_set <= 1000;
			306:pre_set <= 1000;
			307:pre_set <= 1000;
			308:pre_set <= 1000;
			309:pre_set <= 1000;
			310:pre_set <= 1000;
			311:pre_set <= 1000;
			312:pre_set <= 1000;
			313:pre_set <= 1000;
			314:pre_set <= 1000;
			315:pre_set <= 1000;
			316:pre_set <= 1000;
			317:pre_set <= 1000;
			318:pre_set <= 1000;
			319:pre_set <= 1000;
			320:pre_set <= 1000;
			321:pre_set <= 1000;
			322:pre_set <= 1000;
			323:pre_set <= 1000;
			324:pre_set <= 1000;
			325:pre_set <= 1000;
			326:pre_set <= 1000;
			327:pre_set <= 1000;
			328:pre_set <= 1000;

			329:pre_set <= 1000;
			330:pre_set <= 1000;
			331:pre_set <= 1000;
			332:pre_set <= 1000;
			333:pre_set <= 1000;
			334:pre_set <= 1000;
			335:pre_set <= 1000;
			336:pre_set <= 1000;
			337:pre_set <= 1000;
			338:pre_set <= 1000;
			339:pre_set <= 1000;
			340:pre_set <= 1000;
			341:pre_set <= 1000;
			342:pre_set <= 1000;
			343:pre_set <= 1000;
			344:pre_set <= 1000;
			345:pre_set <= 1000;
			346:pre_set <= 1000;
			347:pre_set <= 1000;
			348:pre_set <= 1000;
			349:pre_set <= 1000;
			350:pre_set <= 1000;
			351:pre_set <= 1000;
			352:pre_set <= 1000;
			353:pre_set <= 1000;
			354:pre_set <= 1000;
			355:pre_set <= 1000;
			356:pre_set <= 1000;
			357:pre_set <= 1000;
			358:pre_set <= 1000;
			359:pre_set <= 1000;
			360:pre_set <= 1000;
			361:pre_set <= 1000;
			362:pre_set <= 1000;
			363:pre_set <= 1000;
			364:pre_set <= 1000;
			365:pre_set <= 1000;
			366:pre_set <= 1000;
			367:pre_set <= 1000;
			368:pre_set <= 1000;
			369:pre_set <= 1000;
			370:pre_set <= 1000;
			371:pre_set <= 1000;
			372:pre_set <= 1000;
			373:pre_set <= 1000;
			374:pre_set <= 1000;
			375:pre_set <= 1000;
			376:pre_set <= 1000;
			377:pre_set <= 1000;
			378:pre_set <= 1000;
			379:pre_set <= 1000;
			380:pre_set <= 1000;
			381:pre_set <= 1000;
			382:pre_set <= 1000;
			383:pre_set <= 1000;

			384:pre_set <= M1_H;
			385:pre_set <= 1000;
			386:pre_set <= 1000;
			387:pre_set <= 1000;
			388:pre_set <= 1000;
			389:pre_set <= 1000;
			390:pre_set <= 1000;
			391:pre_set <= 1000;
			392:pre_set <= 1000;
			393:pre_set <= 1000;
			394:pre_set <= 1000;
			395:pre_set <= 1000;
			396:pre_set <= 1000;
			397:pre_set <= 1000;
			398:pre_set <= 1000;
			399:pre_set <= 1000;
			400:pre_set <= 1000;
			401:pre_set <= 1000;
			402:pre_set <= 1000;
			403:pre_set <= 1000;
			404:pre_set <= 1000;
			405:pre_set <= 1000;
			406:pre_set <= 1000;
			407:pre_set <= 1000;
			408:pre_set <= 1000;
			409:pre_set <= 1000;
			410:pre_set <= 1000;
			411:pre_set <= 1000;
			412:pre_set <= 1000;
			413:pre_set <= 1000;
			414:pre_set <= 1000;
			415:pre_set <= 1000;
			416:pre_set <= 1000;
			417:pre_set <= 1000;
			418:pre_set <= 1000;
			419:pre_set <= 1000;
			420:pre_set <= 1000;
			421:pre_set <= 1000;
			422:pre_set <= 1000;
			423:pre_set <= 1000;
			424:pre_set <= 1000;
			425:pre_set <= 1000;
			426:pre_set <= 1000;
			427:pre_set <= 1000;
			428:pre_set <= 1000;
			429:pre_set <= 1000;
			430:pre_set <= 1000;
			431:pre_set <= 1000;
			432:pre_set <= 1000;
			433:pre_set <= 1000;
			434:pre_set <= 1000;
			435:pre_set <= 1000;
			436:pre_set <= 1000;
			437:pre_set <= 1000;
			438:pre_set <= 1000;

			439:pre_set <= M1_H;
			440:pre_set <= M1_H;
			441:pre_set <= 1000;
			442:pre_set <= 1000;
			443:pre_set <= 1000;
			444:pre_set <= 1000;
			445:pre_set <= 1000;
			446:pre_set <= 1000;
			447:pre_set <= 1000;
			448:pre_set <= 1000;
			449:pre_set <= 1000;
			450:pre_set <= 1000;
			451:pre_set <= 1000;
			452:pre_set <= 1000;
			453:pre_set <= 1000;
			454:pre_set <= 1000;
			455:pre_set <= 1000;
			456:pre_set <= 1000;
			457:pre_set <= 1000;
			458:pre_set <= 1000;
			459:pre_set <= 1000;
			460:pre_set <= 1000;
			461:pre_set <= 1000;
			462:pre_set <= 1000;
			463:pre_set <= 1000;
			464:pre_set <= 1000;
			465:pre_set <= 1000;
			466:pre_set <= 1000;
			467:pre_set <= 1000;
			468:pre_set <= 1000;
			469:pre_set <= 1000;
			470:pre_set <= 1000;
			471:pre_set <= 1000;
			472:pre_set <= 1000;
			473:pre_set <= 1000;
			474:pre_set <= 1000;
			475:pre_set <= 1000;
			476:pre_set <= 1000;
			477:pre_set <= 1000;
			478:pre_set <= 1000;
			479:pre_set <= 1000;
			480:pre_set <= 1000;
			481:pre_set <= 1000;
			482:pre_set <= 1000;
			483:pre_set <= 1000;
			484:pre_set <= 1000;
			485:pre_set <= 1000;
			486:pre_set <= 1000;
			487:pre_set <= 1000;
			488:pre_set <= 1000;
			489:pre_set <= 1000;
			490:pre_set <= 1000;
			491:pre_set <= 1000;
			492:pre_set <= 1000;
			493:pre_set <= 1000;

			494:pre_set <= M1_H;
			495:pre_set <= M1_H;
			496:pre_set <= 1000;
			497:pre_set <= 1000;
			498:pre_set <= 1000;
			499:pre_set <= 1000;
			500:pre_set <= 1000;
			501:pre_set <= 1000;
			502:pre_set <= 1000;
			503:pre_set <= 1000;
			504:pre_set <= 1000;
			505:pre_set <= 1000;
			506:pre_set <= 1000;
			507:pre_set <= 1000;
			508:pre_set <= 1000;
			509:pre_set <= 1000;
			510:pre_set <= 1000;
			511:pre_set <= 1000;
			512:pre_set <= 1000;
			513:pre_set <= 1000;
			514:pre_set <= 1000;
			515:pre_set <= 1000;
			516:pre_set <= 1000;
			517:pre_set <= 1000;
			518:pre_set <= 1000;
			519:pre_set <= 1000;
			520:pre_set <= 1000;
			521:pre_set <= 1000;
			522:pre_set <= 1000;
			523:pre_set <= 1000;
			524:pre_set <= 1000;
			525:pre_set <= 1000;
			526:pre_set <= 1000;
			527:pre_set <= 1000;
			528:pre_set <= 1000;
			529:pre_set <= 1000;
			530:pre_set <= 1000;
			531:pre_set <= 1000;
			532:pre_set <= 1000;
			533:pre_set <= 1000;
			534:pre_set <= 1000;
			535:pre_set <= 1000;
			536:pre_set <= 1000;
			537:pre_set <= 1000;
			538:pre_set <= 1000;
			539:pre_set <= 1000;
			540:pre_set <= 1000;
			541:pre_set <= 1000;
			542:pre_set <= 1000;
			543:pre_set <= 1000;
			544:pre_set <= 1000;
			545:pre_set <= 1000;
			546:pre_set <= 1000;
			547:pre_set <= 1000;
			548:pre_set <= 1000;

			549:pre_set <= M1_H;
			550:pre_set <= 1000;
			551:pre_set <= 1000;
			552:pre_set <= 1000;
			553:pre_set <= 1000;
			554:pre_set <= 1000;
			555:pre_set <= 1000;
			556:pre_set <= 1000;
			557:pre_set <= 1000;
			558:pre_set <= 1000;
			559:pre_set <= 1000;
			560:pre_set <= 1000;
			561:pre_set <= 1000;
			562:pre_set <= 1000;
			563:pre_set <= 1000;
			564:pre_set <= 1000;
			565:pre_set <= 1000;
			566:pre_set <= 1000;
			567:pre_set <= 1000;
			568:pre_set <= 1000;
			569:pre_set <= 1000;
			570:pre_set <= 1000;
			571:pre_set <= 1000;
			572:pre_set <= 1000;
			573:pre_set <= 1000;
			574:pre_set <= 1000;
			575:pre_set <= 1000;
			576:pre_set <= 1000;
			577:pre_set <= 1000;
			578:pre_set <= 1000;
			579:pre_set <= 1000;
			580:pre_set <= 1000;
			581:pre_set <= 1000;
			582:pre_set <= 1000;
			583:pre_set <= 1000;
			584:pre_set <= 1000;
			585:pre_set <= 1000;
			586:pre_set <= 1000;
			587:pre_set <= 1000;
			588:pre_set <= 1000;
			589:pre_set <= 1000;
			590:pre_set <= 1000;
			591:pre_set <= 1000;
			592:pre_set <= 1000;
			593:pre_set <= 1000;
			594:pre_set <= 1000;
			595:pre_set <= 1000;
			596:pre_set <= 1000;
			597:pre_set <= 1000;
			598:pre_set <= 1000;
			599:pre_set <= 1000;
			600:pre_set <= 1000;
			601:pre_set <= 1000;
			602:pre_set <= 1000;
			603:pre_set <= 1000;

			604:pre_set <= M7;
			605:pre_set <= M7;
			606:pre_set <= 1000;
			607:pre_set <= 1000;
			608:pre_set <= 1000;
			609:pre_set <= 1000;
			610:pre_set <= 1000;
			611:pre_set <= 1000;
			612:pre_set <= 1000;
			613:pre_set <= 1000;
			614:pre_set <= 1000;
			615:pre_set <= 1000;
			616:pre_set <= 1000;
			617:pre_set <= 1000;
			618:pre_set <= 1000;
			619:pre_set <= 1000;
			620:pre_set <= 1000;
			621:pre_set <= 1000;
			622:pre_set <= 1000;
			623:pre_set <= 1000;
			624:pre_set <= 1000;
			625:pre_set <= 1000;
			626:pre_set <= 1000;
			627:pre_set <= 1000;
			628:pre_set <= 1000;
			629:pre_set <= 1000;
			630:pre_set <= 1000;
			631:pre_set <= 1000;
			632:pre_set <= 1000;
			633:pre_set <= 1000;
			634:pre_set <= 1000;
			635:pre_set <= 1000;
			636:pre_set <= 1000;
			637:pre_set <= 1000;
			638:pre_set <= 1000;
			639:pre_set <= 1000;
			640:pre_set <= 1000;
			641:pre_set <= 1000;
			642:pre_set <= 1000;
			643:pre_set <= 1000;
			644:pre_set <= 1000;
			645:pre_set <= 1000;
			646:pre_set <= 1000;
			647:pre_set <= 1000;
			648:pre_set <= 1000;
			649:pre_set <= 1000;
			650:pre_set <= 1000;
			651:pre_set <= 1000;
			652:pre_set <= 1000;
			653:pre_set <= 1000;
			654:pre_set <= 1000;
			655:pre_set <= 1000;
			656:pre_set <= 1000;
			657:pre_set <= 1000;
			658:pre_set <= 1000;

			659:pre_set <= M7;
			660:pre_set <= M7;
			661:pre_set <= 1000;
			662:pre_set <= 1000;
			663:pre_set <= 1000;
			664:pre_set <= 1000;
			665:pre_set <= 1000;
			666:pre_set <= 1000;
			667:pre_set <= 1000;
			668:pre_set <= 1000;
			669:pre_set <= 1000;
			670:pre_set <= 1000;
			671:pre_set <= 1000;
			672:pre_set <= 1000;
			673:pre_set <= 1000;
			674:pre_set <= 1000;
			675:pre_set <= 1000;
			676:pre_set <= 1000;
			677:pre_set <= 1000;
			678:pre_set <= 1000;
			679:pre_set <= 1000;
			680:pre_set <= 1000;
			681:pre_set <= 1000;
			682:pre_set <= 1000;
			683:pre_set <= 1000;
			684:pre_set <= 1000;
			685:pre_set <= 1000;
			686:pre_set <= 1000;
			687:pre_set <= 1000;
			688:pre_set <= 1000;
			689:pre_set <= 1000;
			690:pre_set <= 1000;
			691:pre_set <= 1000;
			692:pre_set <= 1000;
			693:pre_set <= 1000;
			694:pre_set <= 1000;
			695:pre_set <= 1000;
			696:pre_set <= 1000;
			697:pre_set <= 1000;
			698:pre_set <= 1000;
			699:pre_set <= 1000;
			700:pre_set <= 1000;
			701:pre_set <= 1000;
			702:pre_set <= 1000;
			703:pre_set <= 1000;
			704:pre_set <= 1000;
			705:pre_set <= 1000;
			706:pre_set <= 1000;
			707:pre_set <= 1000;
			708:pre_set <= 1000;
			709:pre_set <= 1000;
			710:pre_set <= 1000;
			711:pre_set <= 1000;
			712:pre_set <= 1000;
			713:pre_set <= 1000;

			714:pre_set <= 1000;
			715:pre_set <= 1000;
			716:pre_set <= 1000;
			717:pre_set <= 1000;
			718:pre_set <= 1000;
			719:pre_set <= 1000;
			720:pre_set <= 1000;
			721:pre_set <= 1000;
			722:pre_set <= 1000;
			723:pre_set <= 1000;
			724:pre_set <= 1000;
			725:pre_set <= 1000;
			726:pre_set <= 1000;
			727:pre_set <= 1000;
			728:pre_set <= 1000;
			729:pre_set <= 1000;
			730:pre_set <= 1000;
			731:pre_set <= 1000;
			732:pre_set <= 1000;
			733:pre_set <= 1000;
			734:pre_set <= 1000;
			735:pre_set <= 1000;
			736:pre_set <= 1000;
			737:pre_set <= 1000;
			738:pre_set <= 1000;
			739:pre_set <= 1000;
			740:pre_set <= 1000;
			741:pre_set <= 1000;
			742:pre_set <= 1000;
			743:pre_set <= 1000;
			744:pre_set <= 1000;
			745:pre_set <= 1000;
			746:pre_set <= 1000;
			747:pre_set <= 1000;
			748:pre_set <= 1000;
			749:pre_set <= 1000;
			750:pre_set <= 1000;
			751:pre_set <= 1000;
			752:pre_set <= 1000;
			753:pre_set <= 1000;
			754:pre_set <= 1000;
			755:pre_set <= 1000;
			756:pre_set <= 1000;
			757:pre_set <= 1000;
			758:pre_set <= 1000;
			759:pre_set <= 1000;
			760:pre_set <= 1000;
			761:pre_set <= 1000;
			762:pre_set <= 1000;
			763:pre_set <= 1000;
			764:pre_set <= 1000;
			765:pre_set <= 1000;
			766:pre_set <= 1000;
			767:pre_set <= 1000;
			768:pre_set <= 1000;
			default:pre_set <= M1;
			endcase
		end 
	end 
	
	
	always @ (posedge clk or negedge rst_n)begin 
		if(~rst_n)begin 
			pre_div <= 0;
		end 
		else begin 
			pre_div <= pre_set>>1;
		end 
	end 
	
	//assign pre_div = pre_set>>1;//  /2; 设定占空比为50%

	always @ (posedge clk or negedge rst_n)begin 
		if(~rst_n)begin 
			buzzer_r <= 1'b1;
		end 
		else if(cnt0 < pre_div)begin 
			buzzer_r <= 1'b1;
		end 
		else begin 
			buzzer_r <= 1'b0;
		end 
	end 

	assign buzzer = buzzer_r;
	
endmodule	
