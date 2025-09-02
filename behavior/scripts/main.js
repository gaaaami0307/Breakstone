import * as server from '@minecraft/server';

//Example
class Example{
    cooldown = [0,0]
    mp=[0,0];
    SID = "weapon_checker";
    ID="rouge:"+this.SID;
    Name="ウェポンチェッカー";
    Rank=RankList[3];
    weapon=false;

    lore_item="武器の性能を確認できるという異質な武器。\nこの武器の所持・使用には所持制限は適用されない。";
    lore_skillname="性能確認";
    lore_skilluse="オフハンドに武器を持って右クリック";
    lore_skilllim="なし";
    lore_skillinfo="オフハンドに持った武器の性能をチェックする。\n\nてか、このテキストを見てる時点でわかってるじゃないか！";
    lore_skillname2="";
    lore_skilluse2="";
    lore_skilllim2="";
    lore_skillinfo2="";

    constructor(brand){
        this.brand=brand;
        this.lore="";
        this.lore=this.Rank+"§r Rank 【"+this.Name+"§r】\n"+this.lore_item;
        if(this.lore_skillname!="") this.lore+="\n\nスキル【"+this.lore_skillname+"§r】(§e"+this.lore_skilluse+"§r)\n使用条件:*"+this.lore_skilllim+"*\n"+this.lore_skillinfo;
        if(this.lore_skillname2!="") this.lore+="\n\nスキル【"+this.lore_skillname2+"§r】(§e"+this.lore_skilluse2+"§r)\n使用条件:*"+this.lore_skilllim2+"*\n"+this.lore_skillinfo2;
    }

    skill(ev){
        const pl = ev.source;
        //武器所持数制限
        if(pl.hasTag("limit_has_weapons")==false||!this.weapon){
            //クールダウン
            if(pl.getItemCooldown(this.SID)==0){
                if(pl.isOnGround){ 
                    if(pl.isSprinting){
                        if(pl.isSneaking){ //地上ダッシュスニーク
                            this.skill1(ev);
                        }else{ //地上ダッシュ立ち
                            this.skill1(ev);
                        }
                    }else{
                        if(pl.isSneaking){ //地上歩きスニーク
                            this.skill1(ev);
                        }else{ //地上歩き立ち
                            this.skill1(ev);
                        }
                    }
                }else{
                    if(pl.isSprinting){
                        if(pl.isSneaking){ //空中ダッシュスニーク
                            this.skill1(ev);
                        }else{ //空中ダッシュ立ち
                            this.skill1(ev);
                        }
                    }else{
                        if(pl.isSneaking){ //空中歩きスニーク
                            this.skill1(ev);
                        }else{ //空中歩き立ち
                            this.skill1(ev);
                        }
                    }
                }
            }
        }else{
            limit_weapon_msg(pl,this.SID);
        }
    }

    skill1(ev){
        const pl = ev.source;
        //mp制限
        if(pl.addLevels(0)>=this.mp[0]){
            pl.runCommandAsync("execute as @s at @s run function item/"+this.SID+"1");
            pl.startItemCooldown(this.SID,this.cooldown[0]*20);
            pl.addLevels(-this.mp[0]);
        }
        else{
            lack_mp_msg(pl,this.SID);
        }

    }

    skill2(ev){
        const pl = ev.source;
        //mp制限
        if(pl.addLevels(0)>=this.mp[1]){
            pl.runCommandAsync("execute as @s at @s run function item/"+this.SID+"2");
            pl.startItemCooldown(this.SID,this.cooldown[1]*20);
            pl.addLevels(-this.mp[1]);
        }
        else{
            lack_mp_msg(pl,this.SID);
        }

    }
}

//----------------------------------------------------Script

const weapons=[
];

//ここにスクリプトを記述
server.world.afterEvents.itemUse.subscribe(ev => {
    let item = ev.itemStack.typeId;
    for (const weapon of weapons){
        if(item == weapon.ID){
            weapon.skill(ev);
        }
    }
})

let display_name;
let display_rank;
let display_cooldown;

server.system.runInterval(ev => {

    //-----------------------
    //---各プレイヤー処理-----

    for (const player of server.world.getAllPlayers()){
      if(player.isSneaking){
        player.runCommandAsync("scoreboard players add @s sneak_time 1")
      }else{
        player.runCommandAsync("scoreboard players set @s sneak_time 0")
      }
   }

   //---------------------
   //---エンティティ処理----

   const entities=[];

   const breakstoneentities=["maker","fac_stick","hole","fac_correct","fac_attack"];

   const breakstonefunctions=["block_upgrade","upgrade_behavior","artifact"];

   const op_player = server.world.getAllPlayers()[0];
   for (const entity of entities){
    op_player.runCommandAsync("execute as @e[type=rouge:"+entity+"] at @s run function entity/"+entity);
   }

   //breakstone
   for (const entity of breakstoneentities){
    op_player.runCommandAsync("execute as @e[type=brst:"+entity+"] at @s run function breakstone/entity/"+entity);
   }

   for (const func of breakstonefunctions){
    op_player.runCommandAsync("function breakstone/"+func);
   }
})

server.world.afterEvents.playerBreakBlock.subscribe(event => {
  const brokenId = event.brokenBlockPermutation.type.id;
  const player = event.player;
  const inv = player.getComponent("inventory").container;
  const slot = Number(player.selectedSlotIndex);

  const item = inv.getItem(slot);
  //console.log("ID:" + brokenId);

  //---ブロック処理
  if(brokenId === "brst:luminite_ore"){
    const xp = Math.floor(Math.random() * 4) + 13;
    for (let i = 0; i < xp; i++) {
      event.dimension.spawnEntity("minecraft:xp_orb", event.block.location);
    }
  }

  if (!item) return;

  const originalTools=["brst:stick_pickaxe","brst:heavystone_pickaxe","brst:heavyiron_pickaxe","brst:heavydiamond_pickaxe","brst:abyss_pickaxe","brst:luminite_pickaxe","brst:legend_pickaxe"];

  if (originalTools.includes(item.typeId)) {
    const durability = item.getComponent("minecraft:durability");
    //console.log("耐久値:" + durability.damage);
    durability.damage++;
    if (durability.damage >= durability.maxDurability) {
      player.playSound("random.break", {
        volume: 1.0,
        pitch: 1.0
      });
      inv.setItem(slot, null);
    } else {
      inv.setItem(slot, item);
    }
  }

});