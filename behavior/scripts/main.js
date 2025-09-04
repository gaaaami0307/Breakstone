import * as server from '@minecraft/server';
import { ModalFormData } from "@minecraft/server-ui";

//----------------------------------------------------function

// Fac_attackの調整
function settingOfFacAttack(player){

  player.runCommandAsync("tag @s remove setting_attack");

  const form = new ModalFormData()
  .title("自動攻撃装置の設定")
  .slider("攻撃周期(秒)", 1, 30, 1, 10)
  .slider("ダメージ(ハート)", 1, 10, 1, 3)
  .toggle("効果音", true);

  form.show(player).then(res=>{
    if(!res.canceled){
      player.runCommandAsync("execute unless entity @e[type=brst:fac_attack,r=5] run tellraw @s { \"rawtext\": [{\"text\":\"§c設定に失敗しました\"}] }");
      player.runCommandAsync("execute as @e[type=brst:fac_attack,r=5,c=1] at @s run scoreboard players set @s arg1 " + Math.floor(res.formValues[0] * 20));
      player.runCommandAsync("execute as @e[type=brst:fac_attack,r=5,c=1] at @s run scoreboard players set @s arg2 " + Math.floor(res.formValues[1] * 2));
      player.runCommandAsync("execute as @e[type=brst:fac_attack,r=5,c=1] at @s run particle minecraft:totem_particle ~~0.5~");
      player.runCommandAsync("execute as @e[type=brst:fac_attack,r=5,c=1] at @s run playsound random.orb @a ~~~ 1 1");
      player.runCommandAsync("execute if entity @e[type=brst:fac_attack,r=5,c=1] run tellraw @s { \"rawtext\": [{\"text\":\"§a設定しました！\"}] }");

      if(res.formValues[2]) player.runCommandAsync("execute as @e[type=brst:fac_attack,r=5,c=1] at @s run tag @s add sound");
      else player.runCommandAsync("execute as @e[type=brst:fac_attack,r=5,c=1] at @s run tag @s remove sound");
    }
  })

}

// Fac_correctの調整
function settingOfFacCorrect(player){

  player.runCommandAsync("tag @s remove setting_correct");

  const form = new ModalFormData()
  .title("アイテム収集装置の設定")
  .slider("起動周期(秒)", 1, 30, 1, 10)
  .slider("収集範囲(半径)", 5, 30, 5, 10)
  .toggle("効果音", true);

  form.show(player).then(res=>{
    if(!res.canceled){
      player.runCommandAsync("execute unless entity @e[type=brst:fac_correct,r=5] run tellraw @s { \"rawtext\": [{\"text\":\"§c設定に失敗しました\"}] }");
      player.runCommandAsync("execute as @e[type=brst:fac_correct,r=5,c=1] at @s run scoreboard players set @s arg1 " + Math.floor(res.formValues[0] * 20));
      player.runCommandAsync("execute as @e[type=brst:fac_correct,r=5,c=1] at @s run scoreboard players set @s arg2 " + Math.floor(res.formValues[1]));
      player.runCommandAsync("execute as @e[type=brst:fac_correct,r=5,c=1] at @s run particle minecraft:totem_particle ~~0.5~");
      player.runCommandAsync("execute as @e[type=brst:fac_correct,r=5,c=1] at @s run playsound random.orb @a ~~~ 1 1");
      player.runCommandAsync("execute if entity @e[type=brst:fac_correct,r=5,c=1] run tellraw @s { \"rawtext\": [{\"text\":\"§a設定しました！\"}] }");

      if(res.formValues[2]) player.runCommandAsync("execute as @e[type=brst:fac_correct,r=5,c=1] at @s run tag @s add sound");
      else player.runCommandAsync("execute as @e[type=brst:fac_correct,r=5,c=1] at @s run tag @s remove sound");
    }
  })

}

// Fac_crystalの調整
function settingOfFacCrystal(player){

  player.runCommandAsync("tag @s remove setting_crystal");

  const form = new ModalFormData()
  .title("結晶化装置の設定")
  .slider("起動周期(秒)", 0.5, 30, 0.5, 5)
  .slider("収集範囲(半径)", 5, 30, 5, 10)
  .toggle("効果音", true);

  form.show(player).then(res=>{
    if(!res.canceled){
      player.runCommandAsync("execute unless entity @e[type=brst:fac_crystal,r=5] run tellraw @s { \"rawtext\": [{\"text\":\"§c設定に失敗しました\"}] }");
      player.runCommandAsync("execute as @e[type=brst:fac_crystal,r=5,c=1] at @s run scoreboard players set @s arg1 " + Math.floor(res.formValues[0] * 20));
      player.runCommandAsync("execute as @e[type=brst:fac_crystal,r=5,c=1] at @s run scoreboard players set @s arg2 " + Math.floor(res.formValues[1]));
      player.runCommandAsync("execute as @e[type=brst:fac_crystal,r=5,c=1] at @s run particle minecraft:totem_particle ~~0.5~");
      player.runCommandAsync("execute as @e[type=brst:fac_crystal,r=5,c=1] at @s run playsound random.orb @a ~~~ 1 1");
      player.runCommandAsync("execute if entity @e[type=brst:fac_crystal,r=5,c=1] run tellraw @s { \"rawtext\": [{\"text\":\"§a設定しました！\"}] }");

      if(res.formValues[2]) player.runCommandAsync("execute as @e[type=brst:fac_crystal,r=5,c=1] at @s run tag @s add sound");
      else player.runCommandAsync("execute as @e[type=brst:fac_crystal,r=5,c=1] at @s run tag @s remove sound");
    }
  })

}

