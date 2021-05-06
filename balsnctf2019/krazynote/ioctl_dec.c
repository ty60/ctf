
/* WARNING: Could not reconcile some variable overlaps */

#define ulong unsigned long
#define byte unsigned char
#define uint unsigned int

undefined8 UndefinedFunction_00100040(undefined8 param_1,uint request)

{
  byte bVar1;
  ulong *puVar2;
  undefined8 uVar3;
  undefined8 *puVar4;
  ulong uVar5;
  undefined8 uVar6;
  ulong uVar7;
  long lVar8;
  undefined8 extraout_RDX;
  uint uVar9;
  undefined8 *puVar10;
  long in_GS_OFFSET;
  byte bVar11;
  ulong cmd;
  ulong uStack312;
  undefined8 uStack304;
  undefined8 uStack296;
  long lStack40;
  
  bVar11 = 0;
  __fentry__();
  lVar8 = 0x20;
  cmd = 0;
  uStack312 = 0;
  lStack40 = *(long *)(in_GS_OFFSET + 0x28);
  uStack304 = 0;
  puVar4 = (undefined8 *)&uStack296;
  while (lVar8 != 0) {
    lVar8 = lVar8 + -1;
    *puVar4 = 0;
    puVar4 = puVar4 + (ulong)bVar11 * 0x1ffffffffffffffe + 1;
  }
  lVar8 = _copy_from_user(&cmd,extraout_RDX,0x18); // Copy command from user
  uVar3 = uStack304;
  if (lVar8 == 0) { // copy_from_user success
    uVar7 = uStack312 & 0xff;
    cmd = (ulong)((uint)uStack320 & 0xf);
    uStack312 = uVar7;
    if (request == 0xffffff01) {
      lVar8 = (&DAT_00102b60)[cmd];
      if (lVar8 != 0) {
        bVar1 = *(byte *)(lVar8 + 8);
        uVar7 = (ulong)bVar1;
        puVar4 = (undefined8 *)(page_offset_base + *(long *)(lVar8 + 0x10));
        __check_object_size(&uStack296,uVar7,0);
        _copy_from_user(&uStack296,uVar3,uVar7);
        if (bVar1 != 0) {
          puVar2 = (ulong *)(&DAT_00102b60)[cmd];
          uVar5 = 0;
          do {
            *(ulong *)((long)&uStack296 + uVar5) = *(ulong *)((long)&uStack296 + uVar5) ^ *puVar2;
            uVar5 = uVar5 + 8;
          } while (uVar5 < uVar7);
          if (7 < bVar1) {
            *puVar4 = CONCAT44(uStack296._4_4_,(uint)uStack296);
            *(undefined8 *)((long)puVar4 + ((ulong)bVar1 - 8)) =
                 *(undefined8 *)((long)&uStack304 + (ulong)bVar1);
            puVar10 = (undefined8 *)
                      ((long)puVar4 - (long)(undefined8 *)((ulong)(puVar4 + 1) & 0xfffffffffffffff8)
                      );
            uVar6 = 0;
            uVar7 = (ulong)((int)puVar10 + (uint)bVar1 >> 3);
            puVar10 = (undefined8 *)((long)&uStack296 - (long)puVar10);
            puVar4 = (undefined8 *)((ulong)(puVar4 + 1) & 0xfffffffffffffff8);
            while (uVar7 != 0) {
              uVar7 = uVar7 - 1;
              *puVar4 = *puVar10;
              puVar10 = puVar10 + (ulong)bVar11 * 0x1ffffffffffffffe + 1;
              puVar4 = puVar4 + (ulong)bVar11 * 0x1ffffffffffffffe + 1;
            }
            goto LAB_00100159;
          }
        }
        if ((bVar1 & 4) != 0) {
          *(uint *)puVar4 = (uint)uStack296;
          *(undefined4 *)((long)puVar4 + (uVar7 - 4)) =
               *(undefined4 *)((long)&uStack304 + uVar7 + 4);
          uVar6 = 0;
          goto LAB_00100159;
        }
        if (bVar1 != 0) {
          *(undefined *)puVar4 = (undefined)uStack296;
          if ((bVar1 & 2) != 0) {
            *(undefined2 *)((long)puVar4 + (uVar7 - 2)) =
                 *(undefined2 *)((long)&uStack304 + uVar7 + 6);
          }
        }
      }
      uVar6 = 0;
      goto LAB_00100159;
    }
    if (request < 0xffffff02) {
      if (request == 0xffffff00) {
        cmd = 0xffffffffffffffff;
        lVar8 = 0;
        do {
          uVar5 = SEXT48((int)lVar8);
          if ((&DAT_00102b60)[lVar8] == 0) {
            *(undefined8 **)(&DAT_00102b60 + uVar5) = DAT_00100b40;
            DAT_00100b40[1] = uVar7;
            puVar4 = DAT_00100b40 + 3;
            *DAT_00100b40 =
                 *(undefined8 *)(*(long *)(*(long *)(&current_task + in_GS_OFFSET) + 0x7e8) + 0x50);
            DAT_00100b40 = (undefined8 *)((long)puVar4 + uVar7);
            cmd = uVar5;
            if (0x100 < uVar7) {
              __warn_printk("Buffer overflow detected (%d < %lu)!\n",0x100,uVar7);
              do {
                invalidInstructionException();
              } while( true );
            }
            __check_object_size(&uStack296,uVar7,0);
            _copy_from_user(&uStack296,uVar3,uVar7);
            puVar2 = (ulong *)(&DAT_00102b60)[cmd];
            if (uStack312 != 0) {
              uVar7 = 0;
              do {
                *(ulong *)((long)&uStack296 + uVar7) =
                     *(ulong *)((long)&uStack296 + uVar7) ^ *puVar2;
                uVar7 = uVar7 + 8;
              } while (uVar7 < uStack312);
            }
            memcpy(puVar4,&uStack296);
            uVar6 = 0;
            *(undefined8 **)(puVar2 + 2) = (undefined8 *)((long)puVar4 - page_offset_base);
            goto LAB_00100159;
          }
          lVar8 = lVar8 + 1;
        } while (lVar8 != 0x10);
        goto LAB_00100152;
      }
    }
    else {
      if (request == 0xffffff02) {
        puVar2 = (ulong *)(&DAT_00102b60)[cmd];
        uVar6 = 0;
        if (puVar2 != (ulong *)0x0) {
          bVar1 = *(byte *)(puVar2 + 1);
          uVar7 = (ulong)bVar1;
          puVar4 = (undefined8 *)(page_offset_base + puVar2[2]);
          if (bVar1 < 8) {
            uVar9 = (uint)bVar1;
            if ((bVar1 & 4) == 0) {
              if ((bVar1 != 0) &&
                 (uStack296._0_4_ = (uint)uStack296 & 0xffffff00 | (uint)*(byte *)puVar4,
                 (bVar1 & 2) != 0)) {
                *(undefined2 *)((long)&uStack304 + (ulong)uVar9 + 6) =
                     *(undefined2 *)((long)puVar4 + ((ulong)uVar9 - 2));
              }
            }
            else {
              uStack296._0_4_ = *(uint *)puVar4;
              *(undefined4 *)((long)&uStack304 + (ulong)uVar9 + 4) =
                   *(undefined4 *)((long)puVar4 + ((ulong)uVar9 - 4));
            }
          }
          else {
            uVar5 = (ulong)((uint)bVar1 - 1 >> 3);
            *(undefined8 *)((long)&uStack304 + (ulong)bVar1) =
                 *(undefined8 *)((long)puVar4 + ((ulong)bVar1 - 8));
            puVar10 = (undefined8 *)&uStack296;
            while (uVar5 != 0) {
              uVar5 = uVar5 - 1;
              *puVar10 = *puVar4;
              puVar4 = puVar4 + (ulong)bVar11 * 0x1ffffffffffffffe + 1;
              puVar10 = puVar10 + (ulong)bVar11 * 0x1ffffffffffffffe + 1;
            }
          }
          if (bVar1 != 0) {
            uVar5 = 0;
            do {
              *(ulong *)((long)&uStack296 + uVar5) = *(ulong *)((long)&uStack296 + uVar5) ^ *puVar2;
              uVar5 = uVar5 + 8;
            } while (uVar5 < uVar7);
          }
          __check_object_size(&uStack296,uVar7,1);
          _copy_to_user(uVar3,&uStack296,uVar7);
          uVar6 = 0;
        }
        goto LAB_00100159;
      }
      puVar4 = &DAT_00102b60;
      if (request == 0xffffff03) {
        do {
          *puVar4 = 0;
          puVar4 = puVar4 + 1;
        } while (puVar4 != (undefined8 *)0x102be0);
        lVar8 = 0x400;
        uVar6 = 0;
        DAT_00100b40 = &DAT_00100b60;
        puVar4 = &DAT_00100b60;
        while (lVar8 != 0) {
          lVar8 = lVar8 + -1;
          *puVar4 = 0;
          puVar4 = puVar4 + (ulong)bVar11 * 0x1ffffffffffffffe + 1;
        }
        goto LAB_00100159;
      }
    }
    uVar6 = 0xffffffffffffffe7;
  }
  else {
LAB_00100152:
    uVar6 = 0xfffffffffffffff2;
  }
LAB_00100159:
  if (lStack40 != *(long *)(in_GS_OFFSET + 0x28)) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar6;
}

