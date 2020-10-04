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
    ["Leonard Bernstein, Wiener Philharmoniker", "kHYBoG7hiZk"],
    // Masterclasses
    ["Christopher Millard", "vakGOvmebCY"]
])

let beethoven6 = Composition(id: 3, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 6", date: "1808", era: "Early Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 7, description: "Excerpt 1", measures: "Mov. I, mm. 33 - 55", pictures: [["Bassoon 1", "1014"], ["Bassoon 2", "1015"]]),
    Excerpt(id: 8, description: "Excerpt 2", measures: "Mov. II, mm. 7 - 13", pictures: [["Bassoon 1", "1016"], ["Bassoon 2", "1017"]])
], videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "Zv4PIFRpYcw"],
    ["Christian Thielemann, Wiener Philharmoniker", "23VcuR55_j4"],
    ["Daniel Barenboim, West-Eastern Divan Orchestra", "aW-7CqxhnAQ"],
    ["Herbert von Karajan, Berlin Philharmonic (With Score)", "p4CCU2-AFZE"],
    ["James Loughran, London Philarmonic Orchestra", "fRg0K5rgXog"],
    ["Leonard Bernstein, Boston Symphony Orchestra", "t2VY33VXnrQ"],
    ["Paavo Jarvi, Deutsche Kammerphilharmonie Bremen", "iQGm0H9l9I4"]
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
    ["Seiji Ozawa, Saito Kinen Orchestra", "VS6TEQ_z2wc"],
    // Masterclasses
    ["David McGill", "DQvitin875c"]
])

let beethovenViolin = Composition(id: 5, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Violin Concerto in D Major", date: "1806", era: "Early Romantic", genre: "Violin Concerto", excerpts: [
    Excerpt(id: 12, description: "Excerpt 1", measures: "Mov. II, mm. 20 - 30", pictures: [["Bassoon 1", "1027"]]),
    Excerpt(id: 13, description: "Excerpt 2", measures: "Mov. III, mm. 133 - 158", pictures: [["Bassoon 1", "1028"]])
], videos: [
    ["Bernard Haitink, Royal Concertgebouw Orchestra", "DoVwXtJkycU"],
    ["Carlo Maria Giulini, Philharmonia Orchestra", "iR8vHbiTADg"],
    ["Joshua Bell, Orpheus Chamber Orchestra", "WqWl8K3svoI"],
    ["Leonard Slatkin, Detroit Symphony Orchestra", "0Cg_0jepxow"],
    ["Marek Pijarowski, Poznań Philharmonic Orchestra", "gIdqiis3Mts"],
    ["Seiji Ozawa, Berliner Philharmoniker", "ZQVs4MhX3xo"],
    ["Walter Weller, Orquesta Sinfónica de RTVE", "PvrPGO7ja3k"],
    ["Yehudi Menuhin, Menuhin Festival Orchestra", "0qlcIdFd8X4"],
    // Masterclasses
    //["David McGill, I", "-tw9y8m3tDk"],
    ["David McGill, II", "NE6k1Qvqdv0"],
    ["David McGill, III", "K97sPfYX5CY"]
])

let berliozSymphonieFantastique = Composition(id: 6, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Symphonie fantastique", date: "1830", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 14, description: "Excerpt 1", measures: "Mov. IV, 15 mm. before [51] - 6 mm. before [51]", pictures: [["Bassoon 1 and 3", "1029"], ["Bassoon 2 and 4", "1030"]]),
    Excerpt(id: 15, description: "Excerpt 2", measures: "Mov. IV, 2 mm. before [52] - [53]", pictures: [["Bassoon 1 and 3", "1031"], ["Bassoon 2 and 4", "1032"]]),
    Excerpt(id: 16, description: "Excerpt 3", measures: "Mov. V, 7 mm. after [63] - 5 mm. after [64]", pictures: [["Bassoon 1 and 3", "1033"], ["Bassoon 2 and 4", "1034"]]),
    Excerpt(id: 17, description: "Excerpt 4", measures: "Mov. V, 3 mm after [83] - [84]", pictures: [["Bassoon 1 and 3", "1035"], ["Bassoon 2 and 4", "1036"]])
], videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra", "AgXW-57UDMc"],
    ["정명훈 (Chung Myung-Whun)", "5HgqPpjIH5c"],
    ["Gustavo Dudamel, Orchestre philharmonique de Radio France", "HDHPgqv4hsw"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra", "sK4dz6Gbcdk"],
    ["Leonard Bernstein, Orchestre National de France", "rQXtC6B3CKQ"],
    ["Leopold Stokowski, New Philharmonia Orchestra (With Score)", "ewoAW-Zyuj8"],
    ["Mariss Jansons, Bavarian Radio Symphony Orchestra", "yK6iAxe0oEc?t=284"],
    // Masterclasses
    ["David McGill, IV", "G4LjIQryjgo"],
    ["David McGill, V", "tdKgXl2ffgo"],
    ["Minnesota Orchestra Bassoon Section", "X6vgfBoCRco"]
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
    ["Sir John Barbirolli, Wiener Philharmoniker (With Score)", "Lst1Aex2vcQ"],
    // Masterclasses
    ["Christopher Millard", "XJ5yy_fZGHc"]
])

let brahmsVariations = Composition(id: 9, composer: "Johannes Brahms", composerLast: "Brahms", name: "Variations on a Theme by Haydn", date: "1873", era: "Romantic", genre: "Variations", excerpts: [
    Excerpt(id: 24, description: "Excerpt 1", measures: "Var. VI, mm. 264 - 292", pictures: [["Bassoon 1", "1053"], ["Bassoon 2", "1054"], ["Contrabassoon", "1055"]])
], videos: [
    ["Claudio Abbado, Berlin Philharmonic Orchestra", "BAuqxEMRapg"],
    ["Cristian Măcelaru, WDR Sinfonieorchester", "wcobxmwCTys"],
    ["Gustavo Dudamel, Berlin Philharmonic Orchestra", "BRu7CMg6wSs"],
    ["Iván Fischer, Budapesti Fesztiválzenekar", "2h9uLF0LqtM"],
    ["Nikolaus Harnoncourt, Berlin Philharmonic Orchestra", "02F9-SWkzc4"],
    ["Ricardo Muti, Philadelphia Orchestra (With Score)", "oMJVCdhJZPk"],
    ["Richard Davis, University of Melbourne Symphony Orchestra", "QmQLb5SZb4E"],
    ["Sergiu Celibidache, Munich Philharmonic Orchestra", "vQ-JIXjFykc"]
])

let brahmsViolin = Composition(id: 10, composer: "Johannes Brahms", composerLast: "Brahms", name: "Violin Concerto", date: "1878", era: "Romantic", genre: "Violin Concerto", excerpts: [
    Excerpt(id: 25, description: "Excerpt 1", measures: "Mov. II, mm. 1 - 32", pictures: [["Bassoon 1", "1056"], ["Bassoon 2", "1057"]])
], videos: [
    ["Bernard Haitink , Chamber Orchestra of Europe", "lJ1xKctJpQM"],
    ["Carlo Maria Giulini, Chicago Symphony Orchestra ", "QS6b8JKzUeo"],
    ["Christian Thielemann, Staatskapelle Dresden", "d6Gw_b5DXrg"],
    ["Eduardo Marturet, Deutsches Symphonie-Orchester Berlin (With Score)", "1L29nRXWoCM"],
    ["Jaap van Zweden, Verbier Festival Orchestra", "gSsk2rruC5c"],
    ["Lawrence Foster, The Philarmonia Orchestra of London", "7C_U7eUbVd8"],
    ["Otto Klemperer, Orchestre National de la Radiodiffusion Française", "KkfgFuCUe8w"],
    ["Paavo Järvi, Frankfurt Radio Symphony Orchestra","UFl9xuYP5T8"]
])

let donizettiLelisir = Composition(id: 11, composer: "Gaetano Donizetti", composerLast: "Donizetti", name: "L'elisir d'amore", date: "1832", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 26, description: "Excerpt 1", measures: "No. 11, mm. 2 - 9", pictures: [["Bassoon 1 and 2", "1058"]])
], videos: [
    ["Alfred Eschwé, The Metropolitan Opera", "zx1Y5ljpmzk"],
    ["Gianandrea Gavazzeni, Orchestra del Maggio Musicale Fiorentino", "3sllHY2xpLY"],
    ["Jesús López Cobos, Orchestre de Chambre de Lausanne", "iUwdO1OBdlA"],
    ["Patrick Hansen, McGill Symphony Orchestra", "-PLqR8sYTLE"],
    ["Riccardo Frizza, Orquesta Filarmonica de Gran Canaria", "uBJcBsbHCAo"],
    ["Speranza Scappucci, Wiener Staatsoper", "zAXoOqIGlTY"],
    // Masterclasses
    ["David McGill", "HvjQw9MHAHc"]
])

