//
//  BassoonContentModel.swift
//  BsnXcerpts
//
//  Created by Alex Burdiss on 4/12/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import Foundation

/**
 Composition collection that holds all information about a composition, and is displayed on a view.
 */
struct Composition: Identifiable {
    let id: Int
    var composer: String
    var composerLast: String
    var name: String
    var date: String
    var era: String
    var genre: String
    var excerpts: [Excerpt]
    var videos: [[String]] /// [Name, YouTubeID]
}

/**
 Excerpt collection that holds images of an excerpt.
 */
struct Excerpt: Identifiable {
    let id: Int
    var description: String
    var measures: String
    var pictures: [[String]] /// [Part, PictureNo.]
}

/**
 Composer collection that holds all the information about a composer. This information is displayed in one view.
 */
struct Composer: Identifiable {
    let id: Int
    var name: String
    var ipa: String
    var image: Int
    var country: String
    var dates: String
    var bio: String
    var excerpts: [Composition]
}

// MARK: Excerpts

let beethovenleonore = Composition(id: 0, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Leonore Overture No. 3", date: "Early 1806", era: "Classical", genre: "Overture", excerpts: [
    Excerpt(id: 0, description: "Excerpt 1", measures: "mm. 330 - 340", pictures: [["Bassoon 1", "1000"]]),
    Excerpt(id: 1, description: "Excerpt 2", measures: "8 after [H] to 14 before Presto", pictures: [["Bassoon 1", "1001"], ["Bassoon 2", "1002"]])
], videos: [
    ["Anton Nanut, Radio-Symphonieorchester Wien (With Score)", "_0pz7zkKcA0"],
    ["Franz Welser, Vienna Philharmonic", "oodMxBMM0Dw"],
    ["Karl Böhm, Wiener Philharmoniker", "RpCNGTRvQVI"],
    ["Kurt Masur, Gewandhaus Orchester Leipzig", "JEcxF227xE0"],
    ["Leonard Bernstein, Bavarian Broadcast Symphony Orchestra","dRhwyzJABvI"],
    ["Nicolás Pasquet, Orchestra of the University of Music FRANZ LISZT Weimar", "OOIlQkANUxQ"],
    ["Herbert von Karajan, Berliner Philharmoniker", "5OibQYjPUqc"],
    ["Sir Georg Solti, Chicago Symphony Orchestra", "yZzwA_dntCM"]
])

let beethoven4 = Composition(id: 1, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 4", date: "Early 1806", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 2, description: "Excerpt 1", measures: "Mov. II, mm. 65 - 72", pictures: [["Bassoon 1", "1003"], ["Bassoon 2", "1004"]]),
    Excerpt(id: 3, description: "Excerpt 2", measures: "Mov. IV, mm. 15 - 25", pictures: [["Bassoon 1", "1005"], ["Bassoon 2", "1006"]]),
    Excerpt(id: 4, description: "Excerpt 3", measures: "Mov. IV, mm. 184 - 190", pictures: [["Bassoon 1", "1007"], ["Bassoon 2", "1008"]]),
    Excerpt(id: 5, description: "Excerpt 4", measures: "Mov. IV, mm. 348 - End", pictures: [["Bassoon 1", "1009"], ["Bassoon 2", "1010"]])
], videos: [
    // Orchestras
    ["Andrés Orozco-Estrada", "uGWklkORHJo"],
    ["Arturo Toscanini, NBC Symphony Orchestra", "G-eMpph444Q"],
    ["Bernard Haitink, London Symphony Orchestra (With Score)", "PVArUbva2bk"],
    ["Carlos Kleiber, Concertgebouw Symphony Orchestra", "dCMYxJIji1g"],
    ["Christian Thielemann, Wiener Philharmoniker", "2rLXFPNx-ss"],
    ["Daniel Barenboim, West-Eastern Divan Orchestra", "KjfWx_FBEuk"],
    ["John Eliot Gardiner, Orchestre Révolutionnaire et Romantique (On Period Instruments)", "HVABRzniCIQ"],
    ["Herbert von Karajan, Berlin Philharmonic (With Score)", "BQm6Xu4vYWo"],
    ["Herbert von Karajan, Philharmonia Orchestra", "uliun1CMR8s"],
    ["Paavo Jarvi, Deutsche Kammerphilharmonie Bremen", "RMzLZsoPDU4"],
    // Masterclass
    ["David McGill", "KjfWx_FBEuk"]
])

