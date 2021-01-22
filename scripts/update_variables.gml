/// update_variables
switch(argument0){
    case "initprev":
        global.itemPrev = array_clone(global.item);
        global.itemstakenPrev = global.itemstaken;
        global.metdeadPrev = array_clone(global.metdead);
        global.eventPrev = array_clone(global.event);
        global.monstersleftPrev = global.monstersleft;
        global.maxmissilesPrev = global.maxmissiles;
        global.maxsmissilesPrev = global.maxsmissiles;
        global.maxpbombsPrev = global.maxpbombs;
        global.maxhealthPrev = global.maxhealth;
        global.playerhealthPrev = global.playerhealth;
        global.morphballPrev = global.morphball;
        global.jumpballPrev = global.jumpball;
        global.powergripPrev = global.powergrip;
        global.spacejumpPrev = global.spacejump;
        global.screwattackPrev = global.screwattack;
        global.hijumpPrev = global.hijump;
        global.spiderballPrev = global.spiderball;
        global.speedboosterPrev = global.speedbooster;
        global.bombPrev = global.bomb;
        global.ibeamPrev = global.ibeam;
        global.wbeamPrev = global.wbeam;
        global.pbeamPrev = global.pbeam;
        global.sbeamPrev = global.sbeam;
        global.cbeamPrev = global.cbeam;
        global.missilesPrev = global.missiles;
        global.smissilesPrev = global.smissiles;
        global.pbombsPrev = global.pbombs;
        global.etanksPrev = global.etanks;
        global.mtanksPrev = global.mtanks;
        global.stanksPrev = global.stanks;
        global.ptanksPrev = global.ptanks;
        global.currentsuitPrev = global.currentsuit;
        global.monstersareaPrev = global.monstersarea;
        global.lavastatePrev = global.lavastate;
        global.dmapPrev = array_clone(global.dmap);
        break;
    case "updateprev":
        for(var i=0; i<ds_grid_height(global.onlineReceived); i++){
            if(global.onlineReceived[# 2, i] != -1){
                if(global.onlineReceived[# 2, i] == 24 && global.receivedClientID != global.clientID){
                    global.missiles = global.onlineReceived[# 1, i];
                    if(global.missilesPrev != global.missiles){
                        global.missilesPrev = global.missiles;
                    }
                } else if(global.onlineReceived[# 2, i] == 24 && global.receivedClientID == global.clientID){
                    global.missilesPrev = global.missiles;
                }
                
                if(global.onlineReceived[# 2, i] == 25 && global.receivedClientID != global.clientID){
                    global.smissiles = global.onlineReceived[# 1, i];
                    if(global.smissilesPrev != global.smissiles){
                        global.smissilesPrev = global.smissiles;
                    }
                } else if(global.onlineReceived[# 2, i] == 25 && global.receivedClientID == global.clientID){
                    global.smissilesPrev = global.smissiles;
                }
                
                if(global.onlineReceived[# 2, i] == 2 && global.receivedClientID != global.clientID){
                    global.itemstaken = global.onlineReceived[# 1, i];
                    if(global.itemstakenPrev != global.itemstaken){
                        global.itemstakenPrev = global.itemstaken;
                    }
                } else if(global.onlineReceived[# 2, i] == 2 && global.receivedClientID == global.clientID){
                    global.itemstakenPrev = global.itemstaken;
                }
                
                if(global.onlineReceived[# 2, i] == 5 && global.receivedClientID != global.clientID){
                    global.maxmissiles = global.onlineReceived[# 1, i];
                    if(global.maxmissilesPrev != global.maxmissiles){
                        global.maxmissilesPrev = global.maxmissiles;
                    }
                } else if(global.onlineReceived[# 2, i] == 5 && global.receivedClientID == global.clientID){
                    global.maxmissilesPrev = global.maxmissiles;
                }
                
                if(global.onlineReceived[# 2, i] == 6 && global.receivedClientID != global.clientID){
                    global.maxsmissiles = global.onlineReceived[# 1, i];
                    if(global.maxsmissilesPrev != global.maxsmissiles){
                        global.maxsmissilesPrev = global.maxsmissiles;
                    }
                } else if(global.onlineReceived[# 2, i] == 6 && global.receivedClientID == global.clientID){
                    global.maxsmissilesPrev = global.maxsmissiles;
                }
                
                if(global.onlineReceived[# 2, i] == 7 && global.receivedClientID != global.clientID){
                    global.maxpbombs = global.onlineReceived[# 1, i];
                    if(global.maxpbombsPrev != global.maxpbombs){
                        global.maxpbombsPrev = global.maxpbombs;
                    }
                } else if(global.onlineReceived[# 2, i] == 7 && global.receivedClientID == global.clientID){
                    global.maxpbombsPrev = global.maxpbombs;
                }
                
                if(global.onlineReceived[# 2, i] == 8 && global.receivedClientID != global.clientID){
                    global.maxhealth = global.onlineReceived[# 1, i];
                    if(global.maxhealthPrev != global.maxhealth){
                        global.maxhealthPrev = global.maxhealth;
                    }
                } else if(global.onlineReceived[# 2, i] == 8 && global.receivedClientID == global.clientID){
                    global.maxhealthPrev = global.maxhealth;
                }
                
                if(global.onlineReceived[# 2, i] == 9 && global.receivedClientID != global.clientID){
                    global.playerhealth = global.onlineReceived[# 1, i];
                    if(global.playerhealthPrev != global.playerhealth){
                        global.playerhealthPrev = global.playerhealth;
                    }
                } else if(global.onlineReceived[# 2, i] == 9 && global.receivedClientID == global.clientID){
                    global.playerhealthPrev = global.playerhealth;
                }
                
                if(global.onlineReceived[# 2, i] == 10 && global.receivedClientID != global.clientID){
                    global.morphball = global.onlineReceived[# 1, i];
                    if(global.morphballPrev != global.morphball){
                        global.morphballPrev = global.morphball;
                    }
                    if(global.morphball == 1){
                        popup_text("Morph enabled");
                    } else {
                        popup_text("Morph disabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 10 && global.receivedClientID == global.clientID){
                    global.morphballPrev = global.morphball;
                }
                
                if(global.onlineReceived[# 2, i] == 11 && global.receivedClientID != global.clientID){
                    global.jumpball = global.onlineReceived[# 1, i];
                    if(global.jumpballPrev != global.jumpball){
                        global.jumpballPrev = global.jumpball;
                    }
                    if(global.jumpball == 1){
                        popup_text("Springball enabled");
                    } else {
                        popup_text("Springball disabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 11 && global.receivedClientID == global.clientID){
                    global.jumpballPrev = global.jumpball;
                }
                
                if(global.onlineReceived[# 2, i] == 12 && global.receivedClientID != global.clientID){
                    global.powergrip = global.onlineReceived[# 1, i];
                    if(global.powergripPrev != global.powergrip){
                        global.powergripPrev = global.powergrip;
                    }
                    if(global.powergrip == 1){
                        popup_text("Powergrip enabled");
                    } else {
                        popup_text("Powergrip disabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 12 && global.receivedClientID == global.clientID){
                    global.powergripPrev = global.powergrip;
                }
                
                if(global.onlineReceived[# 2, i] == 13 && global.receivedClientID != global.clientID){
                    global.spacejump = global.onlineReceived[# 1, i];
                    if(global.spacejumpPrev != global.spacejump){
                        global.spacejumpPrev = global.spacejump;
                    }
                    if(global.spacejump == 1){
                        popup_text("Spacejump enabled");
                    } else {
                        popup_text("Spacejump disabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 13 && global.receivedClientID == global.clientID){
                    global.spacejumpPrev = global.spacejump;
                }
                
                if(global.onlineReceived[# 2, i] == 14 && global.receivedClientID != global.clientID){
                    global.screwattack = global.onlineReceived[# 1, i];
                    if(global.screwattackPrev != global.screwattack){
                        global.screwattackPrev = global.screwattack;
                    }
                    if(global.screwattack == 1){
                        popup_text("Screwattack enabled");
                    } else {
                        popup_text("Screwattack disabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 14 && global.receivedClientID == global.clientID){
                    global.screwattackPrev = global.screwattack;
                }
                
                if(global.onlineReceived[# 2, i] == 15 && global.receivedClientID != global.clientID){
                    global.hijump = global.onlineReceived[# 1, i];
                    if(global.hijumpPrev != global.hijump){
                        global.hijumpPrev = global.hijump;
                    }
                    if(global.hijump == 1){
                        popup_text("Hi jump enabled");
                    } else {
                        popup_text("Hi jump disabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 15 && global.receivedClientID == global.clientID){
                    global.hijumpPrev = global.hijump;
                }
                
                if(global.onlineReceived[# 2, i] == 16 && global.receivedClientID != global.clientID){
                    global.spiderball = global.onlineReceived[# 1, i];
                    if(global.spiderballPrev != global.spiderball){
                        global.spiderballPrev = global.spiderball;
                    }
                    if(global.spiderball == 1){
                        popup_text("Spiderball enabled");
                    } else {
                        popup_text("Spiderball disabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 16 && global.receivedClientID == global.clientID){
                    global.spiderballPrev = global.spiderball;
                }
                
                if(global.onlineReceived[# 2, i] == 17 && global.receivedClientID != global.clientID){
                    global.speedbooster = global.onlineReceived[# 1, i];
                    if(global.speedboosterPrev != global.speedbooster){
                        global.speedboosterPrev = global.speedbooster;
                    }
                    if(global.speedbooster == 1){
                        popup_text("Speedbooster enabled");
                    } else {
                        popup_text("Speedbooster disabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 17 && global.receivedClientID == global.clientID){
                    global.speedboosterPrev = global.speedbooster;
                }
                
                if(global.onlineReceived[# 2, i] == 18 && global.receivedClientID != global.clientID){
                    global.bomb = global.onlineReceived[# 1, i];
                    if(global.bombPrev != global.bomb){
                        global.bombPrev = global.bomb;
                    }
                    if(global.bomb == 1){
                        popup_text("Bombs enabled");
                    } else {
                        popup_text("Bombs disabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 18 && global.receivedClientID == global.clientID){
                    global.bombPrev = global.bomb;
                }
                
                if(global.onlineReceived[# 2, i] == 19 && global.receivedClientID != global.clientID){
                    global.ibeam = global.onlineReceived[# 1, i];
                    if(global.ibeamPrev != global.ibeam){
                        global.ibeamPrev = global.ibeam;
                    }
                    if(global.ibeam == 1){
                        popup_text("Ice beam enabled");
                    } else {
                        popup_text("Ice beam disabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 19 && global.receivedClientID == global.clientID){
                    global.ibeamPrev = global.ibeam;
                }
                
                if(global.onlineReceived[# 2, i] == 20 && global.receivedClientID != global.clientID){
                    global.wbeam = global.onlineReceived[# 1, i];
                    if(global.wbeamPrev != global.wbeam){
                        global.wbeamPrev = global.wbeam;
                    }
                    if(global.wbeam == 1){
                        popup_text("Wave beam enabled");
                    } else {
                        popup_text("Wave beam disabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 20 && global.receivedClientID == global.clientID){
                    global.wbeamPrev = global.wbeam;
                }
                
                if(global.onlineReceived[# 2, i] == 21 && global.receivedClientID != global.clientID){
                    global.pbeam = global.onlineReceived[# 1, i];
                    if(global.pbeamPrev != global.pbeam){
                        global.pbeamPrev = global.pbeam;
                    }
                    if(global.pbeam == 1){
                        popup_text("Plasma beam enabled");
                    } else {
                        popup_text("Plasma beam disabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 21 && global.receivedClientID == global.clientID){
                    global.pbeamPrev = global.pbeam;
                }
                
                if(global.onlineReceived[# 2, i] == 22 && global.receivedClientID != global.clientID){
                    global.sbeam = global.onlineReceived[# 1, i];
                    if(global.sbeamPrev != global.sbeam){
                        global.sbeamPrev = global.sbeam;
                    }
                    if(global.sbeam == 1){
                        popup_text("Spazer beam enabled");
                    } else {
                        popup_text("Spazer beam disabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 22 && global.receivedClientID == global.clientID){
                    global.sbeamPrev = global.sbeam;
                }
                
                if(global.onlineReceived[# 2, i] == 23 && global.receivedClientID != global.clientID){
                    global.cbeam = global.onlineReceived[# 1, i];
                    if(global.cbeamPrev != global.cbeam){
                        global.cbeamPrev = global.cbeam;
                    }
                    if(global.cbeam == 1){
                        popup_text("Charge beam enabled");
                    } else {
                        popup_text("Charge beam disabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 23 && global.receivedClientID == global.clientID){
                    global.cbeamPrev = global.cbeam;
                }
                
                if(global.onlineReceived[# 2, i] == 26 && global.receivedClientID != global.clientID){
                    global.pbombs = global.onlineReceived[# 1, i];
                    if(global.pbombsPrev != global.pbombs){
                        global.pbombsPrev = global.pbombs;
                    }
                } else if(global.onlineReceived[# 2, i] == 26 && global.receivedClientID == global.clientID){
                    global.pbombsPrev = global.pbombs;
                }
                
                if(global.onlineReceived[# 2, i] == 27 && global.receivedClientID != global.clientID){
                    global.etanks = global.onlineReceived[# 1, i];
                    if(global.etanksPrev != global.etanks){
                        global.etanksPrev = global.etanks;
                    }
                } else if(global.onlineReceived[# 2, i] == 27 && global.receivedClientID == global.clientID){
                    global.etanksPrev = global.etanks;
                }
                
                if(global.onlineReceived[# 2, i] == 28 && global.receivedClientID != global.clientID){
                    global.mtanks = global.onlineReceived[# 1, i];
                    if(global.mtanksPrev != global.mtanks){
                        global.mtanksPrev = global.mtanks;
                    }
                } else if(global.onlineReceived[# 2, i] == 28 && global.receivedClientID == global.clientID){
                    global.mtanksPrev = global.mtanks;
                }
                
                if(global.onlineReceived[# 2, i] == 29 && global.receivedClientID != global.clientID){
                    global.stanks = global.onlineReceived[# 1, i];
                    if(global.stanksPrev != global.stanks){
                        global.stanksPrev = global.stanks;
                    }
                } else if(global.onlineReceived[# 2, i] == 29 && global.receivedClientID == global.clientID){
                    global.stanksPrev = global.stanks;
                }
                
                if(global.onlineReceived[# 2, i] == 30 && global.receivedClientID != global.clientID){
                    global.ptanks = global.onlineReceived[# 1, i];
                    if(global.ptanksPrev != global.ptanks){
                        global.ptanksPrev = global.ptanks;
                    }
                } else if(global.onlineReceived[# 2, i] == 30 && global.receivedClientID == global.clientID){
                    global.ptanksPrev = global.ptanks;
                }
                
                if(global.onlineReceived[# 2, i] == 31 && global.receivedClientID != global.clientID){
                    global.currentsuit = global.onlineReceived[# 1, i];
                    if(global.currentsuitPrev != global.currentsuit){
                        global.currentsuitPrev = global.currentsuit;
                    }
                    if(global.currentsuit == 2){
                        popup_text("Gravity suit enabled");
                    } else if(global.currentsuit == 1){
                        popup_text("Varia suit enabled");
                    } else if(global.currentsuit == 0){
                        popup_text("Power suit enabled");
                    }
                } else if(global.onlineReceived[# 2, i] == 31 && global.receivedClientID == global.clientID){
                    global.currentsuitPrev = global.currentsuit;
                }
            }
        }
        break;
    case "onlinevars":
        //ds_grid_set(global.onlineList, 0, 0, global.itemPrev);
        //ds_grid_set(global.onlineList, 1, 0, global.item);
        //ds_grid_set(global.onlineList, 0, 1, global.metdeadPrev);
        //ds_grid_set(global.onlineList, 1, 1, global.metdead);
        ds_grid_set(global.onlineList, 0, 2, global.itemstakenPrev);
        ds_grid_set(global.onlineList, 1, 2, global.itemstaken);
        //ds_grid_set(global.onlineList, 0, 3, global.eventPrev);
        //ds_grid_set(global.onlineList, 1, 3, global.event);
        //ds_grid_set(global.onlineList, 0, 4, global.monstersleftPrev);
        //ds_grid_set(global.onlineList, 1, 4, global.monstersleft);
        ds_grid_set(global.onlineList, 0, 5, global.maxmissilesPrev);
        ds_grid_set(global.onlineList, 1, 5, global.maxmissiles);
        ds_grid_set(global.onlineList, 0, 6, global.maxsmissilesPrev);
        ds_grid_set(global.onlineList, 1, 6, global.maxsmissiles);
        ds_grid_set(global.onlineList, 0, 7, global.maxpbombsPrev);
        ds_grid_set(global.onlineList, 1, 7, global.maxpbombs);
        ds_grid_set(global.onlineList, 0, 8, global.maxhealthPrev);
        ds_grid_set(global.onlineList, 1, 8, global.maxhealth);
        ds_grid_set(global.onlineList, 0, 9, global.playerhealthPrev);
        ds_grid_set(global.onlineList, 1, 9, global.playerhealth);
        ds_grid_set(global.onlineList, 0, 10, global.morphballPrev);
        ds_grid_set(global.onlineList, 1, 10, global.morphball);
        ds_grid_set(global.onlineList, 0, 11, global.jumpballPrev);
        ds_grid_set(global.onlineList, 1, 11, global.jumpball);
        ds_grid_set(global.onlineList, 0, 12, global.powergripPrev);
        ds_grid_set(global.onlineList, 1, 12, global.powergrip);
        ds_grid_set(global.onlineList, 0, 13, global.spacejumpPrev);
        ds_grid_set(global.onlineList, 1, 13, global.spacejump);
        ds_grid_set(global.onlineList, 0, 14, global.screwattackPrev);
        ds_grid_set(global.onlineList, 1, 14, global.screwattack);
        ds_grid_set(global.onlineList, 0, 15, global.hijumpPrev);
        ds_grid_set(global.onlineList, 1, 15, global.hijump);
        ds_grid_set(global.onlineList, 0, 16, global.spiderballPrev);
        ds_grid_set(global.onlineList, 1, 16, global.spiderball);
        ds_grid_set(global.onlineList, 0, 17, global.speedboosterPrev);
        ds_grid_set(global.onlineList, 1, 17, global.speedbooster);
        ds_grid_set(global.onlineList, 0, 18, global.bombPrev);
        ds_grid_set(global.onlineList, 1, 18, global.bomb);
        ds_grid_set(global.onlineList, 0, 19, global.ibeamPrev);
        ds_grid_set(global.onlineList, 1, 19, global.ibeam);
        ds_grid_set(global.onlineList, 0, 20, global.wbeamPrev);
        ds_grid_set(global.onlineList, 1, 20, global.wbeam);
        ds_grid_set(global.onlineList, 0, 21, global.pbeamPrev);
        ds_grid_set(global.onlineList, 1, 21, global.pbeam);
        ds_grid_set(global.onlineList, 0, 22, global.sbeamPrev);
        ds_grid_set(global.onlineList, 1, 22, global.sbeam);
        ds_grid_set(global.onlineList, 0, 23, global.cbeamPrev);
        ds_grid_set(global.onlineList, 1, 23, global.cbeam);
        ds_grid_set(global.onlineList, 0, 24, global.missilesPrev);
        ds_grid_set(global.onlineList, 1, 24, global.missiles);
        ds_grid_set(global.onlineList, 0, 25, global.smissilesPrev);
        ds_grid_set(global.onlineList, 1, 25, global.smissiles);
        ds_grid_set(global.onlineList, 0, 26, global.pbombsPrev);
        ds_grid_set(global.onlineList, 1, 26, global.pbombs);
        ds_grid_set(global.onlineList, 0, 27, global.etanksPrev);
        ds_grid_set(global.onlineList, 1, 27, global.etanks);
        ds_grid_set(global.onlineList, 0, 28, global.mtanksPrev);
        ds_grid_set(global.onlineList, 1, 28, global.mtanks);
        ds_grid_set(global.onlineList, 0, 29, global.stanksPrev);
        ds_grid_set(global.onlineList, 1, 29, global.stanks);
        ds_grid_set(global.onlineList, 0, 30, global.ptanksPrev);
        ds_grid_set(global.onlineList, 1, 30, global.ptanks);
        ds_grid_set(global.onlineList, 0, 31, global.currentsuitPrev);
        ds_grid_set(global.onlineList, 1, 31, global.currentsuit);
        //ds_grid_set(global.onlineList, 0, 32, global.monstersareaPrev);
        //ds_grid_set(global.onlineList, 1, 32, global.monstersarea);
        ds_grid_set(global.onlineList, 0, 33, global.lavastatePrev);
        ds_grid_set(global.onlineList, 1, 33, global.lavastate);
        break;
    case "replaceglobalvars":
        //global.item = ds_grid_get(global.onlineList, 1, 0);
        //global.metdead = ds_grid_get(global.onlineList, 1, 1);
        global.itemstaken = ds_grid_get(global.onlineList, 1, 2);
        //global.event = ds_grid_get(global.onlineList, 1, 3);
        //global.monstersleft = ds_grid_get(global.onlineList, 1, 4);
        global.maxmissiles = ds_grid_get(global.onlineList, 1, 5);
        global.maxsmissiles = ds_grid_get(global.onlineList, 1, 6);
        global.maxpbombs = ds_grid_get(global.onlineList, 1, 7);
        global.maxhealth = ds_grid_get(global.onlineList, 1, 8);
        global.playerhealth = ds_grid_get(global.onlineList, 1, 9);
        global.morphball = ds_grid_get(global.onlineList, 1, 10);
        global.jumpball = ds_grid_get(global.onlineList, 1, 11);
        global.powergrip = ds_grid_get(global.onlineList, 1, 12);
        global.spacejump = ds_grid_get(global.onlineList, 1, 13);
        global.screwattack = ds_grid_get(global.onlineList, 1, 14);
        global.hijump = ds_grid_get(global.onlineList, 1, 15);
        global.spiderball = ds_grid_get(global.onlineList, 1, 16);
        global.speedbooster = ds_grid_get(global.onlineList, 1, 17);
        global.bomb = ds_grid_get(global.onlineList, 1, 18);
        global.ibeam = ds_grid_get(global.onlineList, 1, 19);
        global.wbeam = ds_grid_get(global.onlineList, 1, 20);
        global.pbeam = ds_grid_get(global.onlineList, 1, 21);
        global.sbeam = ds_grid_get(global.onlineList, 1, 22);
        global.cbeam = ds_grid_get(global.onlineList, 1, 23);
        global.missiles = ds_grid_get(global.onlineList, 1, 24);
        global.smissiles = ds_grid_get(global.onlineList, 1, 25);
        global.pbombs = ds_grid_get(global.onlineList, 1, 26);
        global.etanks = ds_grid_get(global.onlineList, 1, 27);
        global.mtanks = ds_grid_get(global.onlineList, 1, 28);
        global.stanks = ds_grid_get(global.onlineList, 1, 29);
        global.ptanks = ds_grid_get(global.onlineList, 1, 30);
        global.currentsuit = ds_grid_get(global.onlineList, 1, 31);
        //global.monstersarea = ds_grid_get(global.onlineList, 1, 32);
        global.lavastate = ds_grid_get(global.onlineList, 1, 33);
        break;
    case "disablesame":
        for(var i=0; i<ds_grid_height(global.onlineReceived); i++){
            if(global.onlineReceived[# 2, i] != -1 && i != 0 && i != 1 && i != 3){
                global.onlineList[# 1, i] = global.onlineReceived[# 1, i];
            }
            
            /*
            if((i == 0 || i == 1 || i == 3) && (is_array(global.onlineReceived[# 1, i]))){
                var arrList = global.onlineList[# 1, i];
                var arrSend = global.onlineReceived[# 1, i];
                show_debug_message(arrList);
                show_debug_message(arrSend);
                for(var f=0; f<array_length_1d(arrList); f++){
                    for(var v=0; v<array_height_2d(arrSend); v++){
                        if(f == arrSend[v, 1]){
                            if(i == 0){
                                global.itemPrev[f] = arrSend[v, 0];
                                if(global.item[f] != arrSend[v, 0]){
                                    global.item[f] = arrSend[v, 0];
                                }
                                show_debug_message("item prev index " + string(f) + " changed"); 
                            }
                            if(i == 1){
                                global.metdeadPrev[f] = arrSend[v, 0];
                                if(global.metdead[f] != arrSend[v, 0]){
                                    global.metdead[f] = arrSend[v, 0];
                                }
                                show_debug_message("metdead prev index " + string(f) + " changed");
                            }
                            if(i == 3){
                                global.eventPrev[f] = arrSend[v, 0];
                                if(global.event[f] != arrSend[v, 0]){
                                    global.event[f] = arrSend[v, 0];
                                }
                                show_debug_message("event prev index " + string(f) + " changed"); 
                            }
                        }
                    }
                }
            }
            */
            
            /*
            if(i == 4){
                if(global.onlineReceived[# 2, i] != -1 && global.receivedClientID != global.clientID){
                    global.monstersleft = global.onlineReceived[# 1, 4];
                    if(global.monstersleftPrev != global.monstersleft){
                        global.monstersleftPrev = global.monstersleft;
                    }
                } else if(global.onlineReceived[# 2, i] != -1 && global.receivedClientID == global.clientID){
                    global.monstersleftPrev = global.monstersleft;
                }
            }
            if(i == 32){
                if(global.onlineReceived[# 2, i] != -1 && global.receivedClientID != global.clientID){
                    global.monstersarea = global.onlineReceived[# 1, 32];
                    if(global.monstersareaPrev != global.monstersarea){
                        global.monstersareaPrev = global.monstersarea;
                    }
                } else if(global.onlineReceived[# 2, i] != -1 && global.receivedClientID == global.clientID){
                    global.monstersareaPrev = global.monstersarea;
                }
            }
            */
            if(i == 33){
                if(global.onlineReceived[# 2, i] != -1 && global.receivedClientID != global.clientID){
                    global.lavastate = global.onlineReceived[# 1, 33];
                    if(global.lavastatePrev != global.lavastate){
                        global.lavastatePrev = global.lavastate;
                    }
                } else if(global.onlineReceived[# 2, i] != -1 && global.receivedClientID == global.clientID){
                    global.lavastatePrev = global.lavastate;
                }
            }
        }
        break;
}