let dukasSorcerer = Composition(id: 12, composer: "Paul Dukas", composerLast: "Dukas", name: "L'Apprenti sorcier", date: "1897", era: "Romantic", genre: "Symphonic Poem", excerpts: [
    Excerpt(id: 27, description: "Excerpt 1", measures: "[7] - [9]", pictures: [["Bassoon 1 and 2", "1059"], ["Bassoon 3", "1060"], ["Contrabassoon", "1061"]]),
    Excerpt(id: 28, description: "Excerpt 2", measures: "[43] - [45]", pictures: [["Bassoon 1 and 2", "1062"], ["Bassoon 3", "1063"]])
], videos: [
    ["Arturo Toscanini, New York Philharmonic Orchestra (With Score)", "WF7L43u_VE8"],
    ["James Levine, Berliner Philharmoniker", "vg8JJ0S_Hus"],
    ["Leonard Bernstein, New York Philharmonic Orchestra", "GxH-nY3iq7g"],
    ["Leopold Stokowski, Philadelphia Orchestra", "Gkj2QeogAsU"],
    ["Lionel Bringuier, Frankfurt Radio Symphony Orchestra", "xazobZ22zro"],
    ["Michail Jurowski, Moscow City Symphony", "U4yH4B9deok"],
    ["Semyon Bychkov, Orchestre de Paris", "ugAdWqMrdZ0"],
    // Masterclasses
    ["Minnesota Orchestra Bassoon Section", "0L8nLe21fJk"]
])

let mahler2 = Composition(id: 13, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 2", date: "1894", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 29, description: "Excerpt 1", measures: "Mov. III, [37] - [40]", pictures: [["Bassoon 1", "1064"], ["Bassoon 2", "1065"], ["Bassoon 3", "1066"]])
], videos: [
    ["Bernard Haitink, Koninklijk Concertgebouworkest", "oUBx_Q-xw2M"],
    ["Gustavo Dudamel, Simón Bolívar Symphony Orchestra of Venezuela", "rKrsEbjXYX8"],
    ["Leonard Bernstein, London Symphony Orchestra", "edA9Zard3-U"],
    ["Leonard Bernstein, New York Philharmonic (With Score)", "z2KcsjA_PEQ"],
    ["Mariss Jansons, Royal Concertgebouw Orchestra", "sHsFIv8VA7w"],
])

let mahler4 = Composition(id: 14, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 4", date: "1900", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 30, description: "Excerpt 1", measures: "Mov. I, 7 mm. after [11] - [13]", pictures: [["Bassoon 1", "1067"], ["Bassoon 2", "1068"], ["Bassoon 3", "1069"]]),
    Excerpt(id: 31, description: "Excerpt 2", measures: "Mov. I, [19] - [20]", pictures: [["Bassoon 1", "1070"], ["Bassoon 2", "1071"], ["Bassoon 3", "1072"]]),
    Excerpt(id: 32, description: "Excerpt 3", measures: "Mov. II, 8 mm. before [11] - 3 mm. before [11]", pictures: [["Bassoon 3", "1073"]])
], videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "3-wcxLq-D10"],
    ["Bernard Haitink, Radio Philharmonic Orchestra", "Ividyw_WPv4"],
    ["Claudio Abbado, Lucerne Festival Orchestra", "YnfhInZLmUQ"],
    ["Claudio Abbado, Wiener Philharmoniker", "GHYdlFPd_u0"],
    ["George Szell, Cleveland Orchestra", "aDhb0ztacM0"],
    ["Ivan Fischer, Budapest Festival Orchestra (With Score)", "fLqGSyu31yU"],
    ["Leonard Bernstein, Wiener Philharmoniker", "iHlJhuS_3TA"]
])

let mahler5 = Composition(id: 15, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 5", date: "1902", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 33, description: "Excerpt 1", measures: "Mov. II, 8 mm. before [25] - 4 mm. before [30]", pictures: [["Bassoon 1", "1074"], ["Bassoon 2", "1075"], ["Contrabassoon", "1076"]]),
    Excerpt(id: 34, description: "Excerpt 2", measures: "Mov. III, 8 mm. after [2] - 17 mm. after [2]", pictures: [["Bassoon 1", "1077"], ["Bassoon 2", "1078"], ["Contrabassoon", "1079"]])
], videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "fEGNNuEM3Fc"],
    ["Bernard Haitink, Koninklijk Concertgebouworkest", "MruTSRVecMo"],
    ["Christoph Eschenbach, Sinfónica de Galicia", "1tCk6nOOdzI"],
    ["Claudio Abbado, Lucerne Festival Orchestra", "vOvXhyldUko"],
    ["Gustavo Dudamel, Simón Bolívar Symphony Orchestra", "1F5G9JngqZY"],
    ["Leonard Bernstein, Wiener Philharmoniker", "6EJn43FEmjo"],
    ["Leonard Bernstein, Wiener Philharmoniker (With Score)", "nO0nytFsumo"],
    ["Valery Gergiev, World Orchestra for Peace", "UjmthMDpyco"]
])

let mahler9 = Composition(id: 16, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 9", date: "1910", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 35, description: "Excerpt 1", measures: "Mov. II, 9 mm. after [17] - 8 mm. after [18]", pictures: [["Bassoon 1", "1080"], ["Bassoon 2", "1081"], ["Bassoon 3", "1082"], ["Bassoon 4", "1083"]]),
    Excerpt(id: 36, description: "Excerpt 2", measures: "Mov. II, 34 mm. before End to End", pictures: [["Bassoon 1", "1084"], ["Bassoon 2", "1085"], ["Bassoon 3", "1086"], ["Bassoon 4", "1087"]])
], videos: [
    ["Bernard Haitink, Concertgebouw Orchestra", "RjYs99atLUI"],
    ["정명훈 (Chung Myung-Whun), Concergebouworkest", "7NKvBNliyN8"],
    ["Claudio Abbado, Lucerne Festival Orchestra", "udhHFt--10Q"],
    ["Daniel Barenboim, Staatskapelle Berlin", "RlGe8bsdpB8"],
    ["Daniele Gatti, Vienna Philharmonic Orchestra", "Q1VjTuVntGE"],
    ["Gustavo Dudamel, Los Angeles Philharmonic", "3GwrgASjQ9I"],
    ["Leonard Bernstein, Berlin Philharmonic Orchestra (With Score)", "ah3mcaRpc9Q"],
    ["Leonard Bernstein, Vienna Philharmonic Orchestra", "IoNEeKJ2x44"]
])

let mendelssohnMidsummer = Composition(id: 17, composer: "Felix Mendelssohn", composerLast: "Mendelssohn", name: "A Midsummer Night's Dream", date: "1842", era: "Romantic", genre: "Incidental Music", excerpts: [
    Excerpt(id: 37, description: "Excerpt 1", measures: "No. I, mm. 1 - 26", pictures: [["Bassoon 1", "1088"], ["Bassoon 2", "1089"]])
], videos: [
    ["Alexis Hauser, McGill Symphony Orchestra", "zrhbm-kaxpk"],
    ["András Vass, Pannon Philharmonic Orchestra", "vQUrs0V4syc"],
    ["Avner Biron, The Israel Camerata Jerusalem Orchestra", "H2wYyTZKb6Q"],
    ["Francesco d'Avalos, Philharmonia Orchestra", "mqOY-02XAFk"],
    ["Paavo Järvi, Frankfurt Radio Symphony Orchestra", "njdTB6HxTj8"],
    ["Seiji Ozawa, Berlin Philharmonic", "yijwRZ6eqe0"],
    ["Walter Weller, Royal Scottish Orchestra", "gJs4KkUxN2Y"]
])

let mendelssohn3 = Composition(id: 18, composer: "Felix Mendelssohn", composerLast: "Mendelssohn", name: "Symphony No. 3", date: "1842", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 38, description: "Excerpt 1", measures: "Mov. II, mm. 48 - 67", pictures: [["Bassoon 1", "1090"], ["Bassoon 2", "1091"]]),
    Excerpt(id: 39, description: "Excerpt 2", measures: "Mov. II, mm. 190 - 213", pictures: [["Bassoon 1", "1092"], ["Bassoon 2", "1093"]])
], videos: [
    ["Claudio Abbado, London Symphony Orchestra (With Score)", "8YT5KCVrBDU"],
    ["Herbert von Karajan, Berliner Philharmoniker", "newJOqUYPBc"],
    ["Kurt Masur, Gewandhausorchestra", "Q-zoNEO55yU"],
    ["Leonard Bernstein, New York Philharmonic", "hPM14CM8HUs"],
    ["Nikolaus Harnoncourt, Chamber Orchestra of Europe", "aeoxTvgEK0U"],
    ["Otto Klemperer, Philharmonia Orchestra", "4nP0gqKmWuY"],
    ["Rumon Gamba, Orquesta Sinfónica de Galicia", "FbH95mO_o3A"],
    ["Sir Georg Solti, Chicago Symphony Orchestra", "vRe3zSKolIY"],
    // Masterclasses
    ["Christopher Millard", "pDixJN0jjW8"]
])

let mozartCosi = Composition(id: 19, composer: "Wolfgang Amadeus Mozart", composerLast: "Mozart", name: "Così fan tutte", date: "1790", era: "Classical", genre: "Opera", excerpts: [
    Excerpt(id: 40, description: "Excerpt 1", measures: "Overture, mm. 33 - 45", pictures: [["Bassoon 1", "1094"], ["Bassoon 2", "1095"]]),
    Excerpt(id: 41, description: "Excerpt 2", measures: "Overture, mm. 175 - 178", pictures: [["Bassoon 1", "1096"], ["Bassoon 2", "1097"]])
], videos: [
    ["John Eliot Gardiner, English Baroque Soloists", "MXCEuYL1pBU"],
    ["Karl Böhm, Wiener Philharmoniker", "XDqFkQRIqTU"],
    ["Neville Marriner, Academy of St Martin in the Fields", "Is7smVObK64"],
    ["Riccardo Muti, Wiener Staatsoper", "Egi7fxTEUCQ"],
    ["Sinfonia Rotterdam (Overture, With Score)", "9-RkOrzMJMI"],
    ["Sylvain Cambreling, Teatro Real de Madrid", "Lf904C53-iA"]
])

let mozart35 = Composition(id: 20, composer: "Wolfgang Amadeus Mozart", composerLast: "Mozart", name: "Symphony No. 35", date: "1782", era: "Classical", genre: "Symphony", excerpts: [
    Excerpt(id: 42, description: "Excerpt 1", measures: "Mov. IV, mm. 9 - [A]", pictures: [["Bassoon 1", "1098"], ["Bassoon 2", "1099"]]),
    Excerpt(id: 43, description: "Excerpt 2", measures: "Mov. IV, mm. 147 - [E]", pictures: [["Bassoon 1", "1100"], ["Bassoon 2", "1101"]])
], videos: [
    ["Bernard Haitink, Chamber Orchestra of Europe", "8ZibUTCyrsg"],
    ["George Szell, The Cleveland Orchestra", "5Y3-k92N7cU"],
    ["Howard Williams, RCM Philharmonic", "0BdGepu19mo"],
    ["Karl Böhm, Berliner Philharmoniker", "up4_6UKrcxE"],
    ["Kirill Petrenko, Berliner Philharmoniker", "yw92MJruqsk"],
    ["Seiji Ozawa, Mito Chamber Orchestra", "Vb4w6KCoVXM"],
    ["Sir Antonio Pappano, Orchestra dell'Accademia Santa Cecilia", "KqTaCsfbIGE"],
    ["Ton Koopman, Amsterdam Baroque Orchestra", "JEVoIZVfeCE"],
    // Masterclasses
    ["Christopher Millard", "lmuXfkW5daA"]
])

let mozart41 = Composition(id: 21, composer: "Wolfgang Amadeus Mozart", composerLast: "Mozart", name: "Symphony No. 41", date: "1788", era: "Classical", genre: "Symphony", excerpts: [
    Excerpt(id: 44, description: "Excerpt 1", measures: "Mov. I, mm. 62 - 71", pictures: [["Bassoon 1", "1102"]]),
    Excerpt(id: 45, description: "Excerpt 2", measures: "Mov. I, mm. 105 - 111", pictures: [["Bassoon 1", "1103"]]),
    Excerpt(id: 46, description: "Excerpt 3", measures: "Mov. I, mm. 183 - 190", pictures: [["Bassoon 1", "1104"], ["Bassoon 2", "1105"]]),
    Excerpt(id: 47, description: "Excerpt 4", measures: "Mov. IV, mm. 154 - 172", pictures: [["Bassoon 1", "1106"]])
], videos: [
    ["Dima Slobodeniouk, Sinfónica de Galicia", "ylJBlFq6joo"],
    ["Karl Böhm, Berliner Philharmoniker", "BEKUUnkbZMA"],
    ["Lorin Maazel, Sinfónica de Galicia", "C6EOb86YdIs"],
    ["Nikolaus Harnoncourt, Chamber Orchestra of Europe", "I36Wz5Ow-aY"],
    ["Simon Blendis, London Mozart Players", "jsDpT2Ch8UU"],
    ["Sir Charles Mackerras, Scottish Chamber Orchestra", "Jp4dol4uSkw"],
    ["Ton Koopman, Amsterdam Baroque Orchestra", "bxwS_bCXfFw"],
    ["Wolfgang Sawallisch, Wiener Symphoniker", "lzwpYFyH-dQ"],
    ["Zubin Mehta, Wiener Philharmoniker", "-ghek5HUrrg"],
    // Masterclasses
    ["Christopher Millard", "3iURWZVdT1Q"]
])

let mozartFigaro = Composition(id: 22, composer: "Wolfgang Amadeus Mozart", composerLast: "Mozart", name: "Le nozze di Figaro", date: "1786", era: "Classical", genre: "Opera", excerpts: [
    Excerpt(id: 48, description: "Excerpt 1", measures: "Overture, mm. 1 - 24", pictures: [["Bassoon 1 and 2", "1107"]]),
    Excerpt(id: 49, description: "Excerpt 2", measures: "Overture, mm. 101 - 123", pictures: [["Bassoon 1 and 2", "1108"]]),
    Excerpt(id: 50, description: "Excerpt 3", measures: "Overture, mm. 139 - 171", pictures: [["Bassoon 1 and 2", "1109"]]),
    Excerpt(id: 51, description: "Excerpt 4", measures: "Overture, mm. 214 - 236", pictures: [["Bassoon 1 and 2", "1110"]])
], videos: [
    ["Bernard Haitink, London Philharmonic Orchestra", "T7i4z3HtE_U"],
    ["Claudio Abbado, Wiener Philharmoniker", "dj2zU20yyqM"],
    ["Gérard Korsten, Orchestra e Coro del Teatro alla Scala", "_OYtlGpApc0"],
    ["Karl Böhm, Wiener Philharmoniker", "SVyPWJdZx1U"],
    ["Karl Böhm, Wiener Philharmoniker", "fef03047ZX8"],
    ["Nikolaus Harnoncourt, Vienna Philharmonic", "y581_89UrIY"],
    // Masterclasses
    ["David McGill", "y3FrPXrr-h4"]
])

let ravelMiroirs = Composition(id: 23, composer: "Maurice Ravel", composerLast: "Ravel", name: "Miroirs", date: "1905", era: "Modern", genre: "Piano Suite", excerpts: [
    // Ravel Works images temporarily removed due to copyright restrictions
    Excerpt(id: 52, description: "Excerpt 1", measures: "No. 4 (Alborada del Gracioso), [9] - [12]", pictures: [["Bassoon 1 and 2", /*1111*/"none"]])
], videos: [
    ["Herbert von Karajan, Orchestre de Paris", "HQ0NgNK-Hl0"],
    ["Pablo Heras-Casado, Frankfurt Radio Symphony", "kGgEroiMBCY"],
    ["Seiji Ozawa, Boston Symphony Orchestra", "paDKkCEWx1g"],
    ["Seiji Ozawa, Boston Symphony Orchestra", "h_706v6fan4"],
    ["Sergiu Celibidache, Münchner Philharmoniker", "TlP2lKUGs4M"],
    // Masterclasses
    ["David McGill", "6rRUJHa7E4I"]
])

