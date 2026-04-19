defmodule RewovenCurriculum.Lessons do
  @moduledoc """
  Full content for the 24 curriculum lessons.

  Lookup: content("circular-economy", "linear-vs-circular") →
    %{intro:, sections:, key_takeaways:, activities:, end_question:}

  Each lesson includes a kid-friendly intro, 3-4 deep sections, takeaways,
  hands-on activities, and a multiple-choice check-for-understanding.
  """

  @lessons %{
    # =====================================================================
    # COURSE 1: CIRCULAR ECONOMY
    # =====================================================================

    {"circular-economy", "linear-vs-circular"} => %{
      intro:
        "Almost everything you own — your phone, your hoodie, your toothbrush — was made to be thrown away. That single design choice is reshaping the planet, and a small group of designers, scientists, and brands are trying to flip it. 🌍",
      sections: [
        %{
          heading: "What is the linear economy?",
          body:
            "For about 200 years, humans have run the world on a simple recipe: take raw materials from the ground, make stuff, sell it, throw it away. Take, make, waste. That's the linear economy.\n\nIt worked when there were 1 billion people and the Earth felt infinite. Today there are over 8 billion of us, and the math has stopped working. We pull about 100 billion tonnes of raw material out of the planet every year. Less than 9% of that gets used again. The rest becomes pollution, landfill, or smoke.\n\nThink about a plastic water bottle. Oil drilled from a well in Texas, shipped to a factory, turned into plastic, filled with water, trucked to a store, bought, drunk in 3 minutes, and tossed. The bottle outlives the human who drank from it by about 450 years."
        },
        %{
          heading: "The circular alternative",
          body:
            "A circular economy is designed differently from the start. The Ellen MacArthur Foundation — the group that made this idea famous — describes it with three rules:\n\n1. Design out waste and pollution.\n2. Keep products and materials in use.\n3. Help nature regenerate.\n\nIn a circular system, your hoodie is made so it can be repaired, resold, or broken down into fibre for a new hoodie. Your phone is built so the battery can be swapped instead of the whole phone being replaced. Food scraps go back into soil instead of into a landfill where they release methane.\n\nNothing becomes waste — because waste is just a design failure."
        },
        %{
          heading: "Why this matters now",
          body:
            "The fashion industry alone produces around 92 million tonnes of textile waste each year. That's roughly a garbage truck of clothes burned or buried every single second. By 2050, if nothing changes, the fashion industry will use a quarter of the world's entire carbon budget.\n\nThe linear model is also expensive. Every time we throw a phone away, we throw away the gold, lithium, and rare earth metals inside it — metals that are getting harder and more dangerous to mine. Circularity isn't just about the planet; it's about not running out of stuff.\n\nThe good news: companies like Patagonia, Fairphone, and IKEA have started shifting. The bad news: most of what you can buy today is still 100% linear."
        },
        %{
          heading: "What you can do (without being a CEO)",
          body:
            "You don't have to wait for big brands to fix this. Every time you repair instead of replace, buy second-hand, or compost food scraps, you're nudging the system circular.\n\nA few simple swaps:\n- Borrow or rent things you'll use once (drills, party outfits, camping gear).\n- Choose products with replaceable parts.\n- Ask 'what happens to this when I'm done with it?' before you buy.\n\nThese seem small. But there are 8 billion of us. Small choices, multiplied by billions of people, become global flows of material."
        }
      ],
      key_takeaways: [
        "Linear economy = take, make, waste. Less than 9% of materials get reused.",
        "Circular economy = design out waste, keep materials in use, regenerate nature.",
        "The Ellen MacArthur Foundation popularised the modern circular economy framework.",
        "Fashion alone burns or buries one garbage truck of clothes every second.",
        "Asking 'what happens when I'm done with this?' is the first circular question."
      ],
      activities: [
        %{
          title: "Spot the linear economy in your room",
          description:
            "Look around for 5 things you've used and thrown away in the last week — wrappers, paper, packaging, a broken pen. Write them down. Now imagine each one in a circular system: how could it be reused, refilled, repaired, or composted? Which ones would be hardest to redesign and why?"
        },
        %{
          title: "The 100-year question",
          description:
            "Pick one item in your house — a toy, a backpack, a phone case. Ask: where did the material come from before this was made? Where will it go in 5 years? In 100 years? Try to trace the path on paper. Most items have a clear past but a fuzzy future. That fuzziness is the linear economy."
        },
        %{
          title: "Family conversation",
          description:
            "At dinner, ask everyone to name the oldest thing they still use and love. Maybe it's a grandparent's watch, a cast-iron pan, or a leather jacket. Talk about why old things often feel better than new ones. This is what the circular economy is trying to scale up."
        }
      ],
      end_question: %{
        prompt: "Which of these best describes a circular economy?",
        options: [
          "Buy → use → throw away as fast as possible",
          "Buy → use → reuse, repair, and recycle so materials stay in use",
          "Buy → use → bury in a landfill",
          "Buy more, buy more, buy more"
        ],
        correct: 1,
        explanation:
          "A circular economy keeps materials in use as long as possible — through reuse, repair, refurbishment and recycling — instead of treating them as disposable. The Ellen MacArthur Foundation summarises it as: design out waste, keep things in use, regenerate nature."
      }
    },

    {"circular-economy", "reuse-and-repair"} => %{
      intro:
        "Recycling gets all the attention, but it's actually one of the worst ways to deal with stuff. Reuse and repair beat it every time — and the math behind why is pretty wild.",
      sections: [
        %{
          heading: "The waste hierarchy",
          body:
            "Environmental scientists rank waste solutions from best to worst, and the order surprises most people:\n\n1. Refuse (don't buy it)\n2. Reduce (buy less)\n3. Reuse (use what exists, again and again)\n4. Repair (fix it when it breaks)\n5. Repurpose (turn it into something else)\n6. Recycle (break it down for raw material)\n7. Recover (burn it for energy)\n8. Dispose (landfill)\n\nNotice that recycling is near the bottom. That's because recycling still uses energy, water, and chemicals — and most materials get worse each time they're recycled. A reused jar avoids all of that."
        },
        %{
          heading: "Why one repair beats ten recycles",
          body:
            "Imagine a cotton t-shirt. To grow the cotton, factories used 2,700 litres of water — enough to fill a bathtub 50 times. To dye it, ship it, and stitch it, more energy and chemicals were burned.\n\nIf you wear that shirt 30 times and toss it, the planet 'spent' about 90 litres of water per wear. If you wear it 300 times — by patching small holes, sewing the hem, washing it gently — the cost drops to 9 litres per wear.\n\nA single repair, like sewing a button, can extend a garment's life by years. A 2017 study by WRAP (a UK waste research group) found that extending the life of a garment by just 9 months reduces its carbon, water, and waste footprint by around 20–30%. Repair is the highest-leverage move you have."
        },
        %{
          heading: "Why we forgot how to repair",
          body:
            "Fifty years ago, almost everything was made to be repaired. Shoes had stitched soles. Phones had replaceable batteries. Toasters had screws, not glue.\n\nToday, products are often designed so you *can't* fix them — a tactic called 'planned obsolescence'. Apple was sued in France in 2020 for slowing down old iPhones. Many laptops have batteries glued in. Fast fashion uses cheap stitching that falls apart after 5 washes.\n\nBut a global 'right to repair' movement is fighting back. The EU now requires phone-makers to sell spare parts for 7 years after a model launches. Repair Cafés — free community workshops — exist in over 2,000 cities. France even started paying citizens up to €25 to get clothes repaired instead of binned."
        },
        %{
          heading: "Reuse, but do it right",
          body:
            "Reuse means keeping something in its original use without major processing. A glass jar that becomes a pencil cup. A school uniform passed to a younger sibling. A library book read by a hundred kids.\n\nThe trick is that reuse only works if the *new* user actually needs the thing. Donating clothes feels good, but if no one wants them, they end up in landfill anyway — sometimes shipped halfway around the world first (we'll cover this in the Recycling course). The best reuse is local, direct, and matched to a real need: a friend, a sibling, a swap event, a school drive."
        }
      ],
      key_takeaways: [
        "Reuse and repair sit ABOVE recycling in the waste hierarchy.",
        "Extending a garment's life by 9 months cuts its footprint by 20–30%.",
        "Planned obsolescence — designing products to fail — is real and being legally challenged.",
        "Right-to-repair laws are spreading; the EU now mandates 7 years of spare parts for phones.",
        "Reuse only works if someone actually wants the item — match it to a real need."
      ],
      activities: [
        %{
          title: "Repair one thing this week",
          description:
            "Find one broken or damaged item — a torn shirt, a wobbly chair leg, a scuffed shoe. Look up a 5-minute YouTube tutorial. Try the repair (with adult help if needed). Even if it's not perfect, you've now done something that 80% of people in your country won't do this year."
        },
        %{
          title: "The hand-me-down map",
          description:
            "Draw a family tree of one piece of clothing in your house. Who bought it first? Who wore it after? How long has it been used? Now compare it with a fast-fashion item you bought recently. Which one cost more PER WEAR? Which one will likely last longer?"
        },
        %{
          title: "Repair Café field trip",
          description:
            "Search 'Repair Café near me' online. If there's one within reach, ask a parent or teacher to take you. Bring something broken. Talk to the volunteers — most are retired engineers, tailors, or electricians. Ask them what's the most common item people bring in. (Spoiler: it's almost always a lamp.)"
        }
      ],
      end_question: %{
        prompt: "According to the waste hierarchy, which of these is the BEST option?",
        options: [
          "Recycling a plastic bottle",
          "Burning the bottle for energy",
          "Refilling the bottle and using it again",
          "Burying the bottle in a landfill"
        ],
        correct: 2,
        explanation:
          "Reuse sits above recycling in the waste hierarchy because it skips the energy, water, and chemicals needed to break down and rebuild a product. Refilling a bottle keeps the original material in its highest-value form. Recycling is good — but it's a backup, not the goal."
      }
    },

    {"circular-economy", "closing-the-loop"} => %{
      intro:
        "Some companies have gone past talking about circularity and actually built it. Inside Patagonia's repair workshop, Loop's refill warehouses, and your local zero-waste store, the loop is closing — slowly, messily, but really.",
      sections: [
        %{
          heading: "Patagonia's Worn Wear",
          body:
            "In 2011, the outdoor brand Patagonia ran a Black Friday ad that said 'Don't Buy This Jacket.' They were serious. Patagonia has spent 50 years building a brand around making clothes that last decades — and then helping customers actually keep them that long.\n\nTheir Worn Wear program does three things:\n\n1. Repair: They run the largest clothing repair facility in North America in Reno, Nevada — fixing about 100,000 garments a year.\n2. Resell: Customers can trade in old Patagonia gear for store credit. The brand cleans, repairs, and resells it on the Worn Wear website at a discount.\n3. Recycle: When something is truly beyond repair, it goes into Patagonia's recycling stream.\n\nSelling used clothing competes with selling new clothing. Patagonia does it anyway — and it's still one of the most profitable outdoor brands on Earth."
        },
        %{
          heading: "Loop and the return of the milkman",
          body:
            "If you're under 30, you probably don't remember when milk came in glass bottles that the milkman picked up empty. That whole system was circular — and it died because plastic was cheaper.\n\nLoop is trying to bring it back. Loop is a partnership between recycling company TerraCycle and brands like Häagen-Dazs, Tide, and Pantene. You order shampoo, ice cream, or detergent in a sturdy reusable container. When it's empty, you put it back in a Loop tote, schedule a pickup, and Loop washes and refills it.\n\nThe pilot launched in 2019 in New York and Paris. It's still small — but Walmart, Tesco, and Carrefour have all joined. The hard part isn't the technology. It's getting humans to remember to put the empty back."
        },
        %{
          heading: "Refill stores in your city",
          body:
            "Walk into a refill store and you'll see what shopping looked like for thousands of years before plastic packaging. Big jars of pasta, rice, oats, soap, shampoo, oil, cleaning liquid. You bring your own jar, weigh it, fill it, weigh it again, pay for the difference.\n\nA single refill store can prevent thousands of plastic containers a year. The UK chain 'The Source' estimates each customer prevents around 50 single-use plastic items per year by switching. Refill stores are now in cities from Tokyo to Toronto.\n\nBut they're harder than they look. Refill is more expensive at small scale. It needs customers willing to remember their jars. And it doesn't work for everything — try refilling toothpaste."
        },
        %{
          heading: "Why closing the loop is hard",
          body:
            "Every closed-loop system has the same three problems:\n\n- Logistics: Getting the empty container back is harder than just throwing it out.\n- Hygiene: Reusable systems must be cleaned to food-safe standards. That takes water and energy.\n- Economics: Single-use is cheap because no one is paying for the waste it creates. The day landfill costs reflect their real environmental price, refill systems will dominate.\n\nThis is why governments matter. France banned plastic packaging on most fruit and vegetables in 2022. The EU is requiring all packaging to be reusable or recyclable by 2030. Without those rules, even great companies struggle to compete with cheap, throwaway alternatives."
        }
      ],
      key_takeaways: [
        "Patagonia repairs ~100,000 garments a year and resells used gear through Worn Wear.",
        "Loop brings back the milkman model — sturdy reusable packaging with pickup and refill.",
        "Refill stores can prevent ~50 single-use containers per customer per year.",
        "The hardest part of circular systems isn't tech — it's logistics and human habits.",
        "Government rules (EU 2030 packaging law, France's plastic ban) are accelerating change."
      ],
      activities: [
        %{
          title: "Find your nearest refill store",
          description:
            "Search online for a refill or zero-waste store in your area. If there's one within reach, visit with a parent and bring an empty jar. Refill one product (oats, soap, anything). Compare the price per gram with the supermarket version. Is it more expensive? Less? The same? Why?"
        },
        %{
          title: "Design a take-back system",
          description:
            "Pick a product you use weekly — toothpaste, shampoo, snacks. Sketch a system where the empty container could be returned, cleaned, and refilled. Where would the collection point be? Who pays for shipping back? What stops people from forgetting? You're now thinking like a circular designer."
        },
        %{
          title: "Worn Wear deep dive",
          description:
            "Visit Patagonia's Worn Wear website (with adult permission). Pick one used jacket. Look at the price compared to the new version. Read the description — they tell you exactly what was repaired. Now ask: would you wear used clothes from your favourite brand if it cost half as much?"
        }
      ],
      end_question: %{
        prompt: "What is Patagonia's Worn Wear program?",
        options: [
          "A line of pre-distressed new clothes designed to look old",
          "A program that repairs, resells, and recycles used Patagonia gear",
          "A loyalty program that gives discounts after 10 purchases",
          "A sustainability report Patagonia publishes each year"
        ],
        correct: 1,
        explanation:
          "Worn Wear is Patagonia's circular program. They repair around 100,000 garments a year at their Reno facility, take customer trade-ins for store credit, and resell used gear at a discount. It's one of the best-known examples of a brand actively competing with itself to keep clothes in use longer."
      }
    },

    {"circular-economy", "design-for-circularity"} => %{
      intro:
        "Up to 80% of a product's environmental impact is locked in at the design stage — before a single tree is cut or a single drop of oil pumped. The future of sustainability isn't recycling better. It's designing differently.",
      sections: [
        %{
          heading: "The 80% rule",
          body:
            "Engineers have a saying: 'You can't recycle your way out of a bad design.' The European Commission estimates that 80% of a product's lifetime environmental impact is decided in the design phase. That includes:\n\n- What materials it's made of\n- How long it's meant to last\n- Whether it can be repaired\n- Whether it can be taken apart\n- What happens at end of life\n\nA shoe glued together can't be separated for recycling. A blender with screws can. A polyester-cotton t-shirt can't be mechanically recycled. A 100% cotton or 100% polyester one can.\n\nThe designer who picked the glue or the blend made a permanent decision that the consumer can never undo."
        },
        %{
          heading: "The Cradle to Cradle framework",
          body:
            "In 2002, architect William McDonough and chemist Michael Braungart wrote a book called 'Cradle to Cradle.' Their idea: products should be designed for one of two cycles.\n\n- Biological cycle: Things that touch the body or wear out (clothes, soap, rugs) should be made of materials that can safely biodegrade and become soil again.\n- Technical cycle: Things that don't wear out (phones, fridges, cars) should be made of materials that can be infinitely recycled at the same quality.\n\nThe problem is most products today live in neither cycle — they're a mash-up of biological and technical materials glued together. Like a sneaker with leather, foam, plastic, rubber, and glue. None of those materials can return to either cycle cleanly. So the whole shoe goes to landfill."
        },
        %{
          heading: "Real examples that work",
          body:
            "A handful of companies are already designing this way:\n\n- Fairphone makes a modular smartphone where you can swap the camera, screen, or battery yourself with a screwdriver. The Fairphone 5 is guaranteed for 8 years of software updates.\n- IKEA is redesigning furniture to be flat-packed AND disassembled — they've started buying back used Billy bookcases.\n- Veja sneakers use natural rubber from the Amazon and traceable cotton, with a glue-light construction so soles can be replaced.\n- MUD Jeans leases denim. You wear them, return them, and they shred them into fibre for new jeans — a real closed loop.\n\nNone of these companies are perfect. But they prove circular design is possible — even profitable."
        },
        %{
          heading: "What changes when designers think differently",
          body:
            "When you design for circularity, you ask new questions before you draw anything:\n\n- Where does every material come from?\n- Can a normal person take this apart with normal tools?\n- If this product fails, is it the user's fault or the design's?\n- Will the materials be valuable when this product 'dies'?\n\nThis kind of thinking is spreading. Universities now teach 'design for disassembly.' The EU's new 'Digital Product Passport' law (2027) will require electronics, batteries, and clothes to carry information about exactly what's inside them, so recyclers can do their job.\n\nThe next generation of designers — possibly including you — will inherit this challenge. The good news is that designing things to last is also more interesting than designing things to fail."
        }
      ],
      key_takeaways: [
        "80% of a product's environmental impact is decided at the design stage.",
        "Cradle to Cradle: materials should fit cleanly into either a biological OR technical cycle, not both.",
        "Fairphone, MUD Jeans, Veja, and IKEA show circular design works in real markets.",
        "Glue, blends, and unmarked materials are the enemies of recyclers.",
        "The EU's Digital Product Passport (2027) will force brands to disclose materials."
      ],
      activities: [
        %{
          title: "The disassembly test",
          description:
            "Pick three items from your home: a toy, a piece of clothing, and a small electronic device. For each, ask: could I take this apart with basic tools (screwdriver, scissors)? How many different materials does it contain? How many of those could be recycled separately? Rank them from most to least circular."
        },
        %{
          title: "Redesign your shoe",
          description:
            "Sketch your favourite sneaker. Label every material you can identify (rubber, foam, leather, plastic, fabric, glue). Now redesign it for the circular economy: how would you change the materials, the way it's joined together, and the end-of-life plan? You don't need to be an artist — stick figures and arrows are fine."
        },
        %{
          title: "Spot a Cradle to Cradle product",
          description:
            "Search 'Cradle to Cradle Certified products' online. Pick one that surprises you (carpets, baby clothes, wall paint — the list is huge). Read why it's certified. Then look around your home: what's the closest equivalent product you own? How does it compare?"
        }
      ],
      end_question: %{
        prompt: "Roughly what percentage of a product's environmental impact is decided at the design stage?",
        options: ["About 20%", "About 40%", "About 80%", "About 5%"],
        correct: 2,
        explanation:
          "The European Commission estimates around 80% of a product's lifetime environmental impact is locked in at the design phase — material choices, how it's joined, how long it lasts, whether it can be taken apart. That's why circular thinking has to start with designers, not just consumers."
      }
    },

    # =====================================================================
    # COURSE 2: FASHION
    # =====================================================================

    {"fashion", "fast-fashion-101"} => %{
      intro:
        "In 1995, the average person bought about 12 new pieces of clothing a year. Today they buy around 68. The clothes haven't gotten better — they've gotten faster. Way, way faster. 👕",
      sections: [
        %{
          heading: "From 4 seasons to 52 micro-seasons",
          body:
            "For most of fashion history, brands released 2 to 4 collections a year — spring, summer, autumn, winter. Designers had months to plan, factories had weeks to produce, and clothes were expected to last years.\n\nIn the 1990s, Spanish brand Zara changed everything. They figured out how to design, manufacture, and ship a new garment in 2 weeks. By the 2010s, fast fashion brands like H&M and Forever 21 were releasing new collections every week — about 52 'micro-seasons' a year.\n\nThen Shein arrived. Shein is a Chinese ultra-fast-fashion brand that launched globally in 2017. As of 2024, Shein adds around 6,000 new styles per DAY to its app. Not per year. Per day. The whole point is overwhelming choice and 24-hour turnaround. A trend you spot on TikTok at lunch can be a Shein product in your cart by dinner."
        },
        %{
          heading: "The numbers behind the speed",
          body:
            "The world now produces around 100 billion garments a year — about 12 for every person on Earth. We wear most of them less than 10 times before throwing them away.\n\nThe waste is staggering:\n\n- Around 92 million tonnes of textile waste are generated each year.\n- A garbage truck of clothing is burned or buried every second.\n- The fashion industry creates around 8–10% of global carbon emissions — more than international flights and shipping combined.\n- An estimated 35% of all microplastics in the ocean come from synthetic clothes.\n\nMost of the clothes we 'donate' don't get worn again. They get sorted and shipped to second-hand markets in Ghana, Kenya, or Chile, where about 40% are unwearable junk that goes straight to local landfills."
        },
        %{
          heading: "Who pays the real price",
          body:
            "Fast fashion clothes are cheap because someone, somewhere, is absorbing the real cost.\n\nIn Bangladesh, around 4 million garment workers — mostly women — make clothes for brands like H&M, Zara, Primark, and Walmart. The legal minimum wage is around $113 a month, far below a living wage. In 2013, the Rana Plaza factory in Dhaka collapsed, killing 1,134 workers. Cracks had appeared the day before. Managers told workers to come in anyway. Many of them were sewing clothes for Western brands.\n\nThe environment pays too. Rivers near garment-dyeing districts in China and India sometimes run literal rainbow colours from textile dye runoff. The Citarum River in Indonesia is so polluted by garment factories that it's been called the most polluted river on Earth."
        },
        %{
          heading: "Why we keep buying anyway",
          body:
            "Fast fashion is engineered to feel irresistible. Brands use:\n\n- Endless newness (you'll never see the same item twice on Shein's homepage).\n- Influencer hauls (TikTok 'Shein hauls' have billions of views).\n- Artificial scarcity ('only 3 left in your size!').\n- Prices so low it feels like there's no risk in trying.\n\nIt works. The average shopper now keeps a piece of clothing for half as long as they did 15 years ago. We wear it twice, post a photo, and move on.\n\nThe problem isn't that humans are bad. It's that the system is designed to short-circuit how we think about value. The first step out is just noticing the trick."
        }
      ],
      key_takeaways: [
        "Fashion went from 4 seasons a year to 52 micro-seasons in 30 years. Shein adds ~6,000 new styles per DAY.",
        "We make ~100 billion garments a year and waste ~92 million tonnes annually.",
        "The fashion industry causes 8–10% of global CO2 emissions — more than flights and shipping combined.",
        "The 2013 Rana Plaza collapse in Dhaka killed 1,134 garment workers making clothes for Western brands.",
        "Fast fashion is engineered using newness, scarcity, and influencer hauls to short-circuit how we think about value."
      ],
      activities: [
        %{
          title: "Closet headcount",
          description:
            "Count every piece of clothing in your wardrobe. Don't sort, don't tidy — just count. Now estimate how many you've actually worn in the last month. The gap between owned and worn is your personal fast-fashion footprint. Most people are surprised — usually the worn number is under 30%."
        },
        %{
          title: "The Shein scroll experiment",
          description:
            "With adult permission, open the Shein homepage. Set a timer for 5 minutes and scroll. Count how many products you see. Note how many you might have wanted to click on. Now ask: how would you remember any of these tomorrow? This is what 'engineered overwhelm' feels like."
        },
        %{
          title: "Track one shirt's journey",
          description:
            "Pick a t-shirt you own. Look at the label. Where was it made? What's it made of? Search the brand's website for any info on factory locations or wages. (Most won't have any.) The amount of information you can find is itself a measure of the brand's transparency."
        }
      ],
      end_question: %{
        prompt: "Roughly how many new styles does Shein add to its app each day?",
        options: ["About 60", "About 600", "About 6,000", "About 60,000"],
        correct: 2,
        explanation:
          "Shein adds around 6,000 new styles per day — far more than any traditional fashion brand. This is called 'ultra-fast fashion.' It's possible because Shein uses on-demand micro-batches: making just a few hundred units of each item, then mass-producing only the ones that go viral."
      }
    },

    {"fashion", "microplastics-and-polyester"} => %{
      intro:
        "Every time you wash your favourite hoodie, it sheds tiny bits of plastic into the ocean. By the end of this lesson, you'll understand exactly why — and what's actually worth doing about it.",
      sections: [
        %{
          heading: "What polyester actually is",
          body:
            "About 60% of clothing made today is polyester. Polyester is a kind of plastic. Specifically, it's a polymer made from petroleum — the same crude oil used to make gasoline and water bottles.\n\nPolyester became popular because it's cheap, strong, dries fast, and doesn't wrinkle. The downside is that it does what plastics always do: it doesn't biodegrade. A polyester t-shirt thrown in a landfill in 2025 will still be there in the year 2225.\n\nNylon, acrylic, and elastane (spandex) are also plastics. If your label says any of those, plus polyester, your clothes are made of oil. Worldwide, the textile industry uses around 70 million tonnes of plastic fibre a year — more than all the plastic bottles produced annually."
        },
        %{
          heading: "Microplastics and your washing machine",
          body:
            "Every wash, synthetic clothes shed tiny fibres — invisible bits of plastic less than 5mm long. These are called microplastics, or more specifically 'microfibres.'\n\nA 2016 study by Plymouth University found that a single 6kg load of synthetic laundry can release around 700,000 microfibres. They're too small for most washing machine filters and most water treatment plants. So they wash straight into rivers and oceans.\n\nMicroplastics have been found in: deep-sea fish, Arctic snow, human blood, human placentas, drinking water, and rain. Globally, an estimated 35% of all ocean microplastics come from washing synthetic clothes — making your laundry one of the largest plastic-pollution sources on Earth."
        },
        %{
          heading: "What actually helps",
          body:
            "You don't have to throw out all your polyester. (That would actually make it worse.) You just need to slow the shedding. Things that work:\n\n- Wash less. Wear hoodies and jeans more times between washes.\n- Wash colder. Cold water sheds far fewer fibres than hot.\n- Wash full loads. Less rubbing means less shedding.\n- Use a Guppyfriend bag or a Cora Ball — laundry tools designed to catch microfibres.\n- Air-dry. Tumble dryers are huge fibre-shedders, and the fibres go straight into the air.\n\nWhen you do buy new clothes, look for natural fibres — cotton, linen, wool, hemp — for items you'll wash often (t-shirts, underwear). Save synthetics for items you wash rarely (raincoats, athletic gear)."
        },
        %{
          heading: "Recycled polyester: progress or excuse?",
          body:
            "Many brands now sell 'recycled polyester' (rPET), often made from old plastic water bottles. It sounds great. The reality is more complicated.\n\nGood news: rPET uses about 30–50% less energy than virgin polyester and keeps bottles out of landfill — for one extra use.\n\nBad news: Once a bottle becomes a t-shirt, it's much harder to recycle again. Bottle-to-bottle is a closed loop. Bottle-to-shirt is usually a one-way trip to landfill. And rPET still sheds microplastics just like virgin polyester does.\n\nSo recycled polyester is better than virgin polyester — but it's not the answer. The real answer is using less synthetic material to begin with."
        }
      ],
      key_takeaways: [
        "Polyester is plastic — about 60% of all clothing today is made from petroleum-based fibres.",
        "A single 6kg load of synthetic laundry can shed ~700,000 microfibres.",
        "About 35% of ocean microplastics come from synthetic clothes washing.",
        "Wash less, wash cold, wash full loads, and use a Guppyfriend bag to cut shedding.",
        "Recycled polyester is better than virgin — but it still sheds microplastics and can't usually be recycled again."
      ],
      activities: [
        %{
          title: "Label hunt",
          description:
            "Open your wardrobe. Pick 10 items at random and read the labels. Count how many contain polyester, nylon, acrylic, or elastane. Calculate the percentage. Most homes are 60–80% synthetic without knowing it. Bonus: which item surprised you most?"
        },
        %{
          title: "The cold wash experiment",
          description:
            "For two weeks, wash all your laundry on cold (or 30°C / 86°F). Track whether anything got noticeably less clean. (Spoiler: it almost never does.) Cold wash can cut microfibre shedding by half AND saves a huge amount of energy — around 90% of a wash cycle's energy goes to heating water."
        },
        %{
          title: "Make a microplastic explainer",
          description:
            "Create a short poster, comic, or video (1 minute max) explaining how microplastics get from your washing machine to a fish to a human. You can use simple drawings or stop-motion. Share it with one friend or family member. Teaching is the fastest way to remember something yourself."
        }
      ],
      end_question: %{
        prompt: "About how many microfibres can a single 6kg load of synthetic laundry release?",
        options: ["About 7,000", "About 70,000", "About 700,000", "About 7 million"],
        correct: 2,
        explanation:
          "A 2016 Plymouth University study estimated around 700,000 microfibres per 6kg load of synthetic clothes. They're too small for most washing machine filters and most water treatment plants, so they end up in rivers and oceans. Washing colder, less often, and with a microfibre-catching bag are the main ways to cut shedding."
      }
    },

    {"fashion", "cost-per-wear"} => %{
      intro:
        "There's one math equation that quietly changes how you shop forever. It's called cost-per-wear, and once you've used it three times you can never un-see it.",
      sections: [
        %{
          heading: "The equation",
          body:
            "Cost per wear (CPW) = total cost of an item ÷ number of times you wear it.\n\nThat's it. One number, total honesty.\n\nA $200 wool sweater you wear 100 times costs you $2 per wear. A $20 fast-fashion top you wear 4 times costs you $5 per wear. The cheap thing was actually 2.5x more expensive per use.\n\nThe trick is that price tags lie. They tell you the cost at the moment of buying — not the cost across the item's life. CPW gives you the real number. It's the same kind of math grown-ups use when they ask 'cost per square foot' on a house, or 'cost per mile' on a car."
        },
        %{
          heading: "Why this changes everything",
          body:
            "When you start using cost per wear, three things happen.\n\n1. You stop being scared of higher price tags. A $150 pair of Levi's 501s that lasts 7 years often costs less per wear than the four $40 jeans you'll burn through in the same time.\n\n2. You start asking 'will I actually wear this 30 times?' before buying. The activist Livia Firth made this famous as the '30 wears test'. If the honest answer is no, don't buy it.\n\n3. You notice that some categories deserve splurging (everyday basics, coats, shoes) and others don't (one-off party outfits, trend pieces).\n\nThe goal isn't to spend more. It's to spend better."
        },
        %{
          heading: "Real CPW examples",
          body:
            "Here are real, normal examples (not fancy designer math):\n\n- A $35 Shein dress worn 3 times to one school dance and never again: $11.67 per wear.\n- A $80 pair of Vans worn 4 times a week for 2 years (~400 wears): $0.20 per wear.\n- A $300 winter coat worn every winter day for 6 years (~720 wears): $0.42 per wear.\n- A $25 trendy crop top worn twice and outgrown: $12.50 per wear.\n- A $60 backpack used daily for a school year (~180 wears): $0.33 per wear.\n\nNotice that durability and frequency matter more than the sticker price. The most 'expensive' looking thing on this list (the coat) had the second-lowest CPW."
        },
        %{
          heading: "When CPW gets tricky",
          body:
            "CPW isn't perfect. A few honest catches:\n\n- It's hard to predict wears in advance. Estimate honestly: would you wear it weekly, monthly, or once?\n- Quality is hard to assess from a webpage. Look at fabric content, stitching photos, and reviews mentioning longevity.\n- It only counts your wallet, not the planet. A $5 t-shirt with a CPW of $0.10 still cost the planet 2,700 litres of water and possibly underpaid a worker.\n\nThe full version of CPW that sustainability-focused designers use also includes 'cost per wear to the planet.' We'll go deeper into that in the Lifecycle course. For now, even just doing wallet-CPW is a huge upgrade from how most people shop."
        }
      ],
      key_takeaways: [
        "Cost per wear (CPW) = total cost ÷ number of wears.",
        "A $200 sweater worn 100 times beats a $20 top worn 4 times — $2 vs $5 per wear.",
        "The '30 wears test' (Livia Firth): if you wouldn't wear it 30 times, don't buy it.",
        "Splurge on basics, coats, and shoes. Skip splurging on one-off trend pieces.",
        "CPW only counts your money — it doesn't capture the cost to the planet or workers."
      ],
      activities: [
        %{
          title: "Calculate your top 5",
          description:
            "Pick 5 items in your wardrobe — your most-worn AND your least-worn. Estimate the cost of each and the number of times worn. Calculate cost per wear. Which item is the cheapest per wear? Which is the most expensive? Are you surprised?"
        },
        %{
          title: "The 30-wears pledge",
          description:
            "For your next 3 clothing purchases, before you check out, ask yourself out loud: 'Will I wear this at least 30 times?' If the honest answer is no, put it back. Track for one month how many items you DIDN'T buy because of this question. That's money saved AND waste avoided."
        },
        %{
          title: "Family CPW debate",
          description:
            "Pick one cheap item and one expensive item in your family's home — say, a $15 toaster and a $100 toaster. Calculate the cost per use over 5 years. Argue for the cheaper one. Then argue for the more expensive one. Which argument was easier? Why? CPW often turns out to favour quality, but not always."
        }
      ],
      end_question: %{
        prompt: "What is the cost per wear of a $120 jacket worn 80 times?",
        options: ["$0.15", "$0.50", "$1.50", "$15.00"],
        correct: 2,
        explanation:
          "$120 ÷ 80 wears = $1.50 per wear. Compare this to a $30 fast-fashion jacket worn 5 times ($6.00 per wear) and you can see why cost per wear often makes 'expensive' items the better deal."
      }
    },

    {"fashion", "spotting-greenwashing"} => %{
      intro:
        "If a brand uses the word 'sustainable' more than 5 times on a homepage, take a second look. Greenwashing — pretending to be eco-friendly without actually being eco-friendly — is now bigger business than real sustainability.",
      sections: [
        %{
          heading: "What greenwashing looks like",
          body:
            "Greenwashing is when a brand uses marketing to look environmentally responsible without making the changes to back it up. The term was coined in 1986 by environmentalist Jay Westerveld after he noticed hotels asking guests to 'save the planet' by reusing towels — while the hotel itself was demolishing reefs.\n\nIn fashion, greenwashing usually shows up as:\n\n- Vague words: 'eco-friendly,' 'natural,' 'conscious,' 'planet-positive.' None of these have legal definitions.\n- Green colors and leaf graphics on packaging.\n- A 'conscious' or 'eco' collection that's less than 1% of the brand's revenue.\n- Vague carbon claims: 'we offset our emissions' (with what? verified by whom?).\n- Hiding bad practices behind one good story (a brand bragging about recycled cotton in one shirt while using virgin polyester in 95% of their range)."
        },
        %{
          heading: "10 red flags every shopper should know",
          body:
            "Here are the signals to watch for:\n\n1. Words with no definition: 'eco,' 'green,' 'natural,' 'sustainable.'\n2. No third-party certifications listed (GOTS, Fair Trade, B-Corp, OEKO-TEX).\n3. A 'conscious collection' that's a tiny slice of total inventory.\n4. Carbon claims with no audited number.\n5. 'Recycled' fabric with no percentage given.\n6. No information about factories or wages.\n7. Sustainability page that's all photos of nature, no data.\n8. 'Vegan' marketed as eco-friendly (vegan leather is often plastic).\n9. Press releases instead of impact reports.\n10. Suing or pressuring critics. (Yes, this happens. Often.)\n\nIf a brand hits 5+ of these, you're looking at a marketing strategy, not a sustainability strategy."
        },
        %{
          heading: "Case study: H&M Conscious Collection",
          body:
            "In 2019, H&M launched its 'Conscious Collection' with great PR — clothes made from recycled polyester and organic cotton. The collection got covered everywhere as proof that fast fashion was changing.\n\nThen the Norwegian Consumer Authority looked into it. They found H&M's environmental claims were so vague they were misleading. H&M couldn't actually prove the items were more sustainable than its regular line. The Conscious Collection itself was a tiny fraction of H&M's total output. The same brand was producing around 3 billion garments a year, including thousands of new fast-fashion styles each season.\n\nH&M wasn't lying outright. They were doing what greenwashing always does: making one true claim very loudly while a much bigger, opposite truth sits quietly in the background. 🌿"
        },
        %{
          heading: "How to actually check a brand",
          body:
            "Before you buy from a brand that calls itself sustainable, do a 60-second check:\n\n1. Look for certifications. GOTS, Fair Trade, OEKO-TEX, B-Corp, Cradle to Cradle. These are independent. If there are none, that's a flag.\n2. Find a number. A real impact report has tonnes of CO2, percent of suppliers paying living wages, percent of materials recycled. Not just photos.\n3. Search '[brand name] greenwashing' or '[brand name] criticism.' Read what journalists and watchdogs have said.\n4. Check apps like Good On You — they grade brands A to E based on labour, environment, and animals.\n5. Look at price. A $5 t-shirt cannot be ethical. Cotton, dye, sewing, shipping, and a fair wage cost more than $5.\n\nDoing this on every purchase is exhausting. But doing it once for the brands you buy most often will reshape years of shopping."
        }
      ],
      key_takeaways: [
        "Greenwashing = pretending to be eco-friendly without being eco-friendly. Coined in 1986.",
        "Vague words ('eco,' 'natural,' 'conscious') without certifications or numbers are the #1 red flag.",
        "H&M's Conscious Collection was officially called misleading by Norwegian regulators.",
        "Real sustainability = third-party certifications + auditable numbers + supply chain transparency.",
        "The Good On You app grades brands A–E on labour, environment, and animal welfare."
      ],
      activities: [
        %{
          title: "Greenwashing scavenger hunt",
          description:
            "Pick 3 fashion brands you know. Visit their websites. Count how many times they use the words 'sustainable,' 'eco,' 'conscious,' or 'green.' Then count how many actual numbers (tonnes of CO2, % recycled, etc.) they share. The ratio of words to numbers tells you a lot."
        },
        %{
          title: "Good On You brand check",
          description:
            "Download or visit the Good On You website. Look up 5 brands you wear most. Note their grade (A–E) and the reasons. Were any surprising? Pick the lowest-rated one and find a higher-rated alternative for your next purchase."
        },
        %{
          title: "Spot the spin",
          description:
            "Find a 'sustainability page' from any major fashion brand. Read it slowly. Highlight every claim. For each, ask: is this measurable? Is there a third party verifying it? What % of the brand does this apply to? Most pages survive 60 seconds of this and collapse."
        }
      ],
      end_question: %{
        prompt: "Which of these is the BIGGEST red flag for greenwashing?",
        options: [
          "A brand uses leaf graphics on its packaging",
          "A brand's homepage features beautiful nature photography",
          "A brand makes vague claims like 'eco-friendly' with no third-party certifications or numbers",
          "A brand sells a t-shirt for over $50"
        ],
        correct: 2,
        explanation:
          "Vague language with no certifications and no audited numbers is the textbook greenwashing pattern. Real sustainability claims are specific, measurable, and verified by independent organisations like GOTS, Fair Trade, OEKO-TEX, or B-Corp. Pretty graphics and high prices alone don't tell you anything either way."
      }
    },

    # =====================================================================
    # COURSE 3: TEXTILE LIFECYCLE
    # =====================================================================

    {"textile-lifecycle", "from-fibre-to-landfill"} => %{
      intro:
        "Your t-shirt has lived a longer, weirder life than you have. Across 4 continents and 8 production stages before it ever hit the shop floor — let's trace it. 🌍",
      sections: [
        %{
          heading: "Stage 1–2: Field and gin",
          body:
            "Most cotton t-shirts start in a field — usually in the United States, India, China, Brazil, or Pakistan, the 5 biggest cotton producers. Cotton plants are grown for about 6 months before the white fluffy bolls are picked, mostly by machine in the US, often by hand in India.\n\nThe raw cotton then goes to a 'gin' (short for 'engine') — a machine that separates the fluffy lint from seeds and stems. The lint is bundled into bales weighing about 225 kg each. From here, the cotton might travel halfway around the world to be turned into yarn.\n\nA single t-shirt's worth of cotton may already have logged a thousand miles before it's even fibre."
        },
        %{
          heading: "Stage 3–4: Spinning and weaving",
          body:
            "Bales of cotton lint head to a spinning mill, often in China, India, Vietnam, or Turkey. There, machines twist the fibres into long threads called yarn. Cotton yarn for a t-shirt is usually 'combed' — a process that aligns the fibres for a smoother feel.\n\nThe yarn then goes to a knitting or weaving mill (sometimes the same factory, sometimes another country) where it becomes fabric. T-shirts use knit fabric — a stretchy interlocking pattern. Dress shirts use woven fabric — a stiffer over-under pattern.\n\nAt this stage, your shirt is just a roll of plain off-white fabric. It's already crossed 1–3 borders."
        },
        %{
          heading: "Stage 5–6: Dyeing and cutting",
          body:
            "Now the fabric needs colour. Dyeing happens in massive factories — China, Bangladesh, India, Vietnam — where rolls of fabric are dipped or sprayed with chemical dyes and then washed and dried.\n\nDyeing is one of the dirtiest steps in fashion. The textile industry is the second-largest polluter of clean water globally. Rivers downstream of dyeing districts often run blue, red, or black. Some dyes contain heavy metals like chromium and cadmium. OEKO-TEX certification (covered in the Brands course) is one way to verify dyes are safer.\n\nDyed fabric then goes to a cut-and-sew factory, often in Bangladesh, Cambodia, or Vietnam. There, workers cut the fabric using paper patterns and stitch the pieces into shirts. A single shirt might be touched by 10 different workers in 30 minutes."
        },
        %{
          heading: "Stage 7–8: Shipping and after",
          body:
            "The finished shirts are folded, bagged in plastic, packed into cardboard boxes, and loaded into shipping containers. They cross oceans on container ships — usually from Asia to Europe or North America. A container ship can carry tens of thousands of shirts at once.\n\nFrom the port, shirts go to warehouses, then to stores or directly to customers. By the time you wear it, your t-shirt has likely travelled 20,000+ miles.\n\nAnd then? You wear it 7 to 10 times on average (the global figure for fast fashion). When you're done, it most often goes to:\n- A landfill (about 73%)\n- A donation bin that ships it to Ghana or Chile (about 12%)\n- An incinerator (about 12%)\n- Actually recycled into new fabric (less than 1%)\n\nThat's the real lifecycle. From field to landfill in 18 months."
        }
      ],
      key_takeaways: [
        "A single t-shirt typically crosses 4+ countries before reaching you.",
        "The 8 stages: field → gin → spinning → weaving/knitting → dyeing → cutting → sewing → shipping.",
        "Textile dyeing is the second-largest polluter of clean water globally.",
        "Fast-fashion items are worn 7–10 times on average before being discarded.",
        "Less than 1% of clothing ever gets recycled into new clothing."
      ],
      activities: [
        %{
          title: "Trace your t-shirt",
          description:
            "Pick one t-shirt. Read the label. Look up where the cotton was grown (if mentioned), where the shirt was made, and where the brand is headquartered. Use Google Maps to roughly add up the distance. Most students find their shirt has travelled 15,000–30,000 miles before reaching them."
        },
        %{
          title: "Build the timeline",
          description:
            "On paper, draw a horizontal timeline of your t-shirt's life — starting with cotton seeds being planted and ending with the day you stop wearing it. Mark all 8 production stages and estimate roughly how much time each took. Compare with how long you'll actually wear it. (Spoiler: production probably took longer than wear.)"
        },
        %{
          title: "Stage interview",
          description:
            "Pick one of the 8 stages and research it for 15 minutes. Find one human story — a cotton farmer, a dyer, a sewing machine operator. Read or watch an interview with someone who works in that stage. Share three things you learned with one family member."
        }
      ],
      end_question: %{
        prompt: "Roughly what percentage of clothing ever gets recycled into new clothing?",
        options: ["Less than 1%", "About 10%", "About 25%", "About 50%"],
        correct: 0,
        explanation:
          "Less than 1% of clothing is recycled back into new clothing. Most discarded clothes go to landfill, get incinerated, or are shipped to second-hand markets in places like Ghana's Kantamanto market — where about 40% of arrivals are unwearable and end up in local landfills. We'll cover why true textile recycling is so hard in the Recycling course."
      }
    },

    {"textile-lifecycle", "why-blends-cant-be-recycled"} => %{
      intro:
        "Pick up a t-shirt and read the label. If it says '60% cotton, 40% polyester,' that shirt is almost impossible to recycle. Here's the chemistry of why.",
      sections: [
        %{
          heading: "What a blend actually is",
          body:
            "A blend is a fabric where two or more different fibre types are spun together into the same yarn. The most common blend is cotton-polyester, sometimes called poly-cotton or 'CVC' (chief value cotton).\n\nWhy do brands blend? Because each fibre brings different strengths. Cotton is soft and breathable. Polyester is cheap, stretchy, and wrinkle-resistant. Together they feel decent and cost less than 100% cotton.\n\nThe problem: at a fibre level, blended yarns are physically intertwined. Each thread of yarn has cotton and polyester twisted together. You can't pick the polyester out with a pair of tweezers, and you can't melt one without ruining the other."
        },
        %{
          heading: "Why mechanical recycling fails on blends",
          body:
            "Mechanical recycling shreds fabric back into fibre. It's how most clothing is recycled today. The shredder doesn't care what the fabric is — it just rips.\n\nThe problem with blends: after shredding, you get a mash-up of short cotton fibres and short polyester fibres mixed together. You can't separate them because they're physically the same size and shape after shredding. So the recycled fibre can only be used to make low-grade products like insulation, wiping rags, or stuffing for furniture. It can never become a new shirt.\n\nA 100% cotton or 100% polyester garment, by contrast, can be shredded and re-spun into fibre that's still useful for clothing — though the fibre gets shorter (and weaker) each time. We'll cover that in the next lesson."
        },
        %{
          heading: "Why chemical recycling is harder for blends",
          body:
            "Chemical recycling is the newer, fancier option. Instead of shredding, it dissolves the fabric down to its molecular level using heat and chemicals.\n\nThis can work on blends — sort of. Companies like Worn Again Technologies and Circ have built processes that dissolve polyester into one stream and cotton (cellulose) into another. The polyester gets re-polymerised into new polyester. The cotton becomes a kind of cellulose pulp that can be made into Lyocell-style fibre.\n\nBut chemical recycling is expensive (often 5–10x the cost of virgin material), uses a lot of energy and chemicals, and is barely operating at industrial scale. As of 2024, less than 0.1% of all clothing is chemically recycled. It's promising — but it's not the answer yet."
        },
        %{
          heading: "What this means for shopping",
          body:
            "Designers and recyclers have started using a phrase: 'mono-material design.' That means designing a garment with one fibre type only — 100% cotton, 100% wool, 100% polyester. Even the thread, label, and zipper match.\n\nWhen you buy:\n\n- Look for 100% single-fibre garments where possible. They're the easiest to recycle later.\n- Be aware of common 'invisible' blends: a shirt labelled 'cotton' often has 5% elastane for stretch. That's still a blend.\n- Avoid 'cotton-poly' for items you'll wash often — they shed microplastics AND can't be recycled.\n\nThe label on the back of your clothes is one of the most important sustainability signals. Most people never read it. Now you will."
        }
      ],
      key_takeaways: [
        "Blends physically twist different fibres together — they can't be separated mechanically.",
        "Mechanical recycling works fine on 100% single-fibre garments but fails on blends.",
        "Chemical recycling can split blends but uses lots of energy and is <0.1% of the industry.",
        "Mono-material design = one fibre only, including thread and labels — easiest to recycle.",
        "Even '100% cotton' shirts often contain 5% elastane. Read labels carefully."
      ],
      activities: [
        %{
          title: "Label audit",
          description:
            "Go through 15 items in your wardrobe and write down the fibre composition of each. Sort them into three piles: 100% one fibre, blended (2 fibres), or 3+ fibres. Calculate what percentage of your wardrobe is theoretically recyclable. (Most people are shocked by how few items are mono-material.)"
        },
        %{
          title: "The shredder thought experiment",
          description:
            "Imagine you have to invent a machine that pulls polyester out of cotton at the fibre level. Sketch how it might work. (You'll quickly realise why chemists have spent 20 years trying to solve this and only partially have.) The exercise builds intuition for why design matters more than recycling."
        },
        %{
          title: "Find a mono-material brand",
          description:
            "Search for clothing brands that explicitly design for recyclability — try names like 'For Days,' 'Mud Jeans,' 'Pangaia,' or 'Asket.' Pick one. Read their materials page. What's their longest-lasting product? What happens to it at end of life? Compare with a brand you usually shop."
        }
      ],
      end_question: %{
        prompt: "Why are cotton-polyester blends so hard to recycle?",
        options: [
          "The colours bleed into each other in the recycling machine",
          "The two fibres are physically twisted together at the yarn level and can't be separated easily",
          "Cotton is too heavy for recycling machines to process",
          "Polyester melts at room temperature"
        ],
        correct: 1,
        explanation:
          "In a blended yarn, cotton and polyester fibres are physically spun together — like braids. Mechanical recycling can shred but not separate them. Chemical recycling can split them by dissolving each fibre type into different streams, but it's expensive, energy-intensive, and barely operating at industrial scale (less than 0.1% of clothing today)."
      }
    },

    {"textile-lifecycle", "water-footprint"} => %{
      intro:
        "It takes about 2,700 litres of water to grow the cotton for one t-shirt. That's enough drinking water for one person for almost 3 years. Where does it all go? 💧",
      sections: [
        %{
          heading: "The 2,700 litre t-shirt",
          body:
            "The 2,700 litre figure comes from the Water Footprint Network, which tracks how much water it takes to make everyday items. For a single 250-gram cotton t-shirt:\n\n- About 2,500 litres go to growing the cotton plant (rain + irrigation).\n- About 100–200 litres go to processing the cotton — washing, spinning, dyeing.\n\nThat's roughly the same as filling a bathtub 50 times. Or providing one person their daily 2 litres of drinking water for 1,350 days.\n\nWhy so much? Cotton is a thirsty plant. It's also often grown in dry regions where it relies on irrigation, pulling water from rivers and underground aquifers."
        },
        %{
          heading: "The Aral Sea: when cotton drinks a lake",
          body:
            "In the 1960s, the Aral Sea was the 4th largest lake on Earth, sitting between Kazakhstan and Uzbekistan. The Soviet government decided the rivers feeding it should be diverted to grow cotton in the desert.\n\nIt worked, in a way. Uzbekistan became the world's 5th-largest cotton producer. But the Aral Sea began to vanish. By 2010, it had lost about 90% of its volume. Hundreds of fishing villages were left stranded miles from any water. The lake bed turned to toxic salt and pesticide dust that locals breathe to this day.\n\nIt's the most extreme example of cotton's water footprint, but it's not the only one. Pakistan's Indus River, India's groundwater, and the rivers of West Texas all show similar (smaller) versions of the same story."
        },
        %{
          heading: "How linen and hemp compare",
          body:
            "Not all natural fibres are thirsty. Some alternatives use a fraction of the water cotton does:\n\n- Linen (from flax): ~6–10 litres per shirt. Flax grows mostly on rainwater and uses fewer pesticides.\n- Hemp: similar to linen — very low water needs and grows fast in many climates.\n- Wool: the calculation is messier (sheep drink water, eat grass) but the per-shirt impact is generally lower than cotton.\n- Recycled cotton: cuts water use by about 50–80% compared with virgin cotton.\n\nLinen and hemp also tend to last longer than cotton. They wrinkle more (which is why they're less popular), but they're some of the most genuinely sustainable fibres available — and they were what most of the world wore before cotton dominated."
        },
        %{
          heading: "What about polyester's 'low water use'?",
          body:
            "You'll sometimes hear that polyester uses less water than cotton. That's technically true at the growing stage — there's no plant. But the comparison is misleading.\n\nPolyester is petroleum. The water required to extract, refine, and process oil into polyester is significant. And polyester's water cost continues every time you wash it (microplastics) and at end of life (it sits in landfill for centuries).\n\nA cleaner version of the comparison: cotton is high-water but biodegradable. Polyester is low-water at the start but creates ongoing water pollution forever. Neither is great. Recycled cotton, linen, hemp, and Tencel/Lyocell (made from sustainably-sourced wood pulp) are the closest things to a low-impact answer."
        }
      ],
      key_takeaways: [
        "One cotton t-shirt = ~2,700 litres of water (mostly to grow the cotton plant).",
        "The Aral Sea lost 90% of its volume to cotton irrigation between 1960 and 2010.",
        "Linen and hemp use ~6–10 litres per shirt — a tiny fraction of cotton's footprint.",
        "Polyester uses less water at the start but creates ongoing microplastic pollution.",
        "Recycled cotton cuts water use by 50–80% vs virgin cotton."
      ],
      activities: [
        %{
          title: "Bathtub math",
          description:
            "A standard bathtub holds about 50 litres of water. A standard t-shirt's water footprint is 2,700 litres. How many bathtubs is that? Now count the t-shirts in your wardrobe. How many bathtubs of water does your t-shirt collection represent? Most people end up with several swimming pools."
        },
        %{
          title: "Linen vs cotton experiment",
          description:
            "If you can find a linen shirt and a cotton shirt at home (or in a shop), compare them: how do they feel? How heavy is each? Which one wrinkles more? Which one looks like it would last longer? Linen has a harder feel but often lasts decades. Cotton is softer but wears out faster."
        },
        %{
          title: "Water audit",
          description:
            "For one day, track every time water is used in your home for textiles — washing clothes, drying them, ironing. Estimate the litres. Now add the 2,700 litres each cotton item already used to be born. Notice that the 'in-use' water is a small fraction of the 'birth' water. Where you intervene matters."
        }
      ],
      end_question: %{
        prompt: "Roughly how much water does it take to grow the cotton for ONE t-shirt?",
        options: ["27 litres", "270 litres", "2,700 litres", "27,000 litres"],
        correct: 2,
        explanation:
          "About 2,700 litres — enough drinking water for one person for nearly 3 years, or roughly 50 bathtubs. Most of that water goes to growing the cotton plant itself. Linen, hemp, and recycled cotton use a tiny fraction by comparison."
      }
    },

    {"textile-lifecycle", "lifecycle-lab"} => %{
      intro:
        "Time to put on a lab coat. We're going to compare four common garments side by side — a cotton tee, a polyester hoodie, a linen shirt, and a recycled fleece — and see which one really wins. 🧪",
      sections: [
        %{
          heading: "Garment 1: The cotton t-shirt",
          body:
            "Material: 100% conventional cotton.\n\nWater footprint: ~2,700 litres per shirt.\nCarbon footprint: ~5–7 kg CO2e per shirt.\nMicroplastics: zero.\nEnd of life: biodegradable in months to years if uncontaminated, BUT most cotton ends up in mixed-waste landfills where it doesn't break down well.\nLifespan: 1–3 years for fast fashion, 5+ years for higher-quality.\n\nVerdict: low microplastic impact, big water and pesticide impact (cotton uses about 16% of all insecticides applied globally — the most of any single crop). Organic cotton (look for GOTS certification) cuts pesticide use to near zero but still uses lots of water."
        },
        %{
          heading: "Garment 2: The polyester hoodie",
          body:
            "Material: 100% polyester (or 80/20 cotton-polyester for many fleece-style hoodies).\n\nWater footprint: low at production (~70 litres for fibre), but ongoing pollution from microfibre shedding.\nCarbon footprint: ~5–10 kg CO2e — actually higher than cotton because petroleum extraction is energy-intensive.\nMicroplastics: high. A hoodie may shed thousands of microfibres per wash.\nEnd of life: not biodegradable. Lasts 200+ years in a landfill.\nLifespan: 3–10 years (polyester is durable).\n\nVerdict: durable and dries fast, but the microplastic problem is real. Best for items rarely washed (raincoats, gym bags) — worst for items washed often (everyday hoodies, t-shirts, leggings)."
        },
        %{
          heading: "Garment 3: The linen shirt",
          body:
            "Material: 100% linen (from flax).\n\nWater footprint: ~6–25 litres per shirt — a tiny fraction of cotton.\nCarbon footprint: ~2 kg CO2e — among the lowest of any common fibre.\nMicroplastics: zero.\nEnd of life: fully biodegradable in months.\nLifespan: 5–20 years (linen actually gets softer with age).\n\nVerdict: linen is one of the most sustainable common fibres available. The downside? It wrinkles, costs more upfront, and isn't great for stretchy or athletic clothing. But for shirts, dresses, and bedding, it's the gold standard."
        },
        %{
          heading: "Garment 4: The recycled polyester fleece",
          body:
            "Material: Recycled polyester (rPET), often made from old plastic bottles.\n\nWater footprint: ~30 litres per garment (less than virgin polyester, much less than cotton).\nCarbon footprint: ~3–5 kg CO2e — about 30–50% lower than virgin polyester.\nMicroplastics: still high. Recycled polyester sheds just like virgin polyester.\nEnd of life: still not biodegradable. Recycling once means another stop on the way to landfill.\nLifespan: 5–10 years.\n\nVerdict: better than virgin polyester but worse than linen, hemp, or recycled cotton. The microplastic problem isn't solved by being recycled. Use a Guppyfriend bag, wash cold, and treat it as a once-recycled material that's heading to landfill eventually.\n\nOverall ranking (best to worst for the planet, roughly): Linen ≥ Hemp > Recycled Cotton > Organic Cotton > Recycled Polyester > Conventional Cotton > Virgin Polyester."
        }
      ],
      key_takeaways: [
        "Linen wins overall — low water, low carbon, biodegradable, long-lasting.",
        "Conventional cotton is high-impact: 2,700L water and 16% of global insecticide use.",
        "Polyester (virgin or recycled) sheds microplastics in every wash, no matter what.",
        "Recycled polyester cuts carbon by ~30–50% vs virgin — but still pollutes oceans.",
        "Lifespan and washing behaviour often matter MORE than which fibre you picked."
      ],
      activities: [
        %{
          title: "Score your favourite outfit",
          description:
            "Pick one outfit you wear often. For each piece, note the material. Use this lesson to estimate its water footprint, microplastic risk, and biodegradability. Give the whole outfit a 'planet score' from 1–10. Now think: which piece could you swap to raise the score the most?"
        },
        %{
          title: "Build a comparison chart",
          description:
            "Make a 4-column table: cotton, polyester, linen, recycled polyester. Add 4 rows: water, carbon, microplastics, lifespan. Fill it in from this lesson. Stick it on your wardrobe. Next time you shop, you have an instant cheat sheet."
        },
        %{
          title: "The wardrobe gap analysis",
          description:
            "Count how many items in your wardrobe are pure cotton, pure polyester, blended, or other natural fibres (linen, wool, hemp, silk). Calculate percentages. Then ask: what would happen if you replaced your next 3 polyester purchases with linen or hemp? Estimate the water savings."
        }
      ],
      end_question: %{
        prompt: "Which of these typically has the LOWEST overall environmental footprint per garment?",
        options: ["Conventional cotton t-shirt", "Virgin polyester hoodie", "Linen shirt", "Acrylic sweater"],
        correct: 2,
        explanation:
          "Linen wins on most metrics — low water (often under 25 litres per shirt), low carbon (~2 kg CO2e), no microplastics, and fully biodegradable. The main downsides are higher upfront cost and wrinkling. For everyday shirts, dresses, and bedding, linen is one of the most sustainable choices available."
      }
    },

    # =====================================================================
    # COURSE 4: SUSTAINABLE BRANDS
    # =====================================================================

    {"sustainable-brands", "reading-certifications"} => %{
      intro:
        "GOTS, Fair Trade, OEKO-TEX, B-Corp — those little logos on labels actually mean very specific things. By the end of this lesson you'll know the four big ones cold.",
      sections: [
        %{
          heading: "GOTS — the organic textile standard",
          body:
            "GOTS stands for Global Organic Textile Standard. It's run by an independent international group founded in 2002.\n\nWhat it covers: every step of textile production — from how the cotton (or wool, or linen) was grown all the way through dyeing, sewing, and packaging.\n\nWhat it guarantees:\n- At least 70% organic fibres (95%+ for the 'organic' label).\n- No toxic chemicals in dyeing or processing (no chlorine bleach, no formaldehyde, no banned dyes).\n- Fair wages and safe working conditions for everyone in the supply chain.\n- Wastewater treatment at all factories.\n\nGOTS is the gold standard for organic clothing. If a label says 'GOTS certified,' that piece has been audited by an outside party. If a label just says 'organic cotton' with no certification, ask why."
        },
        %{
          heading: "Fair Trade — the workers standard",
          body:
            "Fair Trade certification (run by Fairtrade International, with Fair Trade USA also active) is mostly about people, not the planet.\n\nWhat it guarantees:\n- Workers are paid at least a 'living wage' for their region.\n- No child labour, no forced labour.\n- Safe working conditions (no Rana Plaza-style buildings).\n- A 'Fair Trade premium' — extra money paid into community funds for schools, healthcare, or worker bonuses.\n\nFair Trade started with coffee and chocolate but expanded to clothing around 2010. Brands like Patagonia, Athleta, and prAna use Fair Trade Certified factories for many of their products.\n\nFair Trade doesn't say anything about the materials being organic or low-impact. So a Fair Trade certified t-shirt might still be conventional cotton with conventional dyes — but the workers were treated well. Pair it with GOTS for both."
        },
        %{
          heading: "OEKO-TEX — the chemical safety standard",
          body:
            "OEKO-TEX (the most common version is 'OEKO-TEX Standard 100') is a German certification founded in 1992. It only checks one thing: are the finished products safe for human skin?\n\nWhat it tests for:\n- Banned and restricted dyes (around 1,000 chemicals on the list).\n- Heavy metals (lead, cadmium, chromium).\n- Formaldehyde, pesticides, plasticisers.\n- Even pH levels and odour.\n\nOEKO-TEX doesn't say anything about whether the cotton was organic, where it was grown, or how the workers were paid. It just says: 'this fabric won't poison you when you wear it.'\n\nIt's especially important for baby clothes, underwear, and bedding — anything against your skin all day. Look for the green OEKO-TEX label. It's often paired with GOTS or Fair Trade for a fuller picture."
        },
        %{
          heading: "B-Corp — the whole-company standard",
          body:
            "B-Corp (short for 'Benefit Corporation') is different from the other three. It's not a textile certification — it's a whole-company certification.\n\nTo become a B-Corp, a company must score at least 80 out of 200 on the B Impact Assessment, which audits 5 areas:\n- Governance (does the company actually have sustainability built into its rules?)\n- Workers (wages, benefits, training).\n- Community (supplier diversity, charitable giving).\n- Environment (carbon, water, waste).\n- Customers (product safety, transparency).\n\nB-Corp re-audits every 3 years. As of 2024, around 8,500 companies are B-Corp certified worldwide. Patagonia, Allbirds, Eileen Fisher, Athleta, and Bombas are well-known fashion B-Corps.\n\nA B-Corp brand isn't perfect — but it has gone through a serious independent audit, which is more than most 'sustainable' brands have done."
        }
      ],
      key_takeaways: [
        "GOTS = organic fibres + no toxic chemicals + fair labour, across the full supply chain.",
        "Fair Trade = living wages, no forced/child labour, community premium for workers.",
        "OEKO-TEX = chemical safety only — the finished product is safe for skin contact.",
        "B-Corp = whole-company certification covering governance, workers, environment, community, customers.",
        "No single certification covers everything — look for combinations (e.g. GOTS + Fair Trade)."
      ],
      activities: [
        %{
          title: "Certification scavenger hunt",
          description:
            "Open your wardrobe and check 20 items for any of these four logos: GOTS, Fair Trade, OEKO-TEX, B-Corp. (You may need to look at hang-tags, brand websites, or care labels.) What percentage of your wardrobe is certified by ANY of them? Most people find it's under 10%."
        },
        %{
          title: "Match the certification to the gap",
          description:
            "Read these scenarios: (a) A factory pays workers $100/month in unsafe conditions. (b) A shirt is made with cotton sprayed with banned pesticides. (c) A baby pyjama set has formaldehyde residue. (d) A company donates to charity but its supply chain is opaque. For each, name the certification you'd most want to see fix it."
        },
        %{
          title: "Brand certification grid",
          description:
            "Pick 5 brands you wear or want to try. Visit each brand's website. Build a 5x4 table: brand on rows, the four certifications on columns. Mark each cell with Yes / No / Partial. Which brand has the most certifications? Which has none? Did anything surprise you?"
        }
      ],
      end_question: %{
        prompt: "Which certification primarily checks that workers are paid a living wage and treated fairly?",
        options: ["GOTS", "OEKO-TEX", "Fair Trade", "Cradle to Cradle"],
        correct: 2,
        explanation:
          "Fair Trade certification is focused on people: living wages, no forced or child labour, safe working conditions, and a 'Fair Trade premium' paid into community funds. GOTS covers organic materials AND fair labour, OEKO-TEX is purely chemical safety, and Cradle to Cradle is about circular product design."
      }
    },

    {"sustainable-brands", "supply-chain-transparency"} => %{
      intro:
        "Most clothing labels are designed to tell you as little as possible. 'Made in Italy' might mean 6 countries of work, 1 of which was Italy. Welcome to the world of supply chain transparency.",
      sections: [
        %{
          heading: "Tier 1, 2, 3, 4 — what supply chain levels mean",
          body:
            "When we say 'supply chain,' we mean the whole chain of factories and farms that make a piece of clothing. Most fashion brands divide it into 4 tiers:\n\n- Tier 1: Final assembly (cut and sew). Where the shirt is stitched together.\n- Tier 2: Fabric production (weaving, knitting, dyeing).\n- Tier 3: Yarn spinning.\n- Tier 4: Raw material (cotton field, oil well for polyester, sheep farm for wool).\n\nMost brands only know — or only disclose — Tier 1. They know which factory sewed the garment but not who spun the yarn or grew the cotton. That gap is where most labour and environmental abuse happens, because it's invisible to anyone outside the chain."
        },
        %{
          heading: "Why 'Made in Italy' can hide 6 countries",
          body:
            "Country-of-origin labels follow a rule called 'last substantial transformation.' That means a garment can be labelled with the country where the LAST major step happened — even if every step before that was somewhere else.\n\nExample: cotton grown in Pakistan, spun in India, woven in China, dyed in Bangladesh, cut in Romania, and final-stitched in Italy. The label legally says 'Made in Italy.'\n\nThis isn't always sneaky — sometimes brands genuinely don't know their full chain. But it does mean a 'Made in Italy' tag tells you almost nothing about the people who actually made most of the garment.\n\nBrands like Everlane, Patagonia, and Reformation have started publishing 'production maps' that show every factory, every country, every tier. It's still rare. But it's the gold standard."
        },
        %{
          heading: "The Fashion Transparency Index",
          body:
            "Every year since 2017, an organisation called Fashion Revolution publishes the Fashion Transparency Index. They score the world's 250 biggest fashion brands from 0–100% on how much they disclose about their supply chains.\n\nThe results are humbling. The 2023 index found:\n- The average score was 26%.\n- Only 12% of brands publish a list of their raw material suppliers (Tier 4).\n- Only 24% publish how many of their workers earn a living wage.\n- Some massive brands score under 10%.\n\nBrands consistently scoring well (50%+): OVS, Gildan, Kmart Australia, Esprit, H&M (yes, despite their other problems, they actually do disclose).\nBrands consistently scoring badly: Many luxury houses (LVMH brands), and most ultra-fast-fashion companies."
        },
        %{
          heading: "How to dig in yourself",
          body:
            "If you want to know where your clothes really come from, here's the workflow:\n\n1. Check the brand's 'About,' 'Sustainability,' or 'Transparency' page. Look for a factory list, a production map, or supplier names.\n2. Search 'Fashion Transparency Index [year]' and look up the brand's score.\n3. Check Good On You for an overall grade.\n4. If you find nothing, that itself is information. Brands hide what doesn't make them look good.\n5. Email or DM the brand and ask: 'Where do you spin your yarn? Where is your raw material from?' A few brands actually reply, and the response (or silence) tells you a lot.\n\nThe goal isn't to become a private investigator — it's to make the brands you support most often pass a basic transparency test."
        }
      ],
      key_takeaways: [
        "Supply chains have 4 tiers: assembly, fabric, yarn, raw material. Most brands only disclose Tier 1.",
        "'Made in Italy' can legally mean only the final stitch happened in Italy.",
        "The Fashion Transparency Index scores 250 brands annually — the average is just 26%.",
        "Only 12% of major brands publish their Tier 4 (raw material) suppliers.",
        "Production maps from brands like Patagonia and Everlane are the gold standard."
      ],
      activities: [
        %{
          title: "Map your t-shirt's tiers",
          description:
            "Pick one t-shirt. Try to find information for each tier: where was it sewn (Tier 1), where was the fabric made (Tier 2), where was the yarn spun (Tier 3), where was the cotton grown (Tier 4). Most brands only let you find Tier 1. That gap is the lesson."
        },
        %{
          title: "Score your brands",
          description:
            "Pick 5 brands you wear. Search 'Fashion Transparency Index 2023' (or latest). Look up each brand's score out of 100. Make a leaderboard. Rank from most to least transparent. Use this to decide who deserves your money next."
        },
        %{
          title: "Email a brand",
          description:
            "Pick a brand you like and email or DM them this question: 'Hi! For a school project, can you tell me where the cotton in your basic t-shirts is grown, and where the yarn is spun?' Track responses (or silence) over a week. The reaction is itself part of the answer."
        }
      ],
      end_question: %{
        prompt: "What does Tier 4 of a fashion supply chain refer to?",
        options: [
          "The store where the clothes are sold",
          "The final cut-and-sew assembly factory",
          "The fabric weaving and dyeing factory",
          "The raw material — cotton fields, oil wells, sheep farms"
        ],
        correct: 3,
        explanation:
          "Tier 4 is raw material — where the actual fibre starts. Tier 1 is the final assembly factory (cut and sew), Tier 2 is fabric production, Tier 3 is yarn spinning, Tier 4 is the cotton field, oil well, or sheep farm. Most brands only know and disclose Tier 1, which is where the transparency gap begins."
      }
    },

    {"sustainable-brands", "impact-reports"} => %{
      intro:
        "Every big brand publishes an annual 'sustainability report' or 'impact report.' Most are 80% PR and 20% data. Here's how to spot the difference and read them like a pro.",
      sections: [
        %{
          heading: "What an impact report should contain",
          body:
            "A real impact report — sometimes called a sustainability report, ESG report, or CSR report — is a document where a brand discloses what it did across environmental, social, and governance areas. The good ones include:\n\n- Total emissions in tonnes CO2e, broken down by Scope 1 (own operations), Scope 2 (electricity), Scope 3 (supply chain).\n- Water use and wastewater treatment.\n- Waste generated and percentage diverted from landfill.\n- % of factories audited; what audits found.\n- % of workers paid a living wage.\n- % of materials that are recycled, organic, or certified.\n- Year-over-year comparison so you can see actual change.\n\nIf a 50-page sustainability report has 3 graphs and 47 photos of forests, that's a brochure, not a report."
        },
        %{
          heading: "Scope 1, 2, and 3 explained",
          body:
            "When brands report carbon emissions, they use 3 'scopes':\n\n- Scope 1: Direct emissions from things the brand owns (their offices, their delivery trucks).\n- Scope 2: Indirect emissions from electricity the brand buys.\n- Scope 3: Emissions from everything in the brand's supply chain — manufacturing, materials, shipping, customer washing, end-of-life.\n\nScope 3 is usually 80–95% of a fashion brand's total emissions. So a brand that proudly reports being 'carbon neutral in our offices' is talking about 5% of their footprint.\n\nWatch for: brands disclosing Scope 1 and 2 but not Scope 3. That's the most common move in sustainability reporting. The real number is in Scope 3, and it's usually huge and growing."
        },
        %{
          heading: "Real progress vs PR fluff",
          body:
            "Here's how to tell the difference:\n\nReal progress looks like:\n- 'Our Scope 3 emissions decreased 8% this year.' (specific, measurable, comparable)\n- 'We audited 92% of Tier 1 suppliers; 14 failed and were given 90 days to remediate.' (named consequences)\n- 'We paid living wages to 64% of supply chain workers, up from 51% last year.' (year-on-year, with the bad number admitted).\n\nPR fluff looks like:\n- 'We're committed to a sustainable future.'\n- 'Our latest collection uses recycled materials.' (How much? In what %?)\n- 'We invested in nature-based solutions.' (Who? Verified by whom?)\n- 'We're proud to be carbon neutral.' (Through real reduction or offsets you can't verify?)\n\nA strong sustainability report is honest about failure. If everything in the report is positive, it's marketing."
        },
        %{
          heading: "The carbon-offset trap",
          body:
            "Many brands claim 'carbon neutrality' by buying carbon offsets — paying someone else to plant trees or protect a forest. The idea is fine in theory. In practice, offsets are riddled with problems.\n\nA 2023 investigation by The Guardian and Die Zeit found that more than 90% of forest carbon offsets sold by the world's largest certifier may not represent real reductions. Trees were claimed as 'protected' that were never going to be cut down. Trees were planted that died within years.\n\nGood offsets exist, but they're rare. The real question to ask is: how much has the brand reduced its own emissions before offsetting? A brand whose actual emissions went up 10% this year but bought offsets to claim 'neutrality' is greenwashing. A brand whose actual emissions went down 30% AND offset the rest with verified projects is doing real work."
        }
      ],
      key_takeaways: [
        "Real impact reports = numbers + year-over-year comparison + admitted failures.",
        "Scope 3 is 80–95% of a fashion brand's footprint — most brands quietly skip it.",
        "Living wage % and audit results with consequences are the hardest data to fake.",
        "Carbon offsets are often unreliable — real reduction matters more than offsetting.",
        "If everything in a report is positive, it's PR. Real reports admit problems."
      ],
      activities: [
        %{
          title: "Find a real impact report",
          description:
            "Pick a brand and search '[brand name] sustainability report 2023' (or latest). Open the PDF. Count the number of actual numbers vs the number of nature photos. Find their Scope 1, 2, 3 emissions if disclosed. Note whether Scope 3 is reported at all — and how it changed year over year."
        },
        %{
          title: "The honesty audit",
          description:
            "In the same report, find one negative thing the brand admits. (Examples: 'we missed our 2025 target,' 'X factory failed an audit,' 'emissions went up due to growth.') If you can't find a single negative, that's a sign. Strong reports are honest about what didn't work."
        },
        %{
          title: "Compare two brands",
          description:
            "Pick a fast-fashion brand and a slow-fashion brand. Look up both impact reports. Build a side-by-side table comparing Scope 3 disclosure, living wage %, and recycled material %. Which one is more transparent, even if neither is perfect?"
        }
      ],
      end_question: %{
        prompt: "What does Scope 3 emissions usually represent for a fashion brand?",
        options: [
          "About 5% of total emissions — usually their offices",
          "About 30% — mainly their stores and warehouses",
          "About 80–95% — emissions from the entire supply chain, materials, and customer use",
          "Only the carbon released by their delivery trucks"
        ],
        correct: 2,
        explanation:
          "Scope 3 covers the entire value chain — manufacturing, materials, shipping, customer washing, end-of-life. For most fashion brands it's 80–95% of their total emissions. Brands that report being 'carbon neutral' often mean only Scope 1 (their offices) and Scope 2 (their electricity), which is a small fraction of the real footprint."
      }
    },

    {"sustainable-brands", "brand-audit-project"} => %{
      intro:
        "Time to turn detective. Pick a brand, run them through the same 5-part framework Rewoven uses to grade 500+ brands, and see what your favourites really look like under the microscope.",
      sections: [
        %{
          heading: "The 5-part Rewoven framework",
          body:
            "Rewoven (and similar rating systems like Good On You, Remake, and Fashion Revolution) grade brands across five categories:\n\n1. Materials: What % of the brand's materials are organic, recycled, or low-impact?\n2. Supply chain: Do they disclose factories at all 4 tiers?\n3. Workers: Do they verify living wages and safe conditions?\n4. Climate: Do they disclose Scope 3? Are emissions falling?\n5. Circularity: Do they offer take-back, repair, or resale?\n\nEach category gets a 0–20 score. Total: 100 points. A brand scoring 80+ is genuinely doing something. A brand scoring under 30 is either greenwashing or just hasn't bothered."
        },
        %{
          heading: "Step-by-step: pick and audit a brand",
          body:
            "Here's how to actually do it:\n\n1. Pick a brand you've shopped from at least once.\n2. Spend 20 minutes on their website. Read the About, Sustainability, and Materials pages.\n3. Check Fashion Transparency Index for their score.\n4. Check Good On You for their grade.\n5. Look for an impact report. If they have one, read the executive summary.\n6. Score them 0–20 in each of the 5 categories.\n7. Total it. Add a one-paragraph 'verdict.'\n\nDon't worry about being perfect. Even a quick audit reveals more than most shoppers ever know about a brand. The discipline is what matters."
        },
        %{
          heading: "Worked example: a fictional brand",
          body:
            "Let's audit fictional brand 'GreenWearCo':\n\n- Materials (8/20): Their homepage says 'we use sustainable materials.' Looking deeper, only their 'eco-line' (about 5% of products) is organic cotton. The rest is conventional. Score reflects mostly conventional materials with a sliver of organic.\n- Supply chain (4/20): They list one factory in Portugal but no Tier 2/3/4 information. No production map.\n- Workers (6/20): Vague claim of 'safe working conditions' but no audits, no living wage data.\n- Climate (5/20): Reports Scope 1 and 2. No Scope 3 disclosed. No year-on-year comparison.\n- Circularity (3/20): No take-back program, no repair offering. Sells gift cards for clothing, not used clothing.\n\nTotal: 26/100. Verdict: Mid-range greenwashing. They've made some real efforts (a small organic line) but the bulk of their business looks like normal fast fashion with green marketing. Worth pushing them to do more."
        },
        %{
          heading: "What to do with your verdict",
          body:
            "An audit isn't the end — it's the start of being a different kind of customer.\n\nIf the brand scored 70+: Good. Reward them with your money. Tell friends.\n\nIf the brand scored 30–70: Mixed. Email them with a specific question — 'why don't you disclose Scope 3?' Brands respond more to customer pressure than activists. Your single email is a data point in their inbox.\n\nIf the brand scored under 30: Consider switching. There's almost always an alternative brand that scores higher in your category. Save the old brand for emergencies, not as your default.\n\nDoing this for the 5 brands you buy most often is the single biggest 'sustainable shopping' move you can make. It's worth more than 50 random ethical purchases."
        }
      ],
      key_takeaways: [
        "Audit framework: Materials, Supply Chain, Workers, Climate, Circularity — 20 points each.",
        "Use Fashion Transparency Index + Good On You as starting data.",
        "Real impact reports include Scope 3 and year-over-year change.",
        "Mid-range scores (30–70) often indicate partial greenwashing — push for more.",
        "Auditing your top 5 brands matters more than 50 random ethical purchases."
      ],
      activities: [
        %{
          title: "Audit a brand from your wardrobe",
          description:
            "Pick the brand you shop from most. Score them across all 5 categories using websites, the Fashion Transparency Index, and Good On You. Total their score. Write a 3-sentence verdict. This is your first complete brand audit."
        },
        %{
          title: "Build a personal scorecard",
          description:
            "List the 5 brands you wear most. Run a quick (15-minute) audit on each. Build a small leaderboard from highest to lowest score. Decide one brand to drop and one alternative to try next. Track your shopping for 3 months and see if your average score goes up."
        },
        %{
          title: "Class brand showdown",
          description:
            "If you're doing this with a class or family, divide brands among the group. Each person audits one brand and presents in 2 minutes. Build a master leaderboard for everyone. Argue about scores. (You'll discover that scoring is actually hard — and that's the point.)"
        }
      ],
      end_question: %{
        prompt: "Which combination is the BEST way to start auditing a brand?",
        options: [
          "Look at the price tag and read their Instagram captions",
          "Check Fashion Transparency Index, Good On You, and read their impact report",
          "Ask a friend if they like the brand",
          "Look only at the product reviews"
        ],
        correct: 1,
        explanation:
          "Fashion Transparency Index gives you a transparency score, Good On You gives you an A–E grade across multiple categories, and the brand's own impact report (if they have one) shows you the numbers. Combined, those three sources give you 80% of the picture in under 30 minutes."
      }
    },

    # =====================================================================
    # COURSE 5: RECYCLING
    # =====================================================================

    {"recycling", "mechanical-vs-chemical"} => %{
      intro:
        "Textile recycling sounds simple — old shirt in, new shirt out. The reality is two completely different technologies, both with serious limits. Here's what actually happens. 🔄",
      sections: [
        %{
          heading: "Mechanical recycling: shred and re-spin",
          body:
            "Mechanical recycling is the old, simple method. It works like this:\n\n1. Sort fabric by colour and material (hardest part — done by humans).\n2. Cut buttons, zippers, and labels off.\n3. Run the fabric through a shredder that pulls it back into raw fibre.\n4. Re-spin the fibre into yarn.\n5. Weave or knit new fabric.\n\nThis is how about 95% of all textile recycling happens today. It's cheap and uses little chemistry. The downside: the shredding process breaks the fibres into shorter pieces. Shorter fibres = weaker yarn = lower-quality fabric.\n\nThat's why most 'recycled cotton' garments are actually 20–30% recycled cotton blended with virgin cotton — to keep the strength up. 100% mechanically recycled cotton would feel rough and tear easily."
        },
        %{
          heading: "Chemical recycling: dissolve and rebuild",
          body:
            "Chemical recycling is the newer, fancier approach. Instead of shredding, it dissolves fabric down to its molecular level using solvents and heat.\n\nFor cotton (which is cellulose), chemical recycling can produce a pulp that's then spun into Lyocell-style fibre — basically virgin-quality.\n\nFor polyester (which is a polymer called PET), chemical recycling depolymerises it back into its original chemical building blocks, which can be re-polymerised into new polyester at virgin quality.\n\nThe big advantage: fibres can be recycled again and again at full strength. The big disadvantages: it's energy-intensive, requires industrial chemistry, and is extremely expensive (often 5–10x the cost of virgin material). Companies like Renewcell (Sweden), Worn Again (UK), Circ (US), and Infinited Fiber (Finland) are scaling this — but together they handle a tiny fraction of global textile waste."
        },
        %{
          heading: "Why both technologies are stuck",
          body:
            "Even the best textile recycling today recycles less than 1% of clothes back into new clothes. The bottlenecks:\n\n- Sorting is mostly manual. Humans pick through donated piles to separate cotton, polyester, blends, by colour. Automation is improving (NIR scanners can identify materials in milliseconds) but isn't widespread.\n- Blends still defeat mechanical recycling.\n- Chemical recycling is too expensive to compete with $0.50/kg virgin polyester from oil.\n- Donated clothes arrive with buttons, zippers, sequins, prints — all of which contaminate the recycling stream.\n- Demand for 'recycled' clothing is real but small. Brands prefer 100% virgin because it's easier and cheaper.\n\nUntil regulations make virgin material more expensive (or recycling subsidised), the economics keep recycling stuck."
        },
        %{
          heading: "Hopeful developments",
          body:
            "A few things give cautious hope:\n\n- Renewcell (Sweden) opened a chemical recycling plant in 2022 that can turn old cotton clothes into new cotton fibre at industrial scale. Brands like H&M and Zara have started using their fibre.\n- The EU's Strategy for Sustainable Textiles (2022) requires all clothing sold in the EU to be 'designed for circularity' by 2030.\n- Extended Producer Responsibility (EPR) laws in France require clothing brands to fund the collection and recycling of what they sell.\n- AI-powered sorting machines from companies like Tomra and Refiberd are starting to make textile sorting fast and cheap.\n\nProgress is slow but real. Today's <1% recycling rate is unlikely to be 50% by 2030, but it could realistically reach 10–20% — which would still mean billions of new garments made from old ones."
        }
      ],
      key_takeaways: [
        "Mechanical recycling = shred + re-spin. Cheap, but shortens fibres each cycle.",
        "Chemical recycling = dissolve + rebuild. Virgin-quality output but expensive.",
        "Less than 1% of clothing is recycled into new clothing today.",
        "Sorting (still mostly manual), blends, and cheap virgin materials are the bottlenecks.",
        "Renewcell, Circ, and EU Extended Producer Responsibility laws are pushing change."
      ],
      activities: [
        %{
          title: "Visit a recycling website",
          description:
            "Look up Renewcell, Circ, or Worn Again Technologies. Read their 'How it works' page. Try to explain the process in your own words to a family member in 60 seconds. Teaching forces you to understand."
        },
        %{
          title: "Sort like a recycler",
          description:
            "Take 10 garments from your wardrobe. Sort them into 4 piles: 100% cotton, 100% polyester, blended, other. How easy was it? How long did it take? Now imagine sorting 10 tonnes per hour with people from 10 countries who don't share a language. That's the textile recycling industry."
        },
        %{
          title: "Cost-benefit roleplay",
          description:
            "Imagine you run a brand. Virgin polyester costs $1/kg. Recycled polyester costs $4/kg. Customers don't reliably pay extra for recycled. Government won't subsidise. Argue for switching to 50% recycled anyway. What policies or business models would make it economically possible?"
        }
      ],
      end_question: %{
        prompt: "What's the main difference between mechanical and chemical textile recycling?",
        options: [
          "Mechanical uses water and chemical doesn't",
          "Mechanical shreds fabric back into fibre (shortening it); chemical dissolves it back to molecules (preserving fibre quality)",
          "Mechanical is for cotton, chemical is for polyester only",
          "Chemical is older and mechanical is newer"
        ],
        correct: 1,
        explanation:
          "Mechanical recycling shreds fabric, which physically cuts the fibres shorter — so recycled material is weaker and usually has to be blended with virgin material. Chemical recycling dissolves fabric down to its molecules, which can then be rebuilt into virgin-quality fibre. Chemical is more powerful but expensive and energy-intensive."
      }
    },

    {"recycling", "sorting-problems"} => %{
      intro:
        "When you donate clothes, you probably picture a kid trying them on. The reality is far weirder — most donated clothes never get worn again, and many end up in landfills 5,000 miles away.",
      sections: [
        %{
          heading: "What happens when you donate",
          body:
            "When you drop clothes at a charity bin, here's the typical journey:\n\n1. Sorted at a local warehouse. Around 10–20% are sellable in the local thrift store.\n2. The rest is bundled into bales (huge compressed cubes weighing ~500 kg) and SOLD by weight to international second-hand traders.\n3. Bales are shipped — often to Ghana, Kenya, Chile, or Pakistan — where local traders buy them sight-unseen.\n4. Local traders sort again, sell what's wearable in markets, and dump the rest.\n\nMost people don't know step 2 even exists. The 'donation' becomes a commodity sold by the kilogram on a global market that has nothing to do with charity."
        },
        %{
          heading: "Kantamanto: the world's biggest second-hand market",
          body:
            "Kantamanto Market in Accra, Ghana receives around 15 million used garments every week — most from the US, UK, Canada, and EU. About 5,000 traders work there.\n\nHere's the brutal math: roughly 40% of what arrives is unsellable junk. It's torn, stained, broken, or wrong for the local climate. Traders lose money on bales they can't sell. The unsellable clothes get dumped at the Old Fadama landfill — already overflowing — or burned on beaches. Mountains of Western fast-fashion now form part of Ghana's coastline. Local rivers and the Atlantic Ocean carry the rest.\n\nThe Or Foundation, a Ghana-based NGO, has documented the scale of this. They estimate Western brands generate billions of dollars in profit by exporting their waste problem to Ghana, while traders in Accra lose money trying to sort and sell it."
        },
        %{
          heading: "Why sorting is so hard",
          body:
            "The reason donated clothes don't just become recycled fibre is sorting. To recycle a t-shirt, you first need to know:\n\n- What fibre is it? (cotton, polyester, blend, wool…)\n- What colour is it?\n- Are the buttons, zippers, sequins, and prints removed?\n\nMost donations come without labels (or with fake/illegible labels). A human sorter looks at maybe 1,000 garments per hour. Big sorting facilities (like the SOEX plant in Germany) handle hundreds of tonnes per day, but even they struggle to keep up with the volume.\n\nNew tech is helping. Near-infrared (NIR) scanners can identify fibre types in milliseconds. AI cameras from companies like Refiberd can sort by colour and contamination. But these systems are expensive and still rare globally."
        },
        %{
          heading: "Better alternatives to the donation bin",
          body:
            "If you actually want your clothes to get worn again, here's what works better:\n\n- Sell or swap directly. Vinted, Depop, Poshmark, ThredUp, or in-person clothing swaps.\n- Donate locally and specifically. Women's shelters, refugee resettlement programs, and school drives often need specific items in good condition.\n- Use brand take-back. Patagonia, Levi's, H&M, Eileen Fisher, and others have take-back programs that route used clothes more responsibly.\n- Repair before donating. A torn shirt is rarely resold — it's far more likely to end up in landfill via the donation route.\n- For truly worn-out items, look for textile-only recycling bins (some cities have them).\n\nThe goal is matching the clothing with someone who actually needs it — not throwing it into the global second-hand commodity stream."
        }
      ],
      key_takeaways: [
        "Only ~10–20% of donated clothes get sold in local thrift stores.",
        "The rest is sold by the kilogram to international second-hand traders.",
        "Kantamanto Market in Ghana receives ~15 million used garments per week — 40% unsellable.",
        "Sorting is the bottleneck — most facilities still rely on human eyes.",
        "Direct local sale, swap, or brand take-back is much better than the donation bin."
      ],
      activities: [
        %{
          title: "Watch and learn",
          description:
            "Search 'Kantamanto Market documentary' or 'The Or Foundation Ghana.' Watch a 5–10 minute video. Note 3 things that surprised you. Share one with a family member who shops fast fashion."
        },
        %{
          title: "Plan a clothing swap",
          description:
            "Organise a clothing swap with 3–5 friends or family. Everyone brings 5 clean items they don't wear. Spread them out and trade. Leftover clothes go to a local women's shelter or refugee centre. You'll be amazed how much you find that you'd actually wear."
        },
        %{
          title: "Brand take-back research",
          description:
            "Pick 3 brands you wear. Search 'take-back program' for each. List which ones offer take-back, what they accept, and what they do with it. Many require you to mail items in. Try it once with one item and see what happens."
        }
      ],
      end_question: %{
        prompt: "Roughly how many used garments arrive at Ghana's Kantamanto Market each week?",
        options: ["About 15,000", "About 150,000", "About 1.5 million", "About 15 million"],
        correct: 3,
        explanation:
          "Around 15 million used garments arrive at Kantamanto Market in Accra every week — mostly shipped from the US, UK, Canada, and EU. About 40% of these clothes are unsellable junk that ends up in Ghana's overflowing landfills, on beaches, or in the ocean."
      }
    },

    {"recycling", "fibre-shortening"} => %{
      intro:
        "Every time a shirt is mechanically recycled, the fibres get shorter. After a few cycles, they're too short to make new clothes. Here's the science of why — and the hack the industry uses to get around it.",
      sections: [
        %{
          heading: "The fibre length problem",
          body:
            "Cotton fibre, in its natural state, is between 22 and 36 millimetres long (called 'staple length'). Longer staples make stronger, smoother yarn — which is why high-quality cotton like Egyptian or Pima is so prized; their fibres are extra-long.\n\nWhen you mechanically recycle cotton, the shredding process physically cuts those long fibres into shorter pieces. After one recycling cycle, fibre length might drop from 28mm to 14mm. After two, maybe 7mm. After three or four, the fibres are too short to spin into yarn at all.\n\nShorter fibres = weaker yarn = fabric that pills, tears, and feels rough. The same problem applies to wool, linen, and even polyester to a lesser extent."
        },
        %{
          heading: "Why 'recycled cotton' is usually 20%, not 100%",
          body:
            "If you check the label of a 'recycled cotton' t-shirt, it usually says something like '20% recycled cotton, 80% conventional cotton.'\n\nThat ratio isn't a marketing trick — it's a chemistry constraint. To get usable yarn, you have to mix the short recycled fibres with longer virgin fibres. The longer fibres act as a kind of skeleton, holding the structure together. Pure recycled cotton garments do exist but are rare, expensive, and often have a slightly rougher texture.\n\nA 2022 industry study by Textile Exchange estimated the average 'recycled cotton' garment globally is about 25% recycled content. Higher percentages are possible but require specialised processing and cost more."
        },
        %{
          heading: "How chemical recycling solves this",
          body:
            "Remember chemical recycling from the previous lesson? It dissolves fibre down to its molecular level — past the staple length entirely. The output is a kind of pulp made of cellulose molecules.\n\nFrom that pulp, you can spin brand new fibres at any length you want — basically virgin quality. This is the breakthrough that makes 100% recycled cotton garments possible at scale.\n\nThe Swedish company Renewcell is the leading example. Their 'Circulose' fibre is made entirely from old cotton clothes via chemical recycling, and it spins into yarn that's indistinguishable from virgin cotton. H&M has started selling clothes made from Circulose. The catch: the process is energy-intensive and currently produces a tiny fraction of the world's cotton supply (Renewcell handled around 60,000 tonnes/year at peak — versus the global cotton industry's ~25 million tonnes)."
        },
        %{
          heading: "What this means for your shopping",
          body:
            "When you see 'recycled cotton' on a label, here's how to read it:\n\n- 100% recycled cotton from chemical recycling (Circulose, Refibra, etc.) — gold standard, rare, often noted explicitly.\n- 20–30% recycled cotton (mechanical) blended with virgin — common, real but limited improvement.\n- 'Made with recycled cotton' (no percentage) — possibly as little as 5%. Vague claims usually mean small amounts.\n\nThe same logic applies to recycled polyester. 100% recycled polyester from a verified bottle source is real progress; 'recycled blend' could be much less.\n\nAlways ask: what % is recycled? If the brand can't or won't say, assume the smallest legally allowable amount."
        }
      ],
      key_takeaways: [
        "Mechanical recycling shortens fibres each cycle — after 3-4 rounds they're unusable.",
        "Most 'recycled cotton' garments are 20–30% recycled blended with longer virgin fibres.",
        "Chemical recycling (Renewcell's Circulose, etc.) breaks past the staple-length limit.",
        "100% mechanically-recycled cotton is rare, rough, and expensive.",
        "Always look for the actual recycled %. Vague claims usually mean very low amounts."
      ],
      activities: [
        %{
          title: "Read the recycled label",
          description:
            "Find any 'recycled' clothing item — at home or online. Read the actual % of recycled material. If no % is given, that's a flag. Search the brand's website for clarification. Most fast-fashion 'recycled collections' use 20% or less."
        },
        %{
          title: "Fibre experiment",
          description:
            "Take an old cotton t-shirt you don't want. Cut a small piece. Pull it apart with your fingers and look at the individual fibres. They're surprisingly short already. Imagine shredding the whole shirt — the fibres would be even shorter. This is what mechanical recycling looks like."
        },
        %{
          title: "Compare brands",
          description:
            "Find one brand using mechanically-recycled cotton (e.g. H&M's basic recycled tees) and one using chemically-recycled cotton (e.g. brands using Circulose, Refibra, or Lenzing fibres). Compare the % recycled, the price, and the fabric description. What does the price difference tell you about the cost of real circular recycling?"
        }
      ],
      end_question: %{
        prompt: "Why are most 'recycled cotton' garments only 20–30% recycled cotton?",
        options: [
          "Because brands want to charge more for less recycled content",
          "Because mechanical recycling shortens fibres, so they have to be blended with longer virgin fibres for strength",
          "Because there isn't enough used cotton in the world",
          "Because the law limits recycled content to 30%"
        ],
        correct: 1,
        explanation:
          "Mechanical recycling physically cuts cotton fibres shorter each time. To make a strong yarn, the short recycled fibres are mixed with longer virgin fibres that act as a skeleton. Chemical recycling avoids this by dissolving the fibres back to molecules — but it's expensive and only a tiny fraction of recycled cotton today comes from chemical processes."
      }
    },

    {"recycling", "design-a-recycling-system"} => %{
      intro:
        "Most cities don't have a real textile recycling pipeline. In this lesson, you'll design one from scratch — collection, sorting, processing, output — for a city of your choice.",
      sections: [
        %{
          heading: "The 4 stages every system needs",
          body:
            "Any working textile recycling system has four stages:\n\n1. Collection: How do clothes get from people's wardrobes to a sorting centre?\n2. Sorting: How are clothes separated by material, colour, and condition?\n3. Processing: How are sorted clothes turned into usable output (resold, repaired, mechanically recycled, chemically recycled, downcycled)?\n4. Output: Where does the final material go? Back into clothing? Insulation? Landfill (for the unrecyclable %)?\n\nMost cities have stage 1 (donation bins) but stages 2–4 are missing or outsourced abroad. A real pipeline keeps as much as possible local — reducing shipping carbon and creating local jobs."
        },
        %{
          heading: "Real cities doing this well",
          body:
            "A few real-world examples to learn from:\n\n- Amsterdam, Netherlands: Textile bins on every street. Sorted at a central facility (Wieland Textiles). About 50% reused, 30% recycled, 20% downcycled. The city has a goal of fully circular textiles by 2050.\n\n- Stockholm, Sweden: Partnership with H&M and Renewcell. Used clothes collected in stores, chemically recycled into new fibre, sometimes ending up back on H&M shelves.\n\n- Prato, Italy: For 200 years, Prato has been a global hub for wool recycling. They sort wool by colour and re-spin it without dyeing — saving massive amounts of water and chemicals. Almost all suit-quality wool in Europe touches Prato at some point.\n\n- France (national policy): Extended Producer Responsibility law since 2007. Clothing brands pay a small fee per garment sold. That fee funds Refashion, the national clothing recycling agency.\n\nNo city has 100% circular textiles yet. But these examples prove parts of the puzzle work."
        },
        %{
          heading: "Designing your system: key choices",
          body:
            "When you design a textile recycling pipeline for a city, these are the decisions:\n\n- Collection points: Curbside pickup, bins on streets, in-store drop-off, mail-in?\n- Funding: Tax dollars, brand fees (EPR), customer fees, donations?\n- Sorting tech: Manual labour, AI vision, NIR scanners — or a mix?\n- Local capacity: Where does the sorting facility sit? Who runs it? What skills do they need?\n- Output partnerships: Which brands buy your recycled fibre? Where do unsellable items go (insulation manufacturers, energy-from-waste plants)?\n- Public engagement: How do you teach citizens what to put in the bin and what NOT to (no shoes, no pillows, no wet clothes)?\n\nThere's no one right answer. The best systems are tailored to the city's size, climate, existing infrastructure, and local brands."
        },
        %{
          heading: "Common mistakes to avoid",
          body:
            "When students design recycling systems, they often make the same errors:\n\n1. Assuming the technology is the hard part. (It's not — the hard part is logistics and behaviour change.)\n2. Forgetting that 30–50% of donations may be too contaminated to recycle. Plan for that.\n3. Designing only for cotton or only for polyester. Real-world bins receive everything — pillows, shoes, blends, unidentifiables.\n4. Ignoring funding. Without an EPR law or government subsidy, the system can't compete with cheap virgin material.\n5. Skipping public education. Even good systems fail if citizens don't know how to use them.\n\nIf your design accounts for those 5 things, you've already done better than most real-world municipal systems."
        }
      ],
      key_takeaways: [
        "Every textile recycling pipeline needs 4 stages: collection → sorting → processing → output.",
        "Amsterdam, Stockholm, Prato, and France's national EPR law are real working examples.",
        "Sorting is usually the hardest stage. NIR scanners + AI vision are starting to help.",
        "Funding usually comes from EPR (brand fees), tax dollars, or both.",
        "Behaviour change and public education matter as much as technology."
      ],
      activities: [
        %{
          title: "Design your city's pipeline",
          description:
            "Pick a city you know well. On paper, design its textile recycling system. Where do bins go? Where's the sorting facility? Who funds it? What technology does it use? What % of clothes do you estimate would be reused, recycled, downcycled, or sent to landfill? Be specific."
        },
        %{
          title: "Steal from real cities",
          description:
            "Pick one of the cities mentioned in this lesson (Amsterdam, Stockholm, Prato, or any city with EPR like France). Search for an article or video about their textile recycling. Note 3 things they do that your city could copy. Email or post a question to your local council with one suggestion."
        },
        %{
          title: "The customer journey map",
          description:
            "Map every step a citizen takes from 'I have a worn-out shirt' to 'It became something new.' How many bins, transports, sorts, processes? What goes wrong at each step? Where could you make it easier? Behavioural friction is often the biggest barrier in real systems."
        }
      ],
      end_question: %{
        prompt: "Which is usually the hardest part of building a textile recycling system?",
        options: [
          "Inventing the chemistry to recycle fibre",
          "Sorting and logistics — getting the right material in the right pile",
          "Finding people willing to wear recycled clothes",
          "Designing attractive recycling bins"
        ],
        correct: 1,
        explanation:
          "Sorting and logistics are the chronic bottleneck. The chemistry of recycling exists; the engineering exists; what doesn't exist at scale is fast, cheap, accurate sorting of mixed donations into recyclable streams. Cities that crack sorting (often via AI/NIR scanners + manual triage + good public education) are the ones with working systems."
      }
    },

    # =====================================================================
    # COURSE 6: SUSTAINABLE LIFESTYLE
    # =====================================================================

    {"sustainable-lifestyle", "wardrobe-audit"} => %{
      intro:
        "On average, 60% of what's in your wardrobe is unworn. You bought it, you own it, you're paying for the closet space — and you don't wear it. Let's find that gap and close it. 🧺",
      sections: [
        %{
          heading: "The 60% that gets ignored",
          body:
            "Multiple studies — from WRAP in the UK to ThredUp's annual reports — keep finding the same number: about 60% of an average wardrobe goes unworn for at least a year. That means more than half of every clothing dollar is essentially wasted.\n\nWhy? A few reasons:\n\n- Impulse buys (especially online during sales).\n- Items bought for one occasion (a wedding, a costume party) and never worn again.\n- Things that don't fit (and we keep hoping they will).\n- Trend pieces that aged out fast.\n- Gifts we couldn't bring ourselves to return.\n\nThe wardrobe audit is the single best exercise for noticing how much of this you're doing — without judgment, just data."
        },
        %{
          heading: "How to audit (the simple version)",
          body:
            "Here's the basic 4-step audit:\n\n1. Take everything out of your wardrobe and pile it on the bed.\n2. Sort into 3 piles: WORE in the last 6 months, DIDN'T WEAR but want to keep, DIDN'T WEAR and don't really need.\n3. Count each pile. Calculate percentages.\n4. For pile 3, decide: sell, swap, donate, repair, or upcycle.\n\nThe whole thing takes 1–2 hours. You'll usually find the math is shocking — most people own 2–3x more than they actively wear.\n\nThe goal isn't a tiny minimalist closet. It's matching what you own to what you actually use, so the rest can find a better home."
        },
        %{
          heading: "Why this matters for the planet",
          body:
            "Every unworn garment in your wardrobe represents:\n\n- Water (often thousands of litres per shirt)\n- CO2 (3–10 kg per garment)\n- Worker hours (often paid below a living wage)\n- Materials (cotton, polyester, dye)\n\nNone of that gets 'redeemed' until the garment is worn. An unworn shirt is the worst-case planetary investment — all the cost, none of the use.\n\nThe most sustainable garment is the one you already own and actually wear. The audit is how you discover what that means in your specific wardrobe."
        },
        %{
          heading: "What to do with the unworn pile",
          body:
            "Once you've identified the unworn 60%, here's the order of options (best to worst for the planet AND best to worst for the next owner):\n\n1. Wear it more. (Sometimes the audit itself reminds you you love that shirt.)\n2. Repair or alter it. (A hem-up, a stretched waist taken in.)\n3. Sell directly. Vinted, Depop, eBay, Poshmark. Real money for items in good condition.\n4. Swap. With friends, at clothing swap events.\n5. Donate locally. To shelters, refugee programs, or specific charities (not the global commodity bin).\n6. Brand take-back program.\n7. Last resort: textile-only recycling bin.\n\nEach step matches the garment to a different kind of next user. Skipping straight to the donation bin (default for most people) is actually one of the worst options — most of those clothes end up shipped abroad and ultimately landfilled."
        }
      ],
      key_takeaways: [
        "On average, ~60% of a wardrobe is unworn for at least a year.",
        "An unworn garment is the worst-case planetary investment — all cost, no use.",
        "The basic audit: pull everything out, sort into Wore / Want to keep / Don't need.",
        "Selling and swapping route clothes to actual users; the donation bin often doesn't.",
        "The most sustainable garment is one you already own AND wear."
      ],
      activities: [
        %{
          title: "Run the full audit",
          description:
            "Block 90 minutes. Empty your wardrobe. Sort into the 3 piles. Count, calculate, photograph if you want. Take action on at least 5 items in the 'don't need' pile within 1 week — sell, swap, repair, or donate locally."
        },
        %{
          title: "The 30-day reverse hanger",
          description:
            "Turn every hanger in your wardrobe BACKWARDS. Every time you wear something and put it back, turn its hanger the right way around. After 30 days, every hanger still backwards = item you didn't wear. This is the lazy-version audit and it works beautifully."
        },
        %{
          title: "Track what you actually wear",
          description:
            "For 2 weeks, write down every clothing item you wear each day. At the end, count distinct items. Most people are shocked — they wear 15–25 items repeatedly while owning 100+. That tight 'core wardrobe' is the real you."
        }
      ],
      end_question: %{
        prompt: "On average, what percentage of an average wardrobe goes unworn for at least a year?",
        options: ["About 10%", "About 30%", "About 60%", "About 90%"],
        correct: 2,
        explanation:
          "About 60% of an average wardrobe is unworn — repeatedly confirmed by WRAP in the UK and ThredUp's annual reports. That means more than half of every clothing dollar is wasted, and a huge backlog of water, carbon, and labour sits unused on hangers."
      }
    },

    {"sustainable-lifestyle", "swap-donate-upcycle"} => %{
      intro:
        "When you're done with a garment, you've got 3 main options to extend its life: swap, donate, or upcycle. Each works for different things — and choosing right matters more than you'd think.",
      sections: [
        %{
          heading: "Swapping: best for clothes still in style",
          body:
            "A swap is when you trade clothes directly — usually with friends, at a clothing swap event, or via apps like Vinted, Depop, and ThredUp.\n\nWhy swapping is often the best option:\n\n- The next owner actively wanted the item (unlike the donation bin lottery).\n- You may get money or a different garment in return.\n- It's local — no shipping abroad, low carbon footprint.\n- It's social — clothing swap parties can be fun.\n\nIn-person swaps work best for kids' clothes (which fit a narrow age range), party outfits, and trend pieces. Vinted and Depop work better for selling specific items to specific buyers.\n\nThe rule of thumb: if a garment is still in good shape and still on-trend, swap or sell it before considering donating."
        },
        %{
          heading: "Donating: useful, but pick wisely",
          body:
            "Donating to a charity feels good. It's often less effective than people think — but it can still be the right choice if you do it right.\n\nWhen donating works:\n\n- You donate to a SPECIFIC need, not a generic bin. Women's shelters, refugee resettlement programs, school uniform exchanges, prison re-entry programs.\n- You donate items that match what's actually needed (kids' winter coats, professional clothing for job interviews).\n- You donate items in genuinely good condition. Stained or torn = trash, not donation.\n\nWhen donating fails:\n\n- A generic bin that exports unsorted clothes abroad.\n- Items that nobody locally needs.\n- Out-of-season clothing in the wrong hemisphere.\n\nA good rule: if you wouldn't give it to a friend, don't donate it. Charities are not free disposal services."
        },
        %{
          heading: "Upcycling: when items can't be reused as-is",
          body:
            "Upcycling means transforming a garment into something new and more valuable. Examples:\n\n- Cutting jeans into shorts.\n- Turning an old t-shirt into a tote bag.\n- Making a quilt from old shirts that have sentimental value.\n- Patching a torn item with visible mending (the Japanese tradition of 'sashiko' is a beautiful version).\n- Turning an oversized shirt into a smaller one by altering the seams.\n\nUpcycling works best when:\n\n- The original garment has a problem (stain, tear, doesn't fit) that prevents reuse.\n- You have time and basic sewing skills (or a willing parent/grandparent).\n- The new item will actually get used.\n\nThere's a whole movement around this on YouTube, TikTok, and Instagram. Search 'thrift flip' or 'upcycle tutorial' for inspiration. Some creators have built careers on it."
        },
        %{
          heading: "How to choose: a quick decision tree",
          body:
            "Use this simple decision tree:\n\n1. Does it still fit, look good, and is it on-trend? → Swap or sell.\n2. Is it specifically needed by a local cause (winter coats, kids' uniforms, work clothes)? → Donate locally and specifically.\n3. Does it have a problem (stain, tear, wrong size) but still has good fabric? → Upcycle or repair.\n4. Is it truly destroyed (paint, mould, irreversible damage)? → Textile-only recycling bin if your city has one. Last resort: trash.\n\nMost people default to step 4 (or the donation bin, which often becomes step 4 anyway). Doing 1–3 first means more clothes get a real second life."
        }
      ],
      key_takeaways: [
        "Swap = best for items still in style and good condition. Local, social, low carbon.",
        "Donate = useful only if specific to a real local need. Generic bins often fail.",
        "Upcycle = best for items with a fixable problem (tear, fit, stain).",
        "Decision order: swap → donate locally → upcycle → recycle → trash.",
        "The donation bin should be lower in the list than most people put it."
      ],
      activities: [
        %{
          title: "Run a clothing swap",
          description:
            "Invite 4–6 friends. Everyone brings 5 clean items they no longer wear. Spread them out, browse, and trade. Whatever's left gets sorted: donate to a specific local cause, upcycle, or recycle. Track how many items found new homes vs. went to disposal."
        },
        %{
          title: "Upcycle one item",
          description:
            "Pick one garment you don't wear that has a problem (too big, stained, out of style). Find a YouTube tutorial for an upcycle. Try it. Share before-and-after photos with a family member. Even a basic tee-to-tote bag conversion teaches you a lot about how clothes are constructed."
        },
        %{
          title: "Find a specific donation match",
          description:
            "Pick one cause you care about — a women's shelter, a refugee resettlement organisation, a school in need, a homeless youth program. Call or visit their website. Find out exactly what they need (often surprisingly specific: winter coats size XL, women's interview clothing, kids' shoes). Donate only that. Direct match > generic bin."
        }
      ],
      end_question: %{
        prompt: "Which option is usually BEST for a garment that's still in style and good condition but you don't wear?",
        options: [
          "Throw it in a generic donation bin",
          "Swap or sell it directly so the next user actually wants it",
          "Upcycle it into a tote bag",
          "Send it to a textile recycling facility"
        ],
        correct: 1,
        explanation:
          "Swapping or selling matches the garment to someone who actively wants it — which is what 'reuse' actually means. A generic donation bin often ships unsorted clothes abroad, where 40%+ end up in landfills. Upcycling is great for items with problems, but a perfectly good garment doesn't need transformation — it just needs a new owner."
      }
    },

    {"sustainable-lifestyle", "eco-habits-tracker"} => %{
      intro:
        "Big system change matters. So do small daily habits — and 10 small ones, done consistently, can save around 2 tonnes of CO2 a year per person. Here are the 10 worth tracking. 🌱",
      sections: [
        %{
          heading: "The 10 highest-impact daily habits",
          body:
            "Sustainability researchers (especially the team behind Project Drawdown) have ranked which everyday habits actually move the needle. The top 10 for an individual:\n\n1. Eat less meat (especially beef and lamb). One meatless day a week saves ~200 kg CO2/year.\n2. Cold-wash and air-dry laundry. Saves ~150 kg CO2/year + cuts microfibres.\n3. Cut food waste. The average household wastes 30% of food bought. Cutting this saves ~300 kg CO2/year.\n4. Use refillable water bottles and coffee cups. Saves ~100 single-use items/year.\n5. Walk, bike, or bus instead of car for trips under 5 km. Saves ~500 kg CO2/year if done 3x/week.\n6. Lower thermostat by 1°C in winter, raise by 1°C in summer. Saves ~250 kg CO2/year.\n7. Switch to LED lightbulbs throughout the house. ~100 kg CO2/year.\n8. Skip impulse fashion buys (use the 30-wears test). ~50 kg CO2/year per avoided fast-fashion item.\n9. Compost food scraps. Saves the methane emissions from food in landfill.\n10. Use a power strip and turn it off at night. Saves ~80 kg CO2/year of 'phantom' electricity.\n\nAdded up, these 10 habits routinely save 1.5–2.5 tonnes of CO2 per person per year — about 15% of an average personal footprint."
        },
        %{
          heading: "Why tracking actually matters",
          body:
            "Studies on behaviour change consistently find: tracking a habit makes you 2–3x more likely to keep doing it. (This is why fitness apps work.)\n\nFor sustainability, tracking does three useful things:\n\n- Makes invisible impacts visible. (You can't feel the CO2 you didn't emit, but you can count meatless meals.)\n- Builds momentum. Each checked box reinforces the behaviour.\n- Helps you find what works for your life specifically. Some habits will be easy, others won't.\n\nThe simplest tracker is a paper checklist on your fridge. Apps like Joro, Capture, or Earth Hero do the same thing digitally with footprint estimates."
        },
        %{
          heading: "The compound effect",
          body:
            "Here's the magic of small habits. Skipping one beef dinner per week = 200 kg CO2 saved a year. That sounds small. But over 50 years of life, it's 10 tonnes — equivalent to flying from London to New York 12 times.\n\nNow imagine all 10 habits, done by you, plus your family, plus your friends. Habits are contagious — one of the strongest predictors that someone will take a sustainability action is having a friend or family member who already does it.\n\nThe 'individual action vs. system change' debate is a false choice. Individual actions are how systems change. Companies pay attention when customer behaviour shifts. Politicians follow voters. The first 10% of a population doing something differently can flip the rest."
        },
        %{
          heading: "What NOT to obsess over",
          body:
            "A few things people obsess about that don't matter as much:\n\n- Plastic straws. Real, but tiny. Don't let it distract from bigger choices.\n- 'Eco-friendly' product swaps that involve buying NEW stuff. Often just consumerism with a green coat.\n- Perfect zero-waste. Aim for less waste, not none.\n- Guilt-tripping yourself or others. Doesn't change anything.\n\nThe high-leverage moves are: meat reduction, transportation, clothing buying, energy use, and food waste. Don't let small stuff distract from the big stuff. 80% of your impact comes from 20% of your choices."
        }
      ],
      key_takeaways: [
        "10 simple daily habits can save ~1.5–2.5 tonnes of CO2/year per person.",
        "Highest-leverage habits: less meat, less car, less fast fashion, less food waste.",
        "Tracking habits makes you 2–3x more likely to keep them.",
        "Habits are contagious — your behaviour shifts your friends and family.",
        "Don't sweat plastic straws when bigger levers (meat, cars, clothes) are right there."
      ],
      activities: [
        %{
          title: "Build your tracker",
          description:
            "Pick 5 habits from the list of 10 — the ones that feel most doable for you. Write them on a sticky note or paper, stick on your wall or fridge. Check off each day you do them. Track for 30 days. Most people are surprised how much easier it gets after 2 weeks."
        },
        %{
          title: "Calculate your potential savings",
          description:
            "Pick the 3 habits you don't currently do. Use the kg-CO2 estimates in this lesson to add them up. That's your potential annual saving. Now imagine doing it for 10 years. Multiply. The number gets impressive fast."
        },
        %{
          title: "Habit buddy",
          description:
            "Pick one friend or family member. Both of you commit to one new habit for 30 days — same habit if possible. Check in daily by text. Buddy systems make habits stick. After 30 days, swap progress notes and pick the next habit together."
        }
      ],
      end_question: %{
        prompt: "Which of these habits typically saves the MOST CO2 per year for an individual?",
        options: [
          "Skipping plastic straws",
          "Walking, biking, or busing instead of driving for short trips",
          "Switching to LED lightbulbs",
          "Using a reusable water bottle"
        ],
        correct: 1,
        explanation:
          "Replacing short car trips with walking, biking, or public transit can save around 500 kg of CO2 per year if done a few times a week. That's far more than plastic straws or LED bulbs (still good!) or reusable bottles. The biggest individual levers are transportation, meat consumption, clothing, and home energy."
      }
    },

    {"sustainable-lifestyle", "thirty-day-challenge"} => %{
      intro:
        "Thirty days, thirty actions. One small move per day, building habits that stick long after the calendar ends. Here's the structure of the challenge — print it, share it, do it.",
      sections: [
        %{
          heading: "How the 30-day challenge works",
          body:
            "Each day for 30 days, you do ONE small sustainability action. The actions are designed to:\n\n- Take 5–30 minutes max.\n- Cost nothing (or save money).\n- Be doable from home or your usual routine.\n- Build on each other — by day 30 you've created several lasting habits.\n\nThe goal isn't to complete every single one perfectly. It's to do 80% of them and have 5–10 actions stick as new long-term habits. Studies show that most behaviours need 21–66 days of repetition to become automatic. 30 days is enough to plant a few real ones."
        },
        %{
          heading: "Week 1: Awareness (notice your impact)",
          body:
            "Day 1: Count your wardrobe. Write the number down.\nDay 2: Read 3 clothing labels. Note country and material.\nDay 3: Track your trash for one day. Take a photo at end of day.\nDay 4: Check your home for any items still in original packaging that you've never used.\nDay 5: Count single-use plastic in one meal.\nDay 6: Look up the Fashion Transparency Index score for your favourite brand.\nDay 7: Write down what you ate for one day, marking each as plant or animal.\n\nThe theme of week 1 is just NOTICING. You can't change what you don't see."
        },
        %{
          heading: "Week 2: Swaps (change small things)",
          body:
            "Day 8: Wash one load of laundry on cold water.\nDay 9: Refill an empty plastic bottle and use it for the day.\nDay 10: Walk or bike one trip you'd normally drive.\nDay 11: Eat one entirely plant-based meal.\nDay 12: Repair one broken or damaged item.\nDay 13: Use a cloth bag (or no bag) for shopping.\nDay 14: Skip one impulse purchase. Wait 24 hours, then decide.\n\nWeek 2 is about replacing one-time defaults with sustainable alternatives. Each swap takes effort the first time and gets easier the second."
        },
        %{
          heading: "Weeks 3 & 4: Building (make it last)",
          body:
            "Day 15: Audit your wardrobe (full version). Sort into 3 piles.\nDay 16: List 10 items you'd sell, swap, or upcycle.\nDay 17: Take 5 items to a swap, sale, or specific donation.\nDay 18: Cook one meal using only what's already in the fridge — zero food waste.\nDay 19: Compost food scraps for one day.\nDay 20: Email or DM one brand asking about their supply chain.\nDay 21: Watch a sustainability documentary (try 'The True Cost' about fashion, or 'Kiss the Ground' about soil).\nDay 22: Repair another item.\nDay 23: Make one upcycle (t-shirt to tote, jeans to shorts).\nDay 24: Tell one friend about a sustainability tip you've learned.\nDay 25: Find a refill store, second-hand shop, or repair café in your area. Visit one.\nDay 26: Calculate the CO2 you've saved this month (rough estimate).\nDay 27: Plan one habit you'll keep for the rest of the year.\nDay 28: Commit to one habit you'll keep for the rest of your life.\nDay 29: Share your favourite habit with your class, family, or social media.\nDay 30: Plan next month's challenge — what's the next level?\n\nWeeks 3–4 build durable habits and connect you to a community. The challenge ends, but the patterns continue."
        }
      ],
      key_takeaways: [
        "30 actions over 30 days = enough time to build several lasting habits.",
        "Week 1: notice. Week 2: swap. Weeks 3–4: build and share.",
        "Aim for 80% completion, not perfection.",
        "The actions sticking matter more than the chart being perfectly filled in.",
        "Habits multiply when shared with friends, family, or class."
      ],
      activities: [
        %{
          title: "Print your calendar",
          description:
            "Make a simple grid: 7 columns (days of the week), 5 rows (4 full weeks + a half row). Write one action in each box from this lesson. Stick it on your wall or fridge where you'll see it daily. Cross off each day as you do it."
        },
        %{
          title: "Recruit a partner",
          description:
            "Ask one friend, sibling, or parent to do the challenge alongside you. Check in daily — text or in person. People who do habit challenges with someone else complete them at roughly 2x the rate of solo participants."
        },
        %{
          title: "Reflect at day 30",
          description:
            "On day 30, write a one-page reflection: what was easiest? What was hardest? What surprised you? Which habits will you keep? Pick exactly 3 to commit to for the next 90 days. Then start a new 30-day challenge with different actions."
        }
      ],
      end_question: %{
        prompt: "What's the realistic goal of a 30-day sustainability challenge?",
        options: [
          "Complete every action perfectly with no mistakes",
          "Build 5–10 lasting habits, even if you skip some days",
          "Become a zero-waste expert in one month",
          "Get social media followers"
        ],
        correct: 1,
        explanation:
          "The point isn't perfection — it's planting durable habits. Studies show new behaviours need 21–66 days of repetition to become automatic. 30 days is enough to lock in several. Aim for 80% completion and pick 3–5 habits to carry past day 30. Those long-term changes are the real win."
      }
    }
  }

  @doc """
  Look up a lesson's full content by course slug and lesson slug.

  Returns nil if the lesson doesn't exist.
  """
  def content(course_slug, lesson_slug) do
    Map.get(@lessons, {course_slug, lesson_slug})
  end

  @doc "Returns all lessons as a map keyed by {course_slug, lesson_slug}."
  def all, do: @lessons

  @doc "Total number of lessons with content."
  def count, do: map_size(@lessons)
end
