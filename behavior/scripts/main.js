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
  .toggle("効果音", false);

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

function spannerUse(ev){
  const player = ev.source;
  player.runCommandAsync("execute if entity @e[type=brst:fac_attack,r=5,c=1] run tag @s add setting_attack");
  player.runCommandAsync("execute at @e[type=brst:fac_attack,r=5,c=1] run particle minecraft:totem_particle ~~0.5~");
}

//----------------------------------------------------Script

//アイテム使用
server.world.afterEvents.itemUse.subscribe(ev => {
    let item = ev.itemStack.typeId;
    if(item == "brst:spanner"){
      spannerUse(ev);
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