let ravelBolero = Composition(id: 24, composer: "Maurice Ravel", composerLast: "Ravel", name: "Boléro", date: "1928", era: "Modern", genre: "Orchestral Piece", excerpts: [
    // Ravel Works images temporarily removed due to copyright restrictions
    Excerpt(id: 53, description: "Excerpt 1", measures: "[2] - [3]", pictures: [["Bassoon 1 and 2", /*1112*/"none"]])
], videos: [
    ["Gustavo Dudamel, Wiener Philharmoniker", "mhhkGyJ092E"],
    ["Riccardo Muti, l'Orchestra della Scala di Milano", "64qB8qBoRF8"],
    ["Sergiu Celibidache, The Danish National Radio Symphony Orchestra", "gy5Ve3338-E"],
    ["Valery Gergiev, London Symphony Orchestra", "ODeNHRtVNO4"],
    // Masterclasses
    ["David McGill", "5XB-MH2QoAI"],
    ["Simon van Holen", "TuyWybKHQkU"]
])

let ravelMaMere = Composition(id: 25, composer: "Maurice Ravel", composerLast: "Ravel", name: "Ma mére l'Oye", date: "1910", era: "Modern", genre: "Suite", excerpts: [
    // Ravel Works images temporarily removed due to copyright restrictions
    Excerpt(id: 54, description: "Excerpt 1", measures: "No. IV, [2] - 9 mm. after [5]", pictures: [[/*"Bassoon 1 and 2"*/"Bassoons", /*1113*/"none"] /*, ["Contrabassoon", "1114"] */])
], videos: [
    ["Charles Dutoit, Orchestre national de France", "IuCTTsCAOUk"],
    ["정명훈 (Chung Myung-Whun), Orchestre Philharmonique de Radio France", "ZFVu8TP77Tw"],
    ["Edward Gardner, Radio Filharmonisch Orkest", "o3rir1bWTyI"],
    ["Julian Kuerti, Frankfurt Radio Symphony Orchestra", "N_ENSdLOblk"],
    ["Nicolás Pasquet, The Orchestra of the University of Music FRANZ LISZT Weimar", "5U7osEigQZM"],
    ["Pierre Boulez, Berliner Philharmoniker (With Score)", "7w7RqLSDeFw"],
    ["Víctor Pablo Pérez, Orquesta Sinfónica de Galicia", "VosHWMwquE8"]
])

let ravelRapsodie = Composition(id: 26, composer: "Maurice Ravel", composerLast: "Ravel", name: "Rapsodie espagnole", date: "1907", era: "Modern", genre: "Orchestral Rhapsody", excerpts: [
    // Ravel Works images temporarily removed due to copyright restrictions
    Excerpt(id: 55, description: "Excerpt 1", measures: "Mov. I, [8] - [9]", pictures: [["Bassoon 1 and 2", /*1115*/"none"]])
], videos: [
    ["Charles Dutoit, Orchestre Symphonique de Montréal", "IDpxOmX3FD8"],
    ["DePaul Symphony Orchestra", "SqDD4vjZJfw"],
    ["Pablo Heras-Casado, Frankfurt Radio Symphony", "bbIAPqQcWkQ"],
    ["Seiji Ozawa, Boston Symphony Orchestra", "-2cGymGpFpE"],
    ["Seiji Ozawa, Boston Symphony Orchestra (With Score)", "2rEc_vksrnc"],
    ["Sergiu Celibidache, Münchner Philharmoniker", "er0sduxzBFg"],
    // Masterclasses
    ["David McGill", "7OfUGXXU-sM"]
])

let rimskyKorsakovScheherazade = Composition(id: 27, composer: "Nikolai Rimsky-Korsakov", composerLast: "Rimsky-Korsakov", name: "Scheherazade", date: "1888", era: "Romantic", genre: "Symphonic Suite", excerpts: [
    Excerpt(id: 56, description: "Excerpt 1", measures: "Mov. II, mm. 5 - [A]", pictures: [["Bassoon 1", "1116"]]),
    Excerpt(id: 57, description: "Excerpt 2", measures: "Mov. II, [L] - [M]", pictures: [["Bassoon 1", "1117"]])
], videos: [
    ["André Previn, Vienna Philharmonic Orchestra", "p_iPn1GbUUU"],
    ["Eugene Ormandy, Philadelphia Orchestra", "LEN5ObBND88"],
    ["Leif Segerstam, Sinfónica de Galicia", "zY4w4_W30aQ"],
    ["Nejc Bečan, Gimnazija Kranj Symphony Orchestra", "17lEx0ytE_0"],
    ["Valery Gergiev, Vienna Philharmonic", "SQNymNaTr-Y"],
    ["Yevgeny Svetlanov, USSR State Symphony Orchestra", "jR_Q7NbLzyU"],
    ["Yuri Temirkanov, Saint-Petersburg Philharmonic Orchestra", "vdnUBQT5Bqw"],
    // Masterclasses
    ["David McGill", "7bGoXq-U2Lc"],
    ["LPO woodwind players", "nGUu6607Gzc"]
])

let rossiniLaGazza = Composition(id: 28, composer: "Gioachino Rossini", composerLast: "Rossini", name: "La gazza ladra", date: "1817", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 58, description: "Excerpt 1", measures: "Overture, [D] - [E]", pictures: [["Bassoon 1", "1118"], ["Bassoon 2", "1119"]])
], videos: [
    ["Boian Videnoff, Mannheimer Philharmoniker", "KYfaKAIf-SU"],
    ["Daniel Harding, Orchestra del Teatro La Fenice", "UjDXNqG0Deg"],
    ["Gianluigi Gelmetti, Orchestra Sinfonica della RAI di Torino", "0F73mZjtMXU"],
    ["Gustavo Dudamel, Wiener Philharmoniker", "3MIbDR1QRHs"],
    ["Michael Halasz, Zagreb Festival Orchestra", "Qqa_NADTVQw"],
    ["Sir Thomas Beecham,  the Royal Philharmonic Orchestra", "Kw1bfRa83EQ"],
    // Masterclasses
    ["David McGill", "_td0CHqwzs4"]
])

let sibelius2 = Composition(id: 29, composer: "Jean Sibelius", composerLast: "Sibelius", name: "Symphony No. 2", date: "1902", era: "Modern", genre: "Symphony", excerpts: [
    Excerpt(id: 59, description: "Excerpt 1", measures: "Mov. II, mm. 40 - 55", pictures: [["Bassoon 1", "1120"], ["Bassoon 2", "1121"]])
], videos: [
    ["Dima Slobodeniouk, Orquesta Sinfónica de Galicia", "g82t0AJ1FnY"],
    ["George Szell, Royal Concertgebouw Orchestra", "raIy56s-O7w"],
    ["Gustavo Dudamel, Gothenburg Symphony Orchestra", "bpCcRZY1grc"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra", "WFfbXvJXimg"],
    ["Leonard Bernstein, Wiener Philharmoniker", "SAOf46CXaaw"],
    ["Paavo Järvi, Orchestre Paris", "K97J2Vlk-a8"],
    ["Petri Sakari, Iceland Symphony Orchestra (With Score)", "YXGxOa682Uc"],
    ["Susanna Mälkki, Frankfurt Radio Symphony", "iXU8EXL7a_4"],
    ["Yan Pascal Tortelier, Iceland Symphony Orchestra", "Z6iNaFWV3tc"],
    // Masterclasses
    ["Christopher Millard", "ehGhd_UwtwE"]
])

let sibeliusViolin = Composition(id: 30, composer: "Jean Sibelius", composerLast: "Sibelius", name: "Violin Concerto", date: "1904", era: "Modern", genre: "Violin Concerto", excerpts: [
    Excerpt(id: 60, description: "Excerpt 1", measures: "Mov. II, mm. 10 - 21", pictures: [["Bassoon 1", "1122"], ["Bassoon 2", "1123"]])
], videos: [
    ["Christoph Eschenbach, SWR Symphonieorchester", "iIafobNq-tU"],
    ["Daniel Barenboim, Chicago Symphony Orchestra", "YsbrRAgv1b4"],
    ["Eugene Ormandy, The Philadelphia Orchestra", "M-P183jzdfw"],
    ["Jaap van Zweden, Radio Filharmonisch Orkest", "gpS_u5RvMpM"],
    ["Kent Nagano, Gothenburg Symphony Orchestra", "3u-unvYedx8"],
    ["Mikko Franck, Orchestre Philharmonique de Radio France", "J0w0t4Qn6LY"],
    ["Sixten Ehrling, Stockholm Radio Symphony Orchestra (With Score)", "5gwjkFoBX4Y"]
])

let smetanaBarteredBride = Composition(id: 31, composer: "Bedřich Smetana", composerLast: "Smetana", name: "The Bartered Bride", date: "1866", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 61, description: "Excerpt 1", measures: "Overture, mm. 1 - 11", pictures: [["Bassoon 1", "1124"], ["Bassoon 2", "1125"]])
], videos: [
    ["Jac van Steen, Garsington Opera", "bBHSzJoDNC4"],
    ["Jiří Bělohlávek, Česká filharmonie", "9eWXqxKX0KI"],
    ["Mariss Jansons, Berliner Philharmoniker", "QLUm_yvnyo4"],
    ["Theodore Kuchar, Janáček Philharmonic Orchestra", "nk8g9VvD9M4"],
    ["Zděnek Košler, Česká filharmonie", "nv1uDEg92-4"]
])

