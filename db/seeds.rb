upper_paragraph = "Najbolje staklo za vase potrebe. Prozirno, kratko, dugo, kakvo god zelite.
                   U svim bojama. Cak i dostavljamo, gdje god hocete skoro besplatno.
                   U svim bojama. Cak i dostavljamo, gdje god hocete skoro besplatno."
lower_paragraph = "Najbolje staklo za vase potrebe. Prozirno, kratko, dugo, kakvo god zelite.
                   U svim bojama. Cak i dostavljamo, gdje god hocete skoro besplatno.
                   U svim bojama. Cak i dostavljamo"

aluminium_modals = [
  {
    css_id: "windows-and-doors",
    aria_label: "w-a-d",
    h2: "Prozori i stakla",
    upper_para: upper_paragraph,
    lower_para: lower_paragraph,
    group: "aluminium"
  },
  {
    css_id: "sliding-doors",
    aria_label: "s-d",
    h2: "Klizne stijene",
    upper_para: upper_paragraph,
    lower_para: lower_paragraph,
    group: "aluminium"
  },
  {
    css_id: "closing-balcons",
    aria_label: "c-b",
    h2: "Zatvaranje balkona i lođa",
    upper_para: upper_paragraph,
    lower_para: lower_paragraph,
    group: "aluminium"
  },
  {
    css_id: "winter-gardens",
    aria_label: "w-g",
    h2: "Zimski vrtovi",
    upper_para: upper_paragraph,
    lower_para: lower_paragraph,
    group: "aluminium"
  },
  {
    css_id: "outter-layout",
    aria_label: "o-l",
    h2: "Fasadne stijene",
    upper_para: upper_paragraph,
    lower_para: lower_paragraph,
    group: "aluminium"
  },
  {
    css_id: "grills",
    aria_label: "grills",
    h2: "Grilje",
    upper_para: upper_paragraph,
    lower_para: lower_paragraph,
    group: "aluminium"
  },
  {
    css_id: "window-covers",
    aria_label: "w-c",
    h2: "Žaluzine, venecijaneri i komarinci",
    upper_para: upper_paragraph,
    lower_para: lower_paragraph,
    group: "aluminium"
  },
  {
    css_id: "wall-covers",
    aria_label: "wall-c",
    h2: "Unutarnje i vanjske stijene",
    upper_para: upper_paragraph,
    lower_para: lower_paragraph,
    group: "aluminium"
  }
]
glass_modals = [
 {
   css_id: "all-glass-types",
   aria_label: "a-g-t",
   h2: "Sve vrste stakala",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "glass"
 },
 {
   css_id: "fixed-glass",
   aria_label: "f-g",
   h2: "Staklene fiksne i klizne stijene",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "glass"
 },
 {
   css_id: "glass-doors",
   aria_label: "gl-do",
   h2: "Staklena vrata",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "glass"
 },
 {
   css_id: "wash-basins",
   aria_label: "wa-ba",
   h2: "Tuš kabine",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "glass"
 },
 {
   css_id: "glass-combining",
   aria_label: "gl-co",
   h2: "Spajanje stakala",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "glass"
 },
 {
   css_id: "glass-covers",
   aria_label: "gl-cov",
   h2: "Staklene nadstrešnice",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "glass"
 },
 {
   css_id: "painting-framing",
   aria_label: "pa-fr",
   h2: "Uokvirenje slika i goblena",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "glass"
 },
 {
   css_id: "other-glass-services",
   aria_label: "o-g-s",
   h2: "Ostale vrste staklarskih radova",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "glass"
 }
]
inox_modals = [
 {
   css_id: "outter-inner-fences",
   aria_label: "o-i-f",
   h2: "Vanjske i unutarnje ograde",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "inox"
 },
 {
   css_id: "sliding-fences",
   aria_label: "sl-fe",
   h2: "Klizne ograde s otvaranjem",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "inox"
 },
 {
   css_id: "staircases",
   aria_label: "stairs",
   h2: "Stubišta",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "inox"
 },
 {
   css_id: "inox-covers",
   aria_label: "in-co",
   h2: "Nadstrešnice",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "inox"
 },
 {
   css_id: "constructions",
   aria_label: "in-co",
   h2: "Podkonstrukcije i nadkonstrukcije",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "inox"
 },
 {
   css_id: "other-inox-services",
   aria_label: "o-i-s",
   h2: "Ostale vrste bravarskih radova",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "inox"
 }
]
automatic_door_modals = [
 {
   css_id: "sliding-automatic-doors",
   aria_label: "s-a-d",
   h2: "Klizna automatska vrata",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "automatic-doors"
 },
 {
   css_id: "rotational-automatic-doors",
   aria_label: "r-a-d",
   h2: "Rotacijska automatska vrata",
   upper_para: upper_paragraph,
   lower_para: lower_paragraph,
   group: "automatic-doors"
 }
]
all_modals = [aluminium_modals, glass_modals, inox_modals, automatic_door_modals]
all_modals.each { |modal_group| modal_group.each { |modal| Modal.create(modal) } }
