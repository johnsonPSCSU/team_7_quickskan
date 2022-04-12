class ListItem {
  int index;
  String value;
  String name;
  String image;
  String description;
  String longDescription;

  ListItem(this.index, this.value, this.name, this.image,
      this.description, this.longDescription);
}

List<ListItem> listItems = [
  ListItem(
      0,
      "Scroll to Disease",
      "About\n QuickSkan",
      "quickskan-info.png",
      '"Helping the world one QuickSkan at a time"',
      "This application is a skin disease recognition software developed by Senior Computer Science Students at the Southern Connecticut State University:\nPaul Johnson and Radovan Prokrajac.\n\n"
      
      "This application is developed using the HAM10000 dataset for skin disease and the we developed our model using Tranfer Learning of MobileNetV2.\n\n"
      
      "This application should only be used for a cursory diagnosis. You should consult with a licensed medical professional for any and all medical concerns\n\n"
      "This application can only test for 7 different classifciations of skin diseases and you can find information about each one below"
      ),
  ListItem(
      1,
      "Actinic Keratoses",
      "Actinic Keratoses \n&\nIntraepithelial Carcinoma",
      "imgs/akiec.jpg",
      "An actinic keratosis is a rough, scaly patch on the skin that develops from years of sun exposure. It's often found on the face, lips, ears, forearms, scalp, neck or back of the hands.\n\n"
      "Signs and symptoms include:\n"
      "-Rough, dry or scaly patch of skin, usually less than 1 inch (2.5 centimeters) in diameter\n"
      "-Flat to slightly raised patch or bump on the top layer of skin\n"
      "-In some cases, a hard, wartlike surface\n"
      "-Color variations, including pink, red or brown\n"
      "-Itching, burning, bleeding or crusting\n"
      "-New patches or bumps on sun-exposed areas of the head, neck, hands and forearms",
      "Acitinic Keratoses can develop into Intraepithelial Carcinoma without early treatment so it is imperative you see a doctor if you suspect you have either condition."
      ),
    ListItem(
      2,
      "Basal Cell Carcinoma",
      "Basal Cell Carcinoma",
      "imgs/bcc.jpg",
      "Basal cell carcinoma often appears as a slightly transparent bump on the skin, though it can take other forms. Basal cell carcinoma occurs most often on areas of the skin that are exposed to the sun, such as your head and neck.\n\n"
      "Signs and symptoms include:\n"
      "-A shiny, skin-colored bump that's translucent, meaning you can see a bit through the surface. The bump can look pearly white or pink on white skin. On brown and Black skin, the bump often looks brown or glossy black. Tiny blood vessels might be visible, though they may be difficult to see on brown and Black skin. The bump may bleed and scab over.\n"
      "-A brown, black or blue lesion — or a lesion with dark spots — with a slightly raised, translucent border.\n"
      "-A flat, scaly patch with a raised edge. Over time, these patches can grow quite large.\n"
      "-A white, waxy, scar-like lesion without a clearly defined border.",
      "Basal cell carcinoma occurs when one of the skin's basal cells develops a mutation in its DNA."
      "Basal cells are found at the bottom of the epidermis — the outermost layer of skin. Basal cells produce new skin cells. As new skin cells are produced, they push older cells toward the skin's surface, where the old cells die and are sloughed off.\n\n"
      "Make an appointment with your health care provider if you observe changes in the appearance of your skin, such as a new growth, a change in a previous growth or a recurring sore."
      ),
    ListItem(
       3,
      "Benign Keratosis",
      "Benign Keratosis",
      "imgs/bkl.jpg",
      "Benign Keratosis is a common noncancerous (benign) skin growth. People tend to get more of them as they get older. Benign keratoses are usually brown, black or light tan. The growths (lesions) look waxy or scaly and slightly raised. They appear gradually, usually on the face, neck, chest or back.\n\n"
      "Signs and symptoms include:\n"
      "-A round or oval-shaped waxy or rough bump, typically on the face, chest, a shoulder or the back\n"
      '-A flat growth or a slightly raised bump with a scaly surface, with a characteristic "pasted on" look\n'
      "-Varied size, from very small to more than 1 inch (2.5 centimeters) across.\n"
      "-Varied number, ranging from a single growth to multiple growths.\n"
      "-Very small growths clustered around the eyes or elsewhere on the face, sometimes called flesh moles or dermatosis papulosa nigra, common on Black or brown skin.\n"
      "-Varied in color, ranging from light tan to brown or black.\n"
      "-Itchiness.",
      
      "See your doctor if the appearance of the growth bothers you or if it gets irritated or bleeds when your clothing rubs against it. Also see your doctor if you notice suspicious changes in your skin, such as sores or growths that grow rapidly, bleed and don't heal. These could be signs of skin cancer."
      ),
    ListItem(
      4,
      "Dermatofibroma",
      "Dermatofibroma",
      "imgs/df.jpg",
      "Dermatofibroma is a common cutaneous nodule of unknown etiology that occurs more often in women. Dermatofibroma frequently develops on the extremities (mostly the lower legs) and is usually asymptomatic, although pruritus and tenderness can be present.\n\n"
      "Signs and symptoms include:\n"
      "-Usually presents as a solitary firm papule or nodule on a limb.\n"
      '-Tethered to the skin surface and mobile over subcutaneous tissue\n'
      "-Varies from 0.5–1.5 cm diameter; most lesions are 7–10 mm diameter.\n"
      "-Colour may be pink to light brown in white skin, and dark brown to black in dark skin; some appear paler in the centre.\n"
      "-They are sometimes painful, tender, or itchy.",
      
      "They are sometimes attributed to minor trauma including insect bites, injections, or a rose thorn injury, but not consistently. Multiple dermatofibromas can develop in patients with altered immunity such as HIV, immunosuppression, or autoimmune conditions."
      ),
    ListItem(
       5,
      "Melanocytic Nevi",
      "Melanocytic Nevi",
      "imgs/nv.jpg",
      "A melanocytic nevus, or mole, is a common benign skin lesion due to a local proliferation of pigment cells (melanocytes). It is sometimes called a naevocytic nevus or just 'nevus' (but note that there are other types of nevi). A brown or black melanocytic naevus contains the pigment melanin, so may also be called a pigmented nevus.\n"
      "A melanocytic nevus can be present at birth (a congenital melanocytic nevus) or appear later (an acquired nevus)\n\n"
      "Signs and symptoms include:\n"
      "-They may arise on any part of the body.\n"
      '-They differ in appearance depending on the body site.\n'
      "-They may be flat or protruding.\n"
      "-They vary in colour from pink or flesh tones to dark brown, steel blue, or black.\n"
      "-Light-skinned individuals tend to have light-coloured naevi and dark-skinned individuals tend to have dark brown or black nevi.\n"
      "-Although mostly round or oval in shape, moles are sometimes unusual shapes.\n"
      "-They range in size from a couple of millimetres to several centimetres in diameter."
      ,
      
      "Although nevi are benign, if you notice any changes in shape or color or notice any new nevi contact your doctor or dermatologist as this is a sign of melanoma."
      ),

    ListItem(
       6,
      "Melanoma",
      "Melanoma",
      "imgs/mel.jpg",
      "Melanoma, the most serious type of skin cancer, develops in the cells (melanocytes) that produce melanin — the pigment that gives your skin its color. Melanoma can also form in your eyes and, rarely, inside your body, such as in your nose or throat. Melanomas can develop anywhere on your body. They most often develop in areas that have had exposure to the sun, such as your back, legs, arms and face.\n\n"
      "Signs and symptoms include:\n"
      "-A change in an existing mole.\n"
      '-The development of a new pigmented or unusual-looking growth on your skin\n'
      "-Look for moles with irregular shapes, such as two very different-looking halves.\n"
      "-Look for moles with irregular, notched or scalloped borders — characteristics of melanomas.\n"
      "-Look for growths that have many colors or an uneven distribution of color.\n"
      "-Look for new growth in a mole larger than 1/4 inch (about 6 millimeters).\n"
      "-Look for changes over time, such as a mole that grows in size or that changes color or shape. Moles may also evolve to develop new signs and symptoms, such as new itchiness or bleeding."
      ,
      
      "Make an appointment with your doctor if you notice any skin changes that seem unusual."
      ),
    ListItem(
      7,
      "Vascular Lesions",
      "Vascular Lesions",
      "imgs/vasc.jpg",
      "Vascular lesions are relatively common abnormalities of the skin and underlying tissues, more commonly known as birthmarks.\n\n"
      "Hemangiomas are the most common type of vascular lesion in children They are benign, or noncancerous, tumors of the cells that line blood vessels. They usually appear at or shortly after birth as faint areas of pinkish-red discoloration of the skin and then quickly undergo a period of rapid growth.\n\n"
      "Vascular malformations represent a group of congenital errors in the formation of vessels. They are classified based on the type of vessel(s) that comprise the lesion and the speed of blood flow occurring within them.\n\n"
      "Pyogenic granulomas are benign, acquired vascular lesions of the skin that can form in response to local tissue injury. They appear as rapidly-growing, red, and often ulcerating bump or polyp-like masses which bleed easily when disturbed. They are commonly found in children or pregnant women especially on the mouth or fingertips.",
      
      "These are commonly benign conditions but if you notice any ulceration, bleeding, itching, or pain from the afflicted area it's important to get in contact with your doctor."
      ),

];