let rStraussAlsoSprach = Composition(id: 32, composer: "Richard Strauss", composerLast: "Strauss", name: "Also sprach Zarathustra", date: "1896", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 62, description: "Excerpt 1", measures: "[55] to [56]", pictures: [["Bassoon 1", "1126"]])
], videos: [
    ["Georg Solti, Chicago Symphony Orchestra", "IFPwm0e_K98"],
    ["Giuseppe Sinopoli, Staatskapelle Dresden", "LpNRBublNr0"],
    ["Gustavo Dudamel, Vienna Philharmonic Orchestra", "ETveS23djXM"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra (With Score)", "c8r_pZoaZf0"],
    ["Herbert von Karajan, Vienna Philharmonic", "h3eEHZCahVU"],
    ["Jonathan Nott, Gustav Mahler Youth Orchestra", "6RdZ7rO_cr0"],
    ["Mariss Jansons, Royal Concertgebouw Orchestra", "D4d88IgvhK4"],
    ["Mariss Jansons, Symphonieorchester des Bayerischen Rundfunks", "hC-PA0YGzK0"],
    // Masterclasses
    ["Christopher Millard", "42mJmxSFyo4"]
])

let straussDeathAndTransfiguration = Composition(id: 33, composer: "Richard Strauss", composerLast: "Strauss", name: "Death and Transfiguration", date: "1889", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 63, description: "Excerpt 1", measures: "Allegro, molto agitato - 2 mm. before [F]", pictures: [["Bassoon 1", "1127"], ["Bassoon 2", "1128"], ["Contrabassoon", "1129"]]),
    Excerpt(id: 64, description: "Excerpt 2", measures: "7 mm. before [T] - 8 mm. after [T]", pictures: [["Bassoon 1", "1130"], ["Bassoon 2", "1131"], ["Contrabassoon", "1132"]])
], videos: [
    ["Alexis Hauser, McGill Symphony Orchestra", "Pd_GmPLPpRg"],
    ["Arturo Toscanini, NBC Orchestra (With Score)", "L3bD7g3mp_Y"],
    ["David Zinman, Tonhalle Orchestra Zürich (With Score)", "6hfQpaePuxo"],
    ["David Zinman, Zurich Tonhalle Orchestra", "3D5Up1aYJJs"],
    ["George Szell, Cleveland Orchestra", "4K3E1wZWSn0"],
    ["George Szell, Cleveland Orchestra", "jHiNvJr-OxY"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra", "4f92pYZYGfc"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra", "W6M3NdqyXNc"],
    ["Jan Latham-Koenig, Symfonieorkest Vlaanderen", "mu2M67IQ68Q"],
    ["Mikko Franck, Orchestre Philharmonique de Radio France", "umfttWN5xYo"]
])

let straussDonJuan = Composition(id: 34, composer: "Richard Strauss", composerLast: "Strauss", name: "Don Juan", date: "1888", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 65, description: "Excerpt 1", measures: "[A] - [B]", pictures: [["Bassoon 1", "1133"], ["Bassoon 2", "1134"], ["Contrabassoon", "1135"]])
], videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "XG4uBRBMdzY"],
    ["Georg Solti, Chicago Symphony Orchestra", "_um5yLJx-RM"],
    ["Herbert von Karajan, Osaka Philharmonic Orchestra", "F_V5KhUxWG8"],
    ["Thomas Schippers, Cincinnati Symphony Orchestra (With Score)", "8woshq-F21s"],
    ["Wolfgang Sawallisch, Philadelphia Orchestra", "KP89c9KfetA"]
])

let straussDonQuixote = Composition(id: 35, composer: "Richard Strauss", composerLast: "Strauss", name: "Don Quixote", date: "1897", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 66, description: "Excerpt 1", measures: "Var. IX, 8 mm. before [65] - 7 mm. after [65]", pictures: [["Bassoon 1", "1136"], ["Bassoon 2", "1137"]])
], videos: [
    ["Bernard Haitink, Symphonieorchester des Bayerischen Rundfunks", "_u5Zq769TJ4"],
    ["Dennis Russell Davies, Orquesta Sinfónica de Galicia", "Bo7KAGhrrIs"],
    ["Herbert von Karajan, Berliner Philharmoniker", "_6P1WHXKAlk"],
    ["Lorin Maazel, Symphonieorchester des Bayerischen Rundfunks", "-7EwD2Vz8fw"],
    ["George Pehlivanian, Orchestra dell'Accademia Nazionale di Santa Cecilia (With Score)", "5PvCGu2Ue0U"],
    ["Seiji Ozawa, Boston Symphony Orchestra", "Un6zfgAJi8I"],
    ["Wolfgang Sawallisch, NHK Symphony", "dJNEuvfeshg"],
    // Masterclasses
    ["Christopher Millard", "IFfHwILVmcI"]
])

let straussHeldenleben = Composition(id: 36, composer: "Richard Strauss", composerLast: "Strauss", name: "Ein Heldenleben", date: "1898", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 67, description: "Excerpt 1", measures: "[86] - [87]", pictures: [["Bassoon 1", "1138"], ["Bassoon 2", "1139"]])
], videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra (With Score)", "mE-mZUEXWsg"],
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra", "Us1jfC7bMpA"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra", "nu5AXJGmkJk"],
    ["Manfred Honeck, Pittsburgh Symphony Orchestra", "NGlzlNlnw_w"],
    ["Mariss Jansons, Symphonie-Orchestrer des Bayerischen Rundfunks", "_2-dLoWorUs"],
    ["Valery Gergiev, Munich Philharmonic Orchestra", "m-aaCruKsLI"],
    // Masterclasses
    ["David McGill", "h2krD8-0mjs"]
])

let straussEulenspiegel = Composition(id: 37, composer: "Richard Strauss", composerLast: "Strauss", name: "Till Eulenspiegel's Merry Pranks", date: "1895", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 68, description: "Excerpt 1", measures: "6 mm. before [32] to 8 mm. after [33]", pictures: [["Bassoon 1", "1140"], ["Bassoon 2", "1141"], ["Contrabassoon", "1142"]])
], videos: [
    ["Christoph von Dohnányi, NDR Elbphilharmonie Orchester", "EMcQQFWAnA0"],
    ["Georg Solti, Wiener Philharmoniker", "ZpA47nVfgBY"],
    ["Herbert von Karajan, Berliner Philharmoniker", "99qWgSItaNQ"],
    ["Leonard Bernstein, New York Philharmonic Orchestra (With Score)", "1zbCfP9wGt4"],
    ["Lorin Maazel, Symphonieorchester des Bayerischen Rundfunk (With Score)", "QV5r9KG1eyc"],
    ["Richard Strauss, Vienna Philharmonic", "IouFZBgEG3s"],
    ["Masahiko Tanaka, Waseda Symphony Orchestra", "S7O9Oa22nsQ"],
    ["Zubin Mehta, New York Philharmonic", "ZU556MvQN6c"],
    // Masterclasses
    ["David McGill", "eQKRVgYbVEQ"]
])