let beethoven5 = Composition(id: 2, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 5", date: "1808", era: "Early Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 6, description: "Excerpt 1", measures: "Mov. IV, mm. 374 - 436", pictures: [["Bassoon 1", "1011"], ["Bassoon 2", "1012"], ["Contrabassoon", "1013"]])
], videos: [
    ["Bernard Haitink, London Symphony Orchestra", "DAyUzxDB9eE"],
    ["Christian Thielemann, Vienna Philharmonic Orchestra", "olMPeiqoiic"],
    ["Daniel Barenboim, West-Eastern Divan Orchestra", "jv2WJMVPQi8"],
    ["Gustavo Dudamel", "msolhqi-PC0"],
    ["Herbert von Karajan, Berlin Philharmonic (With Score)", "yKl4T5BnhOA"],
    ["Herbert von Karajan, Philharmonia Orchestra", "OV6Lp7cnX7s"],
    ["Leonard Bernstein, Wiener Philharmoniker", "kHYBoG7hiZk"]
])

let beethoven6 = Composition(id: 3, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 6", date: "1808", era: "Early Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 7, description: "Excerpt 1", measures: "Mov. I, mm. 33 - 55", pictures: [["Bassoon 1", "1014"], ["Bassoon 2", "1015"]]),
    Excerpt(id: 8, description: "Excerpt 2", measures: "Mov. II, mm. 7 - 13", pictures: [["Bassoon 1", "1016"], ["Bassoon 2", "1017"]])
], videos: [
    // TODO: Add YouTube Parts here.
    ["", ""]
])

let beethoven9 = Composition(id: 4, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 9", date: "1824", era: "Early Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 9, description: "Excerpt 1", measures: "Mov. IV, mm. 116 to [A]", pictures: [["Bassoon 1", "1018"], ["Bassoon 2", "1019"]]),
    Excerpt(id: 10, description: "Excerpt 2", measures: "Mov. IV, mm. 663 - 671", pictures: [["Bassoon 1", "1021"], ["Bassoon 2", "1022"], ["Contrabassoon", "1023"]]),
    Excerpt(id: 11, description: "Excerpt 3", measures: "Mov. IV, mm. 709 - 717", pictures: [["Bassoon 1", "1024"], ["Bassoon 2", "1025"], ["Contrabassoon", "1026"]])
], videos: [
    ["Arturo Toscanini, NBC Symphony Orchestra", "DuK133dK6eQ"],
    ["정명훈 (Chung Myung-Whun), The Orchestre Philharmonique de Radio France", "KtRzuOSCOO0"],
    ["Daniel Barenboim, West-Eastern Divan Orchestra", "ChygZLpJDNE"],
    ["Herbert von Karjan, Berlin Philharmonic (With Score)", "ixpfgm_xxSE"],
    ["Klaus Mäkelä, Oslo Philharmonic", "QkQapdgAa7os"],
    ["Osaka, Japan", "X6s6YKlTpfw"],
    ["Riccardo Muti, Chicago Symphony Orchestra", "rOjHhS5MtvA"],
    ["Seiji Ozawa, Saito Kinen Orchestra", "VS6TEQ_z2wc"]
])

let beethovenViolin = Composition(id: 5, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Violin Concerto in D Major", date: "1806", era: "Early Romantic", genre: "Violin Concerto", excerpts: [
    Excerpt(id: 12, description: "Excerpt 1", measures: "Mov. II, mm. 20 - 30", pictures: [["Bassoon 1", "1027"]]),
    Excerpt(id: 13, description: "Excerpt 2", measures: "Mov. III, mm. 133 - 158", pictures: [["Bassoon 1", "1028"]])
], videos: [
    //TODO: Add YouTube Parts Here.
    ["", ""]
])

