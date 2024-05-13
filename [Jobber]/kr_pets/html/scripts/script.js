$(document).ready(function(){
    let theme = localStorage.getItem('theme') ? localStorage.getItem('theme') : "dark"
    var shopPetConfig
    var avaliableSkillPoints = 0
    const resoruceName = `kr_pets`

    const animateCSS = (element, animation, prefix = 'animate__') => new Promise((resolve, reject) => {
        const animationName = `${prefix}${animation}`
        const node = document.querySelector(element)
        node.classList.add(`${prefix}animated`, animationName)

        function handleAnimationEnd(event) {
            event.stopPropagation()
            node.classList.remove(`${prefix}animated`, animationName)
            resolve('Animation ended')
        }

        node.addEventListener('animationend', handleAnimationEnd, {once: true})
    })

    let switcher = document.querySelector("#themeSwitcher")
    document.documentElement.className = "theme-" + theme
    switcher.classList.remove(theme == "dark" ? "light" : "dark")
    switcher.classList.add(theme)
    switcher.firstChild.src = "img/"+theme+".png"

    let options = document.querySelectorAll(".option")

    for(let i = 0; i < options.length; i++) {
        options[i].addEventListener("click", function(event) {
            exitPetMainMenu().then(() => {
                switch(options[i].id) {
                    case "command":
                        fetch(`https://${resoruceName}/command`, {
                            method: 'post',
                            headers: {
                              'Content-Type': 'application/json; charset=UTF-8',
                            },
                            body: JSON.stringify({})
                        })
                        break;
                    case "guard":
                        fetch(`https://${resoruceName}/guard`, {
                            method: 'post',
                            headers: {
                              'Content-Type': 'application/json; charset=UTF-8',
                            },                            
                            body: JSON.stringify({})
                        })
                        break;
                    case "carry":
                        fetch(`https://${resoruceName}/carry`, {
                            method: 'post',
                            headers: {
                              'Content-Type': 'application/json; charset=UTF-8',
                            },
                            body: JSON.stringify({})
                        })
                        break;
                    case "feed":
                        fetch(`https://${resoruceName}/feed`, {
                            method: 'post',
                            headers: {
                              'Content-Type': 'application/json; charset=UTF-8',
                            },
                            body: JSON.stringify({})
                        })
                        break;
                    case "fetch":
                        fetch(`https://${resoruceName}/fetch`, {
                            method: 'post',
                            headers: {
                              'Content-Type': 'application/json; charset=UTF-8',
                            },
                            body: JSON.stringify({})
                        })
                        break;
                    case "lying":
                        fetch(`https://${resoruceName}/lieDown`, {
                            method: 'post',
                            headers: {
                              'Content-Type': 'application/json; charset=UTF-8',
                            },
                            body: JSON.stringify({})
                        })
                        break;
                    case "sitting":
                        fetch(`https://${resoruceName}/sit`, {
                            method: 'post',
                            headers: {
                              'Content-Type': 'application/json; charset=UTF-8',
                            },
                            body: JSON.stringify({})
                        })
                        break;
                    case "transfer":
                        fetch(`https://${resoruceName}/transfer`, {
                            method: 'post',
                            headers: {
                              'Content-Type': 'application/json; charset=UTF-8',
                            },
                            body: JSON.stringify({})
                        })
                        break;
                    case "tracker":
                        fetch(`https://${resoruceName}/switchTracker`, {
                            method: 'post',
                            headers: {
                              'Content-Type': 'application/json; charset=UTF-8',
                            },
                            body: JSON.stringify({})
                        })
                        break;
                    case "sniffItem":
                        fetch(`https://${resoruceName}/sniffNewItem`, {
                            method: 'post',
                            headers: {
                              'Content-Type': 'application/json; charset=UTF-8',
                            },
                            body: JSON.stringify({})
                        })
                        break;
                }
            })
        })
    }

    let skills = document.querySelectorAll(".skill")
    let clickedLevel = false

    for(let i = 0; i < skills.length; i++) {
        let element = skills[i]
        element.addEventListener("click", function(event) {
            if(!clickedLevel) {
                clickedLevel = true
                let skill = ""
                let level = 0
                element.classList.forEach(e => {
                    if(e.includes("level")) {
                        level = parseInt(e.split("_")[1])
                    } else if(e != "skill" && e != "left" && e != "skillLast") {
                        skill = e
                    }
                })
                let lastSkillSelector = document.querySelector(`.${skill}.level_${level-1}`)
                let skillSelector = document.querySelector(`.${skill}.level_${level}`)

                if((!lastSkillSelector || !lastSkillSelector.querySelector(".lockedImg") || !skillSelector.querySelector(".lockedImg")) && avaliableSkillPoints > 0 && element.querySelector(".lockedImg")) {
                    if(level == 11) {
                        if(avaliableSkillPoints < 5) { return } else {
                            avaliableSkillPoints -= 4
                        }
                    }

                    avaliableSkillPoints--
                    document.querySelector("h1").innerHTML = `AVALIABLE POINTS: ${avaliableSkillPoints}`
                    element.classList.add('animate__animated', 'animate__tada')
                    element.querySelector(".skillText").style.display = "none"
                    element.style.setProperty('--animate-duration', '1s')

                    let animated = false
                    element.addEventListener('animationend', () => {
                        if(!animated) {
                            animated = true
                            element.style.setProperty('--animate-duration', '1s')
                            element.classList.remove('animate__animated', 'animate__tada')
                            element.querySelector(".lockedImg").remove()
                            element.querySelector(".skillImg").style.opacity = 1
                            element.classList.add('animate__animated', 'animate__pulse')

                            element.addEventListener('animationend', () => {
                                element.classList.remove('animate__animated', 'animate__pulse')
                                element.querySelector(".skillText").style.display = "block"
                                clickedLevel = false
                                fetch(`https://${resoruceName}/upgradeSkill`, {
                                    method: 'post',
                                    headers: {
                                      'Content-Type': 'application/json; charset=UTF-8',
                                    },
                                    body: JSON.stringify({skill: skill, level : level})
                                })
                            })
                        }
                    })
                }
            }
        })
    }

    switcher.addEventListener('click', function(event) {
        if(switcher.className.includes("dark")) {
            switcher.classList.remove("dark")
            switcher.classList.add("light")
            switcher.firstChild.src = "img/light.png"
            document.documentElement.className = "theme-light"
            localStorage.setItem('theme', 'light');
        } else {
            switcher.classList.remove("light")
            switcher.classList.add("dark")
            switcher.classList.add("light")
            switcher.firstChild.src = "img/dark.png"
            document.documentElement.className = "theme-dark"
            localStorage.setItem('theme', 'dark')
        }
    })

    var currentEvent
	window.addEventListener('message', function(event) {
        currentEvent = event.data.type
        if (event.data.type == "interact") {
            let container = document.getElementById("interactContainer");
            let elements = container.querySelectorAll(":scope > div")
            elements.forEach(element => element.classList.remove("selected"))
            document.querySelector("#interactFooter").innerHTML = ""

            let toAppend = ""

            switch(event.data.interact) {
                case 1:
                    let attack = document.querySelector("#attack");
                    attack.classList.add("selected")
                    toAppend += "<b>Attack</b>"
                    break;
                case 2:
                    let goto = document.querySelector("#goto");
                    goto.classList.add("selected")
                    toAppend += "<b>Go to</b>"
                    break;
                case 3:
                    let sniff = document.querySelector("#sniff");
                    sniff.classList.add("selected")
                    toAppend += "<b>Sniff</b>"
                    break;
                case 4:
                    let follow = document.querySelector("#follow");
                    follow.classList.add("selected")
                    toAppend += "<b>Follow</b>"
                    break;
            }
            toAppend += `<br>ENTER to command<br>${event.data.switchKey} to switch`
            document.querySelector("#interactFooter").innerHTML = toAppend

        } else if (event.data.type == "showInteract") {
            let container = document.getElementById("interactContainer")
            container.style.display = "flex"

        } else if (event.data.type == "hideInteract") {
            let container = document.getElementById("interactContainer")
            container.style.display = "none"

        } else if (event.data.type == "showPetSkillMenu") {
            let container = document.getElementById("skillConParent")
            container.style.display = "block"
            animateCSS("#skillConParent", "backInUp")
            let xp = event.data.pet.skills.xp
            let xpContainer = document.querySelector("#xp")
            let xpLength = (parseInt(xp) / 100) * 3.15
            xpContainer.style.setProperty("--length3", `${xpLength}vw`)
            let hungerContainer = document.querySelector("#hunger")
            let hungerLength = (parseInt(event.data.pet.status.hunger)/100) * 3.15
            hungerContainer.style.setProperty("--length2", `${hungerLength}vw`)
            let healthContainer = document.querySelector("#health")
            let healthLength = (event.data.health) * 3.15
            healthContainer.style.setProperty("--length1", `${healthLength}vw`)
            document.querySelector(".header").innerHTML = event.data.pet.name
            // document.querySelector("#xpProgress").style.width = xp + "%"
            container.querySelector("#petPhoto").src = `img/${event.data.pet.model}.png`
            avaliableSkillPoints = event.data.pet.skills.skillPoints
            // document.querySelector("#level").innerHTML += event.data.pet.skills.level
            document.querySelector("h1").innerHTML = `AVALIABLE POINTS: ${avaliableSkillPoints}`

            if(!event.data.canSit && document.querySelector("#sitting")) {
                document.querySelector("#sitting").remove()
            }

            if(!event.data.canLay && document.querySelector("#lying")) {
                document.querySelector("#lying").remove()
            }

            if(event.data.pet.skills.bravery == 11 && document.querySelector("#guard")) {
                if(event.data.pet.status.guard) {
                    document.querySelector("#guard").querySelector(".skillText").innerHTML = `<b>Guard</b><p>Disable Guard</p>`
                } else {
                    document.querySelector("#guard").querySelector(".skillText").innerHTML = `<b>Guard</b><p>Enable Guard</p>`
                }
            } else {
                document.querySelector("#guard").remove()
            }

            if(event.data.pet.status.tracker) {
                document.querySelector("#tracker").querySelector(".skillText").innerHTML = `<b>Tracker</b><p>Disable Tracker</p>`
            } else {
                document.querySelector("#tracker").querySelector(".skillText").innerHTML = `<b>Tracker</b><p>Enable Tracker</p>`
            }

            if(!event.data.canAttack) {
                let bravery = document.querySelectorAll(".bravery")

                for(let i = 0; i < bravery.length;i++) {
                    bravery[i].remove()
                }
            } else {
                for(let i = 0; i < event.data.pet.skills.bravery; i++) {
                    if(document.querySelector(".bravery.level_"+(i+1)).querySelector(".lockedImg")) {
                        document.querySelector(".bravery.level_"+(i+1)).querySelector(".lockedImg").remove()
                        document.querySelector(".bravery.level_"+(i+1)).querySelector(".skillImg").style.opacity = 1
                    }
                }
            }

            if(!event.data.canSniff) {
                let sniff = document.querySelectorAll(".sniff")
                for(let i = 0; i < sniff.length;i++) {
                    sniff[i].remove()
                }
                let sniffItems = document.querySelector("#sniffItem")
                sniffItems.remove()
            } else {
                for(let i = 0; i < event.data.pet.skills.sniff; i++) {
                    if(document.querySelector(".sniff.level_"+(i+1)).querySelector(".lockedImg")) {
                        document.querySelector(".sniff.level_"+(i+1)).querySelector(".lockedImg").remove()
                        document.querySelector(".sniff.level_"+(i+1)).querySelector(".skillImg").style.opacity = 1
                    }
                }
            }

            for(let i = 0; i < event.data.pet.skills.health; i++) {
                if(document.querySelector(".health.level_"+(+i+1)).querySelector(".lockedImg")) {
                    document.querySelector(".health.level_"+(+i+1)).querySelector(".lockedImg").remove()
                    document.querySelector(".health.level_"+(+i+1)).querySelector(".skillImg").style.opacity = 1
                }
            }

            for(let i = 0; i < event.data.pet.skills.speed; i++) {
                if(document.querySelector(".speed.level_"+(i+1)).querySelector(".lockedImg")) {
                    document.querySelector(".speed.level_"+(i+1)).querySelector(".lockedImg").remove()
                    document.querySelector(".speed.level_"+(i+1)).querySelector(".skillImg").style.opacity = 1
                }
            }

            for(let i = 0; i < event.data.pet.skills.hunger; i++) {
                if(document.querySelector(".hunger.level_"+(i+1)).querySelector(".lockedImg")) {
                    document.querySelector(".hunger.level_"+(i+1)).querySelector(".lockedImg").remove()
                    document.querySelector(".hunger.level_"+(i+1)).querySelector(".skillImg").style.opacity = 1
                }
            }

            if(!event.data.canAttack || !event.data.canSniff) {
                if(!event.data.canAttack && !event.data.canSniff) {
                    document.querySelector(".skills").style["grid-template-columns"] = "1fr 1fr 1fr"
                } else {
                    document.querySelector(".skills").style["grid-template-columns"] = "1fr 1fr 1fr 1fr"
                }
            }

        } else if (event.data.type == "hidePetSkillMenu") {
            let container = document.getElementById("skillConParent")
            container.style.display = "block"
            
        } else if (event.data.type == "petShop") {
            shopPetConfig = {pet : event.data.pets, index : 0, police : event.data.police}
            let petName = document.getElementById("petName")
            petName.innerHTML = event.data.pets[0].label
            let container = document.getElementById("petShop")
            container.style.display = "block"
            let petAttr = document.getElementById("petAttrShopContainer")
            let canAttack = event.data.pets[0].canAttack ? (event.data.police.onlyPoliceCanAttack ? `<div class = petAttrShop><img src = "img/bite.png"> Angrip tilgjengelig (only for police)</div>` : `<div class = petAttrShop><img src = "img/bite.png"> Angrip tilgjengelig</div>`) : `<div class = petAttrShop><img src = "img/bite.png"> Angrip IKKE tilgjengelig</div>`
            let canSniff = event.data.pets[0].canSniff ? (event.data.police.onlyPoliceCanSniff ? `<div class = petAttrShop><img src = "img/sniff.png"> Sniff søk tilgjengelig (only for police)</div>` : `<div class = petAttrShop><img src = "img/sniff.png"> Sniff søk tilgjengelig</div>`) : `<div class = petAttrShop><img src = "img/sniff.png"> Sniff søk IKKE tilgjengelig</div>`
            
            if(event.data.pets[0].buyable) {
                document.getElementById("purchasePet").innerHTML = "Kjøp (" + event.data.pets[0].price + "kr)"
            } else {
                document.getElementById("purchasePet").innerHTML = "Dette kjæledyret er ikke tilgjengelig"
            }

            petAttr.innerHTML = canAttack + canSniff
                        
            if(shopPetConfig.pet[1].canAttack) {
                document.querySelectorAll(".petAttrShop")[0].style.color = "#025702"
            } else {
                document.querySelectorAll(".petAttrShop")[0].style.color = "#570202"
            }

            if(shopPetConfig.pet[1].canSniff) {
                document.querySelectorAll(".petAttrShop")[1].style.color = "#025702"
            } else {
                document.querySelectorAll(".petAttrShop")[1].style.color = "#570202"
            }
        }
    })

    let currentSkillPercentage = [ ["50%", "0%"], ["100%", "38%"], ["82%", "100%"], ["18%", "100%"], ["0%", "38%"] ]
    let currentSkills = [0.4, 0.1, 0.4, 0.6, 0.0]
      
    for(let i = 0; i < 5; i++) {
        for(let j = 0; j < 2; j++) {
            let number = parseInt(currentSkillPercentage[i][j].replace("%", ""));
            currentSkillPercentage[i][j] = number + ((50 - number) * currentSkills[i]) + "%"
        }
    }
      
    let clipPathString = ""

    for(let i = 0; i < 5; i++) {
        for(let j = 0; j < 2; j++) {
            clipPathString += currentSkillPercentage[i][j]
        }
        if(i < 4) {
            clipPathString += ","
        }
    }

    $('#skills').css("clip-path", `polygon(${clipPathString})`);
    $('#skillsBorder').css("clip-path", `polygon(${clipPathString})`);

    let purchase = document.querySelector("#purchasePet")

    purchase.addEventListener('click', function(event) {
        if(shopPetConfig.pet[shopPetConfig.index].buyable) {
            fetch(`https://${resoruceName}/purchase`, {
                method: 'post',
                headers: {
                  'Content-Type': 'application/json; charset=UTF-8',
                },
                body: JSON.stringify({index : shopPetConfig.index})
            })
            let container = document.getElementById("petShop")
            container.style.display = "none"
            location.reload()
        }
    })

    let shopSwitcher = document.querySelectorAll(".switcher")

    for(let i = 0; i < shopSwitcher.length; i++) {
        shopSwitcher[i].addEventListener('click', function(event) {
            let element = shopSwitcher[i]
            let left = element.className.includes("switcherLeft")
            let newLabel = ""
            let length = Object.keys(shopPetConfig.pet).length - 1

            if(shopPetConfig.index == 0 && left) {
                newLabel += shopPetConfig.pet[length].label
                shopPetConfig.index = length
            } else if(shopPetConfig.index == length && !left) {
                newLabel += shopPetConfig.pet[0].label
                shopPetConfig.index = 0
            } else {
                left ? shopPetConfig.index-- : shopPetConfig.index++
                newLabel += shopPetConfig.pet[shopPetConfig.index].label
            }

            let petAttr = document.getElementById("petAttrShopContainer")
            let canAttack = shopPetConfig.pet[shopPetConfig.index].canAttack ? (shopPetConfig.police.onlyPoliceCanAttack ? `<div class = petAttrShop><img src = "img/bite.png"> Angrip tilgjengelig (only for police)</div>` : `<div class = petAttrShop><img src = "img/bite.png"> Angrip tilgjengelig</div>`) : `<div class = petAttrShop><img src = "img/bite.png"> Angrip IKKE tilgjengelig</div>`
            let canSniff = shopPetConfig.pet[shopPetConfig.index].canSniff ? (shopPetConfig.police.onlyPoliceCanSniff ? `<div class = petAttrShop><img src = "img/sniff.png"> Sniff søk tilgjengelig (only for police)</div>` : `<div class = petAttrShop><img src = "img/sniff.png"> Sniff søk tilgjengelig</div>`) : `<div class = petAttrShop><img src = "img/sniff.png"> Sniff søk IKKE tilgjengelig</div>`

            petAttr.innerHTML = canAttack + canSniff

            if(shopPetConfig.pet[shopPetConfig.index].buyable) {
                document.getElementById("purchasePet").innerHTML = "KJØP (" + shopPetConfig.pet[shopPetConfig.index].price + "kr)"
            } else {
                document.getElementById("purchasePet").innerHTML = "Dette kjæledyret er ikke tilgjengelig"
            }

            if(shopPetConfig.pet[shopPetConfig.index].canAttack) {
                document.querySelectorAll(".petAttrShop")[0].style.color = "#025702"
            } else {
                document.querySelectorAll(".petAttrShop")[0].style.color = "#570202"
            }

            if(shopPetConfig.pet[shopPetConfig.index].canSniff) {
                document.querySelectorAll(".petAttrShop")[1].style.color = "#025702"
            } else {
                document.querySelectorAll(".petAttrShop")[1].style.color = "#570202"
            }

            document.getElementById("petName").innerHTML = newLabel

            fetch(`https://${resoruceName}/shopSwitch`, {
                method: 'post',
                headers: {
                  'Content-Type': 'application/json; charset=UTF-8',
                },
                body: JSON.stringify({left: left})
            })
        })
    }

    let clicked = false

    document.addEventListener("keydown", (event) => {
        if(event.key == "Escape") {
            if(currentEvent == "petShop") {
                let container = document.getElementById("petShop")
                fetch(`https://${resoruceName}/closePetShop`, {
                    method: 'post',
                    headers: {
                      'Content-Type': 'application/json; charset=UTF-8',
                    },
                    body: JSON.stringify({})
                })
                container.style.display = "none"
                location.reload()
            } else {
                exitPetMainMenu().then(() => {
                    location.reload()
                })
            }
        }
    })

    const exitPetMainMenu = () => new Promise((resolve, reject) => {
        if(!clicked) {
            clicked = true
            let container = document.getElementById("skillConParent")
            fetch(`https://${resoruceName}/fadeOut`, {
                method: 'post',
                headers: {
                  'Content-Type': 'application/json; charset=UTF-8',
                },
                body: JSON.stringify({})
            });
            
            animateCSS("#skillConParent", "backOutDown").then((msg) => {
                container.style.display = "none"
                fetch(`https://${resoruceName}/close`, {
                    method: 'post',
                    headers: {
                      'Content-Type': 'application/json; charset=UTF-8',
                    },
                    body: JSON.stringify({})
                }).then(resp => {
                    location.reload()
                    resolve()
                })
            })
        }
    })
})