let stravinskyFirebird = Composition(id: 38, composer: "Igor Stravinsky", composerLast: "Stravinsky", name: "The Firebird", date: "1910", era: "Modern", genre: "Ballet", excerpts: [
    Excerpt(id: 69, description: "Excerpt 1", measures: "Berceuse, [1] - [3]", pictures: [["Bassoon 1", "1147"]]),
    Excerpt(id: 70, description: "Excerpt 2", measures: "Berceuse, [6] - [8]", pictures: [["Bassoon 1", "1148"]])
], videos: [
    ["정명훈 (Chung Myung-Whun), Orchestre de l'Opera Bastille (With Score)", "6wbkKWrUD-A"],
    ["Igor Stravinsky, NHK Symphony Orchestra", "U-u33i1M0fI"],
    ["Igor Stravinsky, New York Philharmonic", "IrMGqAmjbug"],
    ["Ion Marin, London Symphony Orchestra", "i_T5O2u4sGA"],
    ["Poul Jorgensen, Royal Danish Orchestra", "Yo9L9H--t3k"],
    ["Peter Oundjian, Toronto Symphony Orchestra", "pHxstiIybz4"],
    ["Valery Gergiev, Kirov theatre Orchestra", "SIIdf07cDFc"],
    ["Valery Gergiev, Vienna Philharmonic", "RZkIAVGlfWk"],
    // Masterclasses
    ["David McGill", "IgOhwJ-oNN4"]
])

let stravinskyRite = Composition(id: 39, composer: "Igor Stravinsky", composerLast: "Stravinsky", name: "The Rite of Spring", date: "1913", era: "Modern", genre: "Ballet", excerpts: [
    Excerpt(id: 71, description: "Excerpt 1", measures: "Part I, mm. 1 - 15", pictures: [["Bassoon 1", "1143"], ["Bassoon 2", "1144"], ["Bassoon 3", "1145"]]),
    Excerpt(id: 72, description: "Excerpt 2", measures: "Part I, [12] - 4 mm. after [12]", pictures: [["Bassoon 1", "1146"]])
], videos: [
    ["Claudio Abbado, London Symphony Orchestra", "RRyd5zR_3Bc"],
    ["Gianluigi Gelmetti, Radio-Sinfonieorchester Stuttgart des SWR", "U89DW5idH-g"],
    ["Jaap van Zweden, Radio Filharmonisch Orkest", "5UJOaGIhG7A"],
    ["Leonard Bernstein, London Philharmonic Orchestra", "a9M2oTHa3GM"],
    ["Leonard B​e​r​n​ste​i​n, New York Philharmonic Orchestra (With Score)", "rP42C-4zL3w"],
    ["Lorin Maazel, The Cleveland Orchestra (With Score)", "0XyTWt82XQM"],
    ["Pierre Boulez, BBC Symphony Orchestra", "yGZh4vww97w"],
    ["Sir Simon Rattle, London Symphony Orchestra", "EkwqPJZe8ms"],
    ["Valery Gergiev, Mariinsky Theatre Orchestra", "YOZmlYgYzG4"],
    ["Zubin Mehta, Berliner Philharmoniker", "BhsRshwB5q4"],
    // Masterclasses
    ["David McGill", "KKZeq1EzxHg"]
])

let stravinskySoldiers = Composition(id: 40, composer: "Igor Stravinsky", composerLast: "Stravinsky", name: "L'histoire du soldat", date: "1918", era: "Modern", genre: "Theatrical Work", excerpts: [
    Excerpt(id: 73, description: "Excerpt 1", measures: "No. III (Ragtime), [26] - 3 mm. after [27]", pictures: [["Bassoon", "1149"]])
], videos: [
    ["Butler Dance, Music and Theatre", "qh7sBAUd3hI"],
    ["Leo Geyer, Constella Ballet & Orchestra", "RewFQpEY55w"],
    ["Leo Geyer, Constella Ballet & Orchestra (With Score)", "JgSGTO36zUs"],
    ["Maxim Rysanov", "LMSOMBINNPM"],
    ["Parlance Chamber Concerts", "zRl5bGIsYgI"],
    ["Patrick Yim, Contemporary Chamber Players", "d77jzEVcohA"],
    ["SSG Chris Bargain, The U.S. Army Band \"Pershing's Own\"", "bB018B3uKKo"]
])

let stravinskyNightengale = Composition(id: 41, composer: "Igor Stravinsky", composerLast: "Stravinsky", name: "Le Chant du rossignol", date: "1917", era: "Modern", genre: "Symphonic Poem", excerpts: [
    Excerpt(id: 74, description: "Excerpt 1", measures: "4 mm. after [18] - 2 mm. after [20]", pictures: [["Bassoon 1 and 2", "1150"]]),
    Excerpt(id: 75, description: "Excerpt 2", measures: "[35] - [38]", pictures: [["Bassoon 1 and 2", "1151"]]),
    Excerpt(id: 76, description: "Excerpt 3", measures: "[65] - [67]", pictures: [["Bassoon 1 and 2", "1152"]])
], videos: [
    ["Ernest Ansermet, L'Orchestre de la Suisse Romande", "3bO0bQPfBTQ"],
    ["Gerard Schwarz, Seattle Symphony Orchestra (With Score)", "NDvttESHowE"],
    ["Juraj Valčuha, Frankfurt Radio Symphony", "zTYqJGvEBsg"],
    ["Lorin Maazel, Berlin Philharmonic", "7GDX8dsSlxs"],
    ["Lorin Maazel, Radio-Symphonie-Orchester Berlin", "SqOqsxppJ5M"],
    ["Pierre Boulez, Vienna Philharmonic", "mMK5kue-NGg"]
])

let tchaikRomeo = Composition(id: 42, composer: "Pyotr Ilyich Tchaikovsky", composerLast: "Tchaikovsky", name: "Romeo and Juliet", date: "1880", era: "Romantic", genre: "Overture, Fantasia", excerpts: [
    Excerpt(id: 77, description: "Excerpt 1", measures: "mm. 164 - 175", pictures: [["Bassoon 1", "1153"], ["Bassoon 2", "1154"]])
], videos: [
    ["Claudio Abbado, Berliner Philharmoniker", "znKS1QuCUI0"],
    ["Dmitri Slobodeniouk, Netherlands Radio Philharmonic Orchestra", "f6qZUCi7ToQ"],
    ["Gustavo Dudamel, Berliner Philharmoniker", "2l8llogGKto"],
    ["Herbert von Karajan, Berliner Philharmoniker", "tnyC2uwJ4qg"],
    ["Herbert von Karajan, Wiener Philharmoniker", "2jTHmretpw4"],
    ["Valery Gergiev, London Symphony Orchestra", "Cxj8vSS2ELU"],
    ["Valery Gergiev, Mariinsky Theatre Orchestra (With Score)", "cn3U8AVoWdY"],
    ["Yannick Nézet-Séguin, Rotterdam Philharmonic Orchestra", "_Y_tLuudGGk"]
])

let tchaik4 = Composition(id: 43, composer: "Pyotr Ilyich Tchaikovsky", composerLast: "Tchaikovsky", name: "Symphony No. 4", date: "1878", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 78, description: "Excerpt 1", measures: "Mov. I, [E] - m. 114", pictures: [["Bassoon 1", "1155"]]),
    Excerpt(id: 79, description: "Excerpt 2", measures: "Mov. I, mm. 294 - 300", pictures: [["Bassoon 1", "1156"]]),
    Excerpt(id: 80, description: "Excerpt 3", measures: "Mov. II, m. 274 to End", pictures: [["Bassoon 1", "1157"]])
], videos: [
    ["Carlos Miguel Prieto, Frankfurt Radio Symphony", "Y7G5ithbFys"],
    ["Christian Lindberg, The Arctic Philharmonic Orchestra", "ieYFdj1wI_M"],
    ["Claudio Abbado, Chicago Symphony Orchestra", "XxvTGgoStcY"],
    ["Gennady Rozhdestvensky, USSR State TV and Radio Symphony Orchestra (With Score)", "_Xldfaf4NGw"],
    ["Herbert Von Karajan, Vienna Philharmonic Orchestra", "cnXd4ZqN_c8"],
    ["Leonard Bernstein, New York Philharmonic", "4d1Me2gRZIQ"],
    // Masterclasses
    ["David McGill, I", "eSwIZb-H34I"],
    ["David McGill, II", "H10BZdjXFH4"],
    ["Stefan Schweigert", "iczSNXRUaJs"]
])