let berliozSymphonieFantastique = Composition(id: 6, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Symphonie fantastique", date: "1830", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 14, description: "Excerpt 1", measures: "Mov. IV, 15 mm. before [51] - 6 mm. before [51]", pictures: [["Bassoon 1 and 3", "1029"], ["Bassoon 2 and 4", "1030"]]),
    Excerpt(id: 15, description: "Excerpt 2", measures: "Mov. IV, 2 mm. before [52] - [53]", pictures: [["Bassoon 1 and 3", "1031"], ["Bassoon 2 and 4", "1032"]]),
    Excerpt(id: 16, description: "Excerpt 3", measures: "Mov. V, 7 mm. after [63] - 5 mm. after [64]", pictures: [["Bassoon 1 and 3", "1033"], ["Bassoon 2 and 4", "1034"]]),
    Excerpt(id: 17, description: "Excerpt 4", measures: "Mov. V, 3 mm after [83] - [84]", pictures: [["Bassoon 1 and 3", "1035"], ["Bassoon 2 and 4", "1036"]])
], videos: [
    ["정명훈 (Chung Myung-Whun)", "5HgqPpjIH5c"],
    ["Leopold Stokowski, New Philharmonia Orchestra", "ewoAW-Zyuj8"],
    ["Mariss Jansons, Bavarian Radio Symphony Orchestra", "yK6iAxe0oEc?t=284"],
    ["Sir Colin Davis, London Symphony Orchestra", "HSsxoPcUaaQ"]
])

let brahms1 = Composition(id: 7, composer: "Johannes Brahms", composerLast: "Brahms", name: "Symphony No. 1", date: "1876", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 18, description: "Excerpt 1", measures: "Mov. I, mm. 161 - 189", pictures: [["Bassoon 1", "1037"], ["Bassoon 2", "1038"], ["Contrabassoon", "1039"]]),
    Excerpt(id: 19, description: "Excerpt 2", measures: "Mov. IV, mm. 94 - 114", pictures: [["Bassoon 1", "1040"], ["Bassoon 2", "1041"], ["Contrabassoon", "1042"]])
], videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra", "cqd4NQ-ppCY"],
    ["Herbert von Karajan, Berliner Philharmoniker", "45mWi4qY5v0"],
    ["Karl Böhm, Berliner Philharmoniker (With Score)", "POW-u-RGspY"],
    ["Leonard Bernstein, Vienna Philharmonic Orchestra", "EGRqIGOAPcE"],
    ["Paavo Järvi, Orchestre de Paris", "BRdEgS_OHAk"],
    ["Stanisław Skrowaczewski, Frankfurt Radio Symphony Orchestra", "9Ij6I_zhBdU"]
])

let brahms3 = Composition(id: 8, composer: "Johannes Brahms", composerLast: "Brahms", name: "Symphony No. 3", date: "1883", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 20, description: "Excerpt 1", measures: "Mov. I, mm. 60 - 68", pictures: [["Bassoon 1", "1043"], ["Bassoon 2", "1044"]]),
    Excerpt(id: 21, description: "Excerpt 2", measures: "Mov. I, mm. 112 - 120", pictures: [["Bassoon 1", "1045"], ["Bassoon 2", "1046"], ["Contrabassoon", "1047"]]),
    Excerpt(id: 22, description: "Excerpt 3", measures: "Mov. IV, mm. 1 - 17", pictures: [["Bassoon 1", "1048"], ["Bassoon 2", "1049"]]),
    Excerpt(id: 23, description: "Excerpt 4", measures: "Mov. IV, mm. 223 - 247", pictures: [["Bassoon 1", "1050"], ["Bassoon 2", "1051"], ["Contrabassoon", "1052"]])
], videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "u68ETRjNQME"],
    ["Bernard Haitink, Chamber Orchestra of Europe", "GF260OjcAjE"],
    ["Daniel Barenboim, Chicago Symphony Orchestra", "mAjvP_b0l7E"],
    ["Edo de Waart, The Netherlands Philharmonic Orchestra", "a9TCjM9jhks"],
    ["Herbert von Karajan, Berliner Philharmoniker", "QaItCES17AY"],
    ["Leonard Bernstein, Wiener Philharmoniker", "4L0MqnAoEJM"],
    ["Philippe Herreweghe, Frankfurt Radio Symphony Orchestra", "vMPP8DkVhk8"],
    ["Seiji Ozawa, Saito Kinen Orchestra", "EN-ymlBxxTQ"],
    ["Sir Georg Solti, Chicago Symphony Orchestra", "wXiHNzRhoFw"],
    ["Sir John Barbirolli, Wiener Philharmoniker (With Score)", "Lst1Aex2vcQ"]
])

let brahmsVariations = Composition(id: 9, composer: "Johannes Brahms", composerLast: "Brahms", name: "Variations on a Theme by Haydn", date: "1873", era: "Romantic", genre: "Variations", excerpts: [
    Excerpt(id: 24, description: "Excerpt 1", measures: "Var. VI, mm. 264 - 292", pictures: [["Bassoon 1", "1053"], ["Bassoon 2", "1054"], ["Contrabassoon", "1055"]])
], videos: [
    // TODO: Find YouTube Videos for this.
    ["", ""]
])


let pictures = [["Bassoon 1", ""], ["Bassoon 2", ""]]
let pictures2 = [["Bassoon 1", ""], ["Bassoon 2", ""], ["Contrabassoon", ""]]
/*
 Bartok Dance Suite <- Cannot find sheet music, not that important either.
X Beethoven Leonore
X Beethoven Symphony No. 4
X Beethoven Symphony No. 5
X Beethoven Symphony No. 6
X Beethoven Symphony No. 9
X Beethoven Violin Concerto in D
X Berlioz Symphony Fantastique
X Brahms Symphony No. 1
X Brahms Symphony No. 3
X Brahms Variations on a Theme by Haydn
 Brahms Violin Concerto
 Donizetti L'elisir d'amore
 Dukas The Sorcerer's Apprentice
 Mahler Symphony No. 2
 Mahler Symphony No. 4
 Mahler Symphony No. 5
 Mahler Symphony No. 9
 Mendelssohn A Midsummer Night's Dream
 Mendelssohn Symphony No. 3
 Mozart Cosi fan tutte
 Mozart Symphony No. 35
 Mozart Symphony No. 41
 Mozart The Marriage of Figaro
 Ravel Alborada del gracioso
 Ravel Bolero
 Ravel Ma mere l'Oye
 Ravel Rapsodie espagnole
 Rimsky-Korsakov Scheherazade
 Rossini La Gazza Ladra
 Sibelius Symphony No. 2
 Sibelius Violin Concerto
 Smetana The Bartered Bride
 Strauss Also sprach Zarathustra
 Strauss Death and Transfiguration
 Strauss Don Juan
 Strauss Don Quixote
 Strauss Ein Heldenleben
 Strauss Till Eulenspiegels lustige Streiche
 Stravinsky Octet for Wind Instruments
 Stravinsky Pulcinella
 Stravinsky The Firebird
 Stravinsky The Rite of Spring
 Stravinsky The Soldier's Tale
 Stravinsky The Song of the Nightengale
 Tchaikovsky Romeo and Juliet
 Tchaikovsky Symphony No. 4
 Tchaikovsky Symphony No. 5
 Tchaikovsky Symphony No. 6
 Wagner Tannhauser
 */


// MARK: Composers