//使用-スパナ
function spannerUse(ev){
  const player = ev.source;
  player.runCommandAsync("execute as @e[tag=can_spanner,r=5,c=1] as @s[type=brst:fac_attack] run tag @p add setting_attack");
  player.runCommandAsync("execute as @e[tag=can_spanner,r=5,c=1] as @s[type=brst:fac_attack] at @s run particle minecraft:totem_particle ~~0.5~");
  player.runCommandAsync("execute as @e[tag=can_spanner,r=5,c=1] as @s[type=brst:fac_correct] run tag @p add setting_correct");
  player.runCommandAsync("execute as @e[tag=can_spanner,r=5,c=1] as @s[type=brst:fac_correct] at @s run particle minecraft:totem_particle ~~0.5~");
  player.runCommandAsync("execute as @e[tag=can_spanner,r=5,c=1] as @s[type=brst:fac_crystal] run tag @p add setting_crystal");
  player.runCommandAsync("execute as @e[tag=can_spanner,r=5,c=1] as @s[type=brst:fac_crystal] at @s run particle minecraft:totem_particle ~~0.5~");
  player.runCommandAsync("execute unless entity @e[tag=can_spanner,r=5,c=1] run tellraw @s { \"rawtext\": [{\"text\":\"§7設定対象がいません。\"}] }");
}

//使用-経験値の結晶
function xpCrystalUse(ev){
  const player = ev.source;
  player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=1..}] at @s run xp 1 @s");
  player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=1..}] at @s run playsound random.orb @s ~~~ 0.7 1");
  player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=1..}] at @s run clear @s brst:xp_crystal 0 1");

  if (player.isSneaking){
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=2048..}] at @s run xp 2048 @s");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=2048..}] at @s run clear @s brst:xp_crystal 0 2048");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=1024..}] at @s run xp 1024 @s");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=1024..}] at @s run clear @s brst:xp_crystal 0 1024");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=512..}] at @s run xp 512 @s");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=512..}] at @s run clear @s brst:xp_crystal 0 512");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=256..}] at @s run xp 256 @s");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=256..}] at @s run clear @s brst:xp_crystal 0 256");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=128..}] at @s run xp 128 @s");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=128..}] at @s run clear @s brst:xp_crystal 0 128");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=64..}] at @s run xp 64 @s");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=64..}] at @s run clear @s brst:xp_crystal 0 64");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=32..}] at @s run xp 32 @s");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=32..}] at @s run clear @s brst:xp_crystal 0 32");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=16..}] at @s run xp 16 @s");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=16..}] at @s run clear @s brst:xp_crystal 0 16");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=8..}] at @s run xp 8 @s");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=8..}] at @s run clear @s brst:xp_crystal 0 8");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=4..}] at @s run xp 4 @s");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=4..}] at @s run clear @s brst:xp_crystal 0 4");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=2..}] at @s run xp 2 @s");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=2..}] at @s run clear @s brst:xp_crystal 0 2");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=1..}] at @s run xp 1 @s");
    player.runCommandAsync("execute as @s[hasitem={item=brst:xp_crystal,quantity=1..}] at @s run clear @s brst:xp_crystal 0 1");
  }
}
//----------------------------------------------------Script

//アイテム使用
server.world.afterEvents.itemUse.subscribe(ev => {
    let item = ev.itemStack.typeId;
    if(item == "brst:spanner"){
      spannerUse(ev);
    }
    if(item == "brst:xp_crystal"){
      xpCrystalUse(ev);
    }
})

//食す
server.world.afterEvents.itemCompleteUse.subscribe(ev =>{
    let item = ev.itemStack.typeId;
    let player = ev.source;
    if(item == "brst:candy"){
      player.runCommandAsync("effect @s regeneration 5 3");
    }
})

server.system.runInterval(ev => {

    //-----------------------
    //---各プレイヤー処理-----

    for (const player of server.world.getAllPlayers()){
      if(player.isSneaking){
        player.runCommandAsync("scoreboard players add @s sneak_time 1")
      }else{
        player.runCommandAsync("scoreboard players set @s sneak_time 0")
      }

    //-------------タグ処理

    if (player.hasTag("setting_attack")) settingOfFacAttack(player);
    if (player.hasTag("setting_correct")) settingOfFacCorrect(player);
    if (player.hasTag("setting_crystal")) settingOfFacCrystal(player);


   }

   //---------------------
   //---エンティティ処理----

   const entities=[];

   const breakstoneentities=["maker","fac_stick","hole","fac_correct","fac_attack","fac_crystal"];

   const breakstonefunctions=["block_upgrade","upgrade_behavior","artifact","add_tag"];

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