let tchaik5 = Composition(id: 44, composer: "Pyotr Ilyich Tchaikovsky", composerLast: "Tchaikovsky", name: "Symphony No. 5", date: "1888", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 81, description: "Excerpt 1", measures: "Mov. I, [Q] - 13 mm. after [Q]", pictures: [["Bassoon 1", "1158"], ["Bassoon 2", "1159"]]),
    Excerpt(id: 82, description: "Excerpt 2", measures: "Mov. II, 4 mm. before [D] - 4 mm. after [E]", pictures: [["Bassoon 1", "1160"], ["Bassoon 2", "1161"]]),
    Excerpt(id: 83, description: "Excerpt 3", measures: "Mov. III, 5 mm. after [A] - 18 mm. after [D]", pictures: [["Bassoon 1", "1162"], ["Bassoon 2", "1163"]])
], videos: [
    ["Elim Chan, Netherlands Philharmonic Orchestra", "xFf5GA2UpMs"],
    ["Emmanuel Krivine, Orchestre National de France", "Z1hFlRVB7DI"],
    ["Herbert von Karajan, Berliner Philharmoniker", "NeNeQrUXymg"],
    ["Leonard Bernstein, Boston Symphony Orchestra", "w2JBT0HC98I"],
    ["Leonard Bernstein, New York Philharmonic Orchestra (With Score)", "4_PSjr47AUo"],
    ["Manfred Honeck, Frankfurt Radio Symphony", "a_B02BZp-5Y"],
    ["Valery Gergiev, Mariinsky Orchestra", "nmMLFvjkcEs"],
    ["Vasily Petrenko, The Oslo Philharmonic", "JUk0WZVCnk4"],
    // Masterclasses
    ["David McGill, I", "YCPnhvrTd6E"],
    ["David McGill, II", "UnKVJdHto1g"],
    ["David McGill, III", "bnUrxxYdX9g"]
])

let tchaik6 = Composition(id: 45, composer: "Pyotr Ilyich Tchaikovsky", composerLast: "Tchaikovsky", name: "Symphony No. 6", date: "1893", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 84, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 12", pictures: [["Bassoon 1", "1164"]]),
    Excerpt(id: 85, description: "Excerpt 2", measures: "Mov. IV, mm. 2 - 36", pictures: [["Bassoon 1", "1165"], ["Bassoon 2", "1166"]])
], videos: [
    ["정명훈 (Chung Myung-Whun), Seoul Philharmonic Orchestra", "IH-zp9LjiEs"],
    ["Claudio Abbado, Orquesta Sinfónica Simón Bolívar", "zIJiPlbJjs8"],
    ["Daniele Gatti, The Orchestre National de France", "NfusWGFWMq8"],
    ["Georg Solti", "V4qLtjCXxkg"],
    ["Herbert von Karajan, Wiener Philharmonic", "KvGC8hZC29U"],
    ["Herbert von Karajan, Wiener Philharmonic", "-qgo1KFj0do"],
    ["Lionel Bringuier, Frankfurt Radio Symphony Orchestra", "SVnF3x44rvU"],
    ["Valery Gergiev, Mariinsky Theatre Orchestra (With Score)", "8VswsTffasc"],
    // Masterclasses
    ["David McGill", "zlYr3uHnzvA"]
])

let wagnerTannhauser = Composition(id: 46, composer: "Richard Wagner", composerLast: "Wagner", name: "Tannhäuser", date: "1845", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 86, description: "Excerpt 1", measures: "Overture, mm. 1 - 16", pictures: [["Bassoon 1", "1167"], ["Bassoon 2", "1168"]])
], videos: [
    ["Christian Thielemann, Münchner Philharmoniker", "KTM7E4-DN0o"],
    ["Daniel Barenboim", "Ozp8CbktEwQ"],
    ["Klaus Tennstedt, Berliner Philharmoniker", "AWIjohOIYNc"],
    ["Wolfgang Sawallisch, Bayreuth Festival Orchestra & Choir (With Score)", "LyZlLsBWwbo"],
    ["Zubin Mehta, New York Philharmonic Orchestra (With Score)", "3_Eq9H4bSdQ"]
])


// MARK: Composers

let beethoven = Composer(id: 1, name: "Ludwig Van Beethoven", ipa: "ˈlʊdvɪɡ væn ˈbeɪt(h)oʊvən", image: 2000, country: "Germany", dates: "1770-1827", bio: "Ludwig van Beethoven was a German composer and pianist. Beethoven began his compositional life firmly in the classical era, but was a key figure in the early romantic era. Beethoven grew to be mostly deaf in his lifetime, but never ceased composing. He was the first composer to incorporate trombones in a symphonic setting, and composed nine symphonies in his lifetime. He is considered to be one of the greatest composers of all time.", excerpts: [
    beethovenleonore, beethoven4, beethoven5, beethoven6, beethoven9, beethovenViolin
])

let berlioz = Composer(id: 2, name: "Hector Berlioz", ipa: "ɛkˈtɔr bɛr liˌoʊz", image: 2001, country: "France", dates: "1803-1869", bio: "Hector Berlioz was a French Romantic composer, who gained his popularity through his unwillingness to accept traditional rules and formulas. He frequently employed extended techniques in many instruments, and developed his own forms and techniques for composition. He was internationally acclaimed as a conductor, and was also a prominant musical journalist.", excerpts: [
    berliozSymphonieFantastique
])

let brahms = Composer(id: 3, name: "Johannes Brahms", ipa: "joˈhanəs ˈbʁaːms", image: 2002, country: "Germany", dates: "1833-1897", bio: "Johannes Brahms was one of the most famous composers of all time. He is most famous for his four symphonies, but he wrote for many diverse ensembles. Brahms was a perfectionist in all that he did, and was known to occaisionally destroy some of his work to prevent it from being seen by the outside world.", excerpts: [
    brahms1, brahms3, brahmsVariations, brahmsViolin
])

let donizetti = Composer(id: 4, name: "Gaetano Donizetti", ipa: "ɡaeˈtaːno donidˈdzetti", image: 2003, country: "Italy", dates: "1797-1848", bio: "Donizetti was one of the leading composers of the Bel Canto opera style, along with Rossini and Bellini. Donizetti did not come from a musical background, but was taken up by the composer Simon Mayr at a young age and enrolled in a music school. Throughout the course of his life he composed almost 70 operas. He moved to Paris towards the end of his career to escape the censorship that he was always subject to in Naples.", excerpts: [
    donizettiLelisir
])

let dukas = Composer(id: 5, name: "Paul Dukas", ipa: "pɔl düˈka", image: 2004, country: "France", dates: "1865-1935", bio: "Dukas was a French composer, scholar, teacher, and critic. His music critiques were published regularly in five different French journals. Dukas was extremely self critical, and regularly abandoned and destroyed his own compositions.", excerpts: [
    dukasSorcerer
])

let mahler = Composer(id: 6, name: "Gustav Mahler", ipa: "ˈgʊs tɑf ˈmɑ lər", image: 2005, country: "Austrian Empire", dates: "1860-1911", bio: "Mahler is one of the most popular composers of all time. In 2016, a BBC Music survey ranked three of his symphonies among the top ten symphonies of all time. His music continues to be among the top recorded and perfomed in all of classical music. During his day, he was also among one of the top conductors of his era, and was the first conductor of the New York Philharmonic Orchestra.", excerpts: [
    mahler2, mahler4, mahler5, mahler9
])

let mendellsohn = Composer(id: 7, name: "Felix Mendelssohn", ipa: "'fi lɪks 'mɛn dl sən", image: 2006, country: "Germany", dates: "1809-1947", bio: "Mendelssohn was born into a Jewish family, but was baptised Reformed Christian at the age of seven. He was known as a child prodigy, but his parents did not seek to capitalize on his talents. Well known as a composer, conductor, and organist, Mendelssohn helped to bring fame to the music of Bach.", excerpts: [
    mendelssohnMidsummer, mendelssohn3
])

let mozart = Composer(id: 8, name: "Wolfgang Amadeus Mozart", ipa: "ˈwʊlf gæŋ ˌæm əˈdeɪ əs ˈmoʊt sɑrt", image: 2007, country: "Germany", dates: "1756-1791", bio: "Mozart gained popularity as a pianist and composer at an early age. He gained employment as a court musician at the Salzburg court, but quickly lost interest and began traveling looking for other employment. In Vienna, he found great fame, but worked his whole life trying to achieve financial stability: a goal he was never able to achieve. Mozart's death is also very mysterious and controvercial.", excerpts: [
    mozartCosi, mozart35, mozart41, mozartFigaro
])