let beethoven = Composer(id: 1, name: "Ludwig Van Beethoven", ipa: "ˈlʊdvɪɡ væn ˈbeɪt(h)oʊvən", image: 2000, country: "Germany", dates: "1770-1827", bio: "Ludwig van Beethoven was a German composer and pianist. Beethoven began his compositional life firmly in the classical era, but was a key figure in the early romantic era. Beethoven grew to be mostly deaf in his lifetime, but never ceased composing. He was the first composer to incorporate trombones in a symphonic setting, and composed nine symphonies in his lifetime. He is considered to be one of the greatest composers of all time.", excerpts: [
    beethovenleonore, beethoven4, beethoven5, beethoven6, beethoven9, beethovenViolin
])

let berlioz = Composer(id: 2, name: "Hector Berlioz", ipa: "ɛkˈtɔr bɛr liˌoʊz", image: 2001, country: "France", dates: "1803-1869", bio: "Hector Berlioz was a French Romantic composer, who gained his popularity through his unwillingness to accept traditional rules and formulas. He frequently employed extended techniques in many instruments, and developed his own forms and techniques for composition. He was internationally acclaimed as a conductor, and was also a prominant musical journalist.", excerpts: [
    berliozSymphonieFantastique
])

let brahms = Composer(id: 3, name: "Johannes Brahms", ipa: "joˈhanəs ˈbʁaːms", image: 2002, country: "Germany", dates: "1833-1897", bio: "Johannes Brahms was one of the most famous composers of all time. He is most famous for his four symphonies, but he wrote for many diverse ensembles. Brahms was a perfectionist in all that he did, and was known to occaisionally destroy some of his work to prevent it from being seen by the outside world.", excerpts: [
    brahms1, brahms3, brahmsVariations
])

let donizetti = Composer(id: 4, name: "", ipa: "", image: 0, country: "", dates: "", bio: "", excerpts: [
])

let dukas = Composer(id: 5, name: "", ipa: "", image: 0, country: "", dates: "", bio: "", excerpts: [
])

let mahler = Composer(id: 6, name: "Gustav Mahler", ipa: "ˈgʊs tɑf ˈmɑ lər", image: 0, country: "Austrian Empire", dates: "1860-1911", bio: "Mahler is one of the most popular composers of all time. In 2016, a BBC Music survey ranked three of his symphonies among the top ten symphonies of all time. His music continues to be among the top recorded and perfomed in all of classical music. During his day, he was also among one of the top conductors of his era, and was the first conductor of the New York Philharmonic Orchestra.", excerpts: [
])

let mendellsohn = Composer(id: 7, name: "", ipa: "", image: 0, country: "", dates: "", bio: "", excerpts: [
])

let mozart = Composer(id: 8, name: "Wolfgang Amadeus Mozart", ipa: "ˈwʊlf gæŋ ˌæm əˈdeɪ əs ˈmoʊt sɑrt", image: 0, country: "Germany", dates: "1756-1791", bio: "Mozart gained popularity as a pianist and composer at an early age. He gained employment as a court musician at the Salzburg court, but quickly lost interest and began traveling looking for other employment. In Vienna, he found great fame, but worked his whole life trying to achieve financial stability: a goal he was never able to achieve. Mozart's death is also very mysterious and controvercial.", excerpts: [
])

let ravel = Composer(id: 9, name: "Maurice Ravel", ipa: "moʊˈris rəˈvɛl", image: 0, country: "France", dates: "1875-1937", bio: "Ravel was an impressionist French composer. He was a careful, and slow composer, and composed much less compared to many other composers. He was also one of the first composers to realize the potential of recorded music, and was one of the first composers to record their music and marked it to a larger audience this way.", excerpts: [
])

let rimskyKorsakov = Composer(id: 10, name: "Nikolai Rimsky-Korsakov", ipa: "nʲɪkəˈlaj ˈrʲimskʲɪj ˈkorsəkəf", image: 0, country: "Russia", dates: "1844-1908", bio: "Nikolai Rimsky-Korsakov was one of the most famous Russian composers. He was a master orchestrator, publishing a textbook on the subject using musical examples solely from his own compositions, and his most famous compositions are his orchestral works. Rimsky-Korsakov also spent a large portion of his musical life in association with the Russian military.", excerpts: [
])

let rossini = Composer(id: 11, name: "Gioachino Rossini", ipa: "dʒɔ ɑkˈki nɔ roʊˈsi ni", image: 2017, country: "Italy", dates: "1792-1868", bio: "Rossini was an Italian composer from the romantic era. His 39 operas gained him great success early in life, but he unexplainably gave up music almost entirely for the last 40 years of his life.", excerpts: [
])

let sibelius = Composer(id: 12, name: "", ipa: "", image: 0, country: "", dates: "", bio: "", excerpts: [
])


let smetana = Composer(id: 13, name: "Bedřich Smetana", ipa: "ˌbɛdərʒɪx ˈsmɛtənə", image: 2021, country: "Austrian Empire, Austria-Hugary (Now Czech Republic)", dates: "1824-1884", bio: "Smetana was a child prodigy who had his first composition performed at age six. His music became closely tied to sentiments and movements of independant statehood. He became completely deaf for the last ten years of his life.", excerpts: [
])

let rStrauss = Composer(id: 14, name: "Richard Strauss", ipa: "ˈʁɪçaʁt ˈʃtʁaʊs", image: 2022, country: "Germany", dates: "1864-1949", bio: "Richard Strauss was one of the leading composers of the Romantic Era. He, along with Gustav Mahler, were considered successors of Richard Wagner. Although Strauss composed music for almost every classical genre, he is most famous for his tone poems. Strauss' compositional output began when he was just six years old, and continued almost eighty years later until his death.", excerpts: [
])

let stravinsky = Composer(id: 15, name: "Igor Stravinsky", ipa: "ˈi gɔr strəˈvɪn ski", image: 2023, country: "Russia", dates: "1882-1971", bio: "Igor Stravinsky was one of the most influential composers of the twentieth century. Stravinsky's music is very unique from that of other composers, and often contains russian folk melodies. Throughout his life, the kinds of compositions that he composed also changed dramatically, from symphonies, to chamber music, to ballets.", excerpts: [
])

let tchaikovsky = Composer(id: 16, name: "Pyotr Ilyich Tchaikovsky", ipa: "ˈpyɔtr iˈlyitʃ tʃaɪˈkɒfski", image: 2024, country: "Russia", dates: "1840-1893", bio: "Tchaikovsky was the first Russian composer to gain international fame. Tchaikovsky recieved a western European style music education, which seemed to counter the traditional Russian music practices. This dichotomy posed a great challenge for Tchaikovsky, one that affected his self confidence a lot. Although Tchaikovsky's music gained popular support, his life was deeply affected by depression and personal crises.", excerpts: [
])


let wagner = Composer(id: 17, name: "Richard Wagner", ipa: "ˈʁɪçaʁt ˈvaːɡnɐ", image: 2026, country: "Germany", dates: "1813-1883", bio: "Wagner is one of the most well known composers of all time. His music frequently appears in television shows and movies. He was most well known in his era for his operas, which usually run about four hours. Wagner was unusual as an opera composer because he himself wrote the liberetto for the operas he composed. Wagner had his own opera house constructed, which still stands to this day.", excerpts: [
])

// MARK: Model

/**
 An Organized model of all of the Compositions and Composers in alphabetical order.
 */
class BassoonContentModel: ObservableObject {
    /**
     An alphabetical list of all of the compositions in the app.
     */
    var excerpts: [Composition] = [
        beethovenleonore, beethoven4, beethoven5, beethoven6, beethoven9, beethovenViolin, berliozSymphonieFantastique, brahms1, brahms3, brahmsVariations
    ]
    
    /**
     An alphabetical list of all of the composers in the app.
     */
    var composers: [Composer] = [
        beethoven, berlioz, brahms, donizetti, dukas, mahler, mendellsohn, mozart, ravel, rimskyKorsakov, rossini, sibelius, smetana, rStrauss, stravinsky, tchaikovsky, wagner
    ]
}