let ravel = Composer(id: 9, name: "Maurice Ravel", ipa: "moʊˈris rəˈvɛl", image: 2008, country: "France", dates: "1875-1937", bio: "Ravel was an impressionist French composer. He was a careful, and slow composer, and composed much less compared to many other composers. He was also one of the first composers to realize the potential of recorded music, and was one of the first composers to record their music and marked it to a larger audience this way.", excerpts: [
    ravelBolero, ravelMaMere, ravelMiroirs, ravelRapsodie
])

let rimskyKorsakov = Composer(id: 10, name: "Nikolai Rimsky-Korsakov", ipa: "nʲɪkəˈlaj ˈrʲimskʲɪj ˈkorsəkəf", image: 2009, country: "Russia", dates: "1844-1908", bio: "Nikolai Rimsky-Korsakov was one of the most famous Russian composers. He was a master orchestrator, publishing a textbook on the subject using musical examples solely from his own compositions, and his most famous compositions are his orchestral works. Rimsky-Korsakov also spent a large portion of his musical life in association with the Russian military.", excerpts: [
    rimskyKorsakovScheherazade
])

let rossini = Composer(id: 11, name: "Gioachino Rossini", ipa: "dʒɔ ɑkˈki nɔ roʊˈsi ni", image: 2010, country: "Italy", dates: "1792-1868", bio: "Rossini was an Italian composer from the romantic era. His 39 operas gained him great success early in life, but he unexplainably gave up music almost entirely for the last 40 years of his life.", excerpts: [
    rossiniLaGazza
])

let sibelius = Composer(id: 12, name: "Jean Sibelius", ipa: "ʒɑn  sɪˈbeɪ li əs", image: 2011, country: "Finland", dates: "1865-1957", bio: "Sibelius is the most well known composer to come out of Finland. His music is credited with helping Finland to develop a national identity, and his most famous work \"Finlandia\" is known as Finland's unofficial national anthem. Sibelius mysteriously stopped composing in the last thirty years of his life, retiring to a quite life in Järvenpää.", excerpts: [
    sibelius2, sibeliusViolin
])


let smetana = Composer(id: 13, name: "Bedřich Smetana", ipa: "ˌbɛdərʒɪx ˈsmɛtənə", image: 2012, country: "Austrian Empire, Austria-Hugary (Now Czech Republic)", dates: "1824-1884", bio: "Smetana was a child prodigy who had his first composition performed at age six. His music became closely tied to sentiments and movements of independant statehood. He became completely deaf for the last ten years of his life.", excerpts: [
    smetanaBarteredBride
])

let rStrauss = Composer(id: 14, name: "Richard Strauss", ipa: "ˈʁɪçaʁt ˈʃtʁaʊs", image: 2013, country: "Germany", dates: "1864-1949", bio: "Richard Strauss was one of the leading composers of the Romantic Era. He, along with Gustav Mahler, were considered successors of Richard Wagner. Although Strauss composed music for almost every classical genre, he is most famous for his tone poems. Strauss' compositional output began when he was just six years old, and continued almost eighty years later until his death.", excerpts: [
    rStraussAlsoSprach, straussDeathAndTransfiguration, straussDonJuan, straussDonQuixote, straussHeldenleben, straussEulenspiegel
])

let stravinsky = Composer(id: 15, name: "Igor Stravinsky", ipa: "ˈi gɔr strəˈvɪn ski", image: 2014, country: "Russia", dates: "1882-1971", bio: "Igor Stravinsky was one of the most influential composers of the twentieth century. Stravinsky's music is very unique from that of other composers, and often contains russian folk melodies. Throughout his life, the kinds of compositions that he composed also changed dramatically, from symphonies, to chamber music, to ballets.", excerpts: [
    stravinskyFirebird, stravinskySoldiers, stravinskyNightengale, stravinskyRite
])

let tchaikovsky = Composer(id: 16, name: "Pyotr Ilyich Tchaikovsky", ipa: "ˈpyɔtr iˈlyitʃ tʃaɪˈkɒfski", image: 2015, country: "Russia", dates: "1840-1893", bio: "Tchaikovsky was the first Russian composer to gain international fame. Tchaikovsky recieved a western European style music education, which seemed to counter the traditional Russian music practices. This dichotomy posed a great challenge for Tchaikovsky, one that affected his self confidence a lot. Although Tchaikovsky's music gained popular support, his life was deeply affected by depression and personal crises.", excerpts: [
    tchaikRomeo, tchaik4, tchaik5, tchaik6
])


let wagner = Composer(id: 17, name: "Richard Wagner", ipa: "ˈʁɪçaʁt ˈvaːɡnɐ", image: 2016, country: "Germany", dates: "1813-1883", bio: "Wagner is one of the most well known composers of all time. His music frequently appears in television shows and movies. He was most well known in his era for his operas, which usually run about four hours. Wagner was unusual as an opera composer because he himself wrote the liberetto for the operas he composed. Wagner had his own opera house constructed, which still stands to this day.", excerpts: [
    wagnerTannhauser
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
        beethovenleonore, beethoven4, beethoven5, beethoven6, beethoven9, beethovenViolin, berliozSymphonieFantastique, brahms1, brahms3, brahmsVariations, brahmsViolin, donizettiLelisir, dukasSorcerer, mahler2, mahler4, mahler5, mahler9, mendelssohnMidsummer, mendelssohn3, mozartCosi, mozart35, mozart41, mozartFigaro, ravelBolero, ravelMaMere, ravelMiroirs, ravelRapsodie, rimskyKorsakovScheherazade, rossiniLaGazza, sibelius2, sibeliusViolin, smetanaBarteredBride, rStraussAlsoSprach, straussDeathAndTransfiguration, straussDonJuan, straussDonQuixote, straussHeldenleben, straussEulenspiegel, stravinskyFirebird, stravinskySoldiers, stravinskyNightengale, stravinskyRite, tchaikRomeo, tchaik4, tchaik5, tchaik6, wagnerTannhauser
    ]
    
    /**
     An alphabetical list of all of the composers in the app.
     */
    var composers: [Composer] = [
        beethoven, berlioz, brahms, donizetti, dukas, mahler, mendellsohn, mozart, ravel, rimskyKorsakov, rossini, sibelius, smetana, rStrauss, stravinsky, tchaikovsky, wagner
    ]
}

/**
 A Model for storing favorite compositions IDs as strings in an encapsulated list. Data is stored internally on every change.
 */
class Favorites: ObservableObject {
    // the actual resorts the user has favorited
    private var compositionIDs: [String]

    // the key we're using to read/write in UserDefaults
    private let saveKey = "Favorites"

    init() {
        // load our saved data
        self.compositionIDs = UserDefaults.standard.stringArray(forKey: saveKey) ?? [String]()
    }

    // returns true if our set contains this resort
    func contains(_ image: String) -> Bool {
        compositionIDs.contains(image)
    }

    // adds the resort to our set, updates all views, and saves the change
    func add(_ image: String) {
        objectWillChange.send()
        compositionIDs.append(image)
        save()
    }

    // removes the resort from our set, updates all views, and saves the change
    func remove(_ image: String) {
        objectWillChange.send()
        var counter = 0
        var removeIndex = 0
        while counter < compositionIDs.count {
            if compositionIDs[counter] == image {
                removeIndex = counter
            }
            counter += 1
        }
        compositionIDs.remove(at: removeIndex)
        save()
    }
    
    func removeAll() {
        objectWillChange.send()
        compositionIDs.removeAll()
        save()
    }

    func save() {
        // write out our data
        UserDefaults.standard.set(self.compositionIDs, forKey: saveKey)
    }
}

/**
 A model for saving user settings. Data is readable and writeable directly to memory from accessing and setting published variables.
 */
class settingsModel: ObservableObject {
    /**
     A static list to display names of random options in the Picker.
     */
    var randomOptions = ["All", "Favorites"]
    
    /**
     Selected Randoms is the user's choice for selecting whether only favorite excerpts or all excerpts will show in the RandomCompositionView. If the user has not chosen, it will default to 0 (All excerpts).
     <p>
     Note: Data will be saved and read directly from memory on read and write of this variable.
     */
    @Published var selectedRandoms: Int = UserDefaults.standard.integer(forKey: "Randoms") {
        didSet {
            objectWillChange.send()
            UserDefaults.standard.set(self.selectedRandoms, forKey: "Randoms")
        }
    }
}
