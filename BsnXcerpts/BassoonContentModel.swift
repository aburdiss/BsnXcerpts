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

let beethovenleonore = Composition(id: 0, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Leonore Overture No. 3", date: "1806", era: "Classical", genre: "Overture", excerpts: [
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

let beethoven4 = Composition(id: 1, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 4", date: "1806", era: "Romantic", genre: "Symphony", excerpts: [
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

let beethoven5 = Composition(id: 2, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 5", date: "1808", era: "Romantic", genre: "Symphony", excerpts: [
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


let pictures = [["Bassoon 1", ""], ["Bassoon 2", ""]]
/*
 Bartok Dance Suite <- Cannot find sheet music, not that important either.
X Beethoven Leonore
X Beethoven Symphony No. 4
X Beethoven Symphony No. 5
 Beethoven Symphony No. 6
 Beethoven Symphony No. 7
 Beethoven Symphony No. 9
 Beethoven Violin Concerto in D
 Berlioz Symphony Fantastique
 Brahms Symphony No. 1
 Brahms Symphony No. 3
 Brahms Variations on a Theme by Haydn
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
    beethovenleonore, beethoven4, beethoven5
])

/**
 An Organized model of all of the Compositions and Composers in alphabetical order.
 */
class BassoonContentModel: ObservableObject {
    /**
     An alphabetical list of all of the compositions in the app.
     */
    var excerpts: [Composition] = [
        beethovenleonore, beethoven4, beethoven5
    ]
    
    /**
     An alphabetical list of all of the composers in the app.
     */
    var composers: [Composer] = [
        beethoven
    ]
}


/*
 let bach = Composer(id: 0, name: "Johann Sebastian Bach", ipa: "joˈhan zeˈbastjan bɑx", image: 2000, country: "Germany", dates: "1685-1750", bio: "Johann Sebastian Bach was a German Baroque composer and musician. He is most well known for is keyboard works, and works for voice and orchestra. Bach was a master of counterpoint and harmonic organization and his influences in these fields continue to affect composers to this day.", excerpts: [
     bachCelloSuite
 ])

 let berlioz = Composer(id: 2, name: "Hector Berlioz", ipa: "ɛkˈtɔr bɛr liˌoʊz", image: 2002, country: "France", dates: "1803-1869", bio: "Hector Berlioz was a French Romantic composer, who gained his popularity through his unwillingness to accept traditional rules and formulas. He frequently employed extended techniques in many instruments, and developed his own forms and techniques for composition. He was internationally acclaimed as a conductor, and was also a prominant musical journalist.", excerpts: [
     berliozFaust, berliozRomanCarnival, berliozRomeoJuliet, berliozSymphonie
 ])

 let bizet = Composer(id: 3, name: "Georges Bizet", ipa: "zhawrzh biˈzeɪ", image: 2003, country: "France", dates: "1838-1875", bio: "Georges Bizet was a prominant French composer of the Romantic Era. Best known for his operas and incidental music, Bizet had little success until his final work \"Carmen\".", excerpts: [
     bizetLArlesienne
 ])

 let borodin = Composer(id: 4, name: "Alexander Borodin", ipa: "ɐlʲɪkˈsandr bərɐˈdʲin", image: 2004, country: "Russia", dates: "1833-1887", bio: "Alexander Borodin was a Russian Chemist and Romantic composer, who was one of the major composers who advocated for Russian nationalist music. Borodin is best known for his symphonies, and his only opera \"Prince Igor\". He also made major contributions to the field of organic chemistry, and was a major proponent of education, founding a school of medicine for women in St. Petersburg.", excerpts: [
     borodinPolovetsian
 ])

 let brahms = Composer(id: 5, name: "Johannes Brahms", ipa: "joˈhanəs ˈbʁaːms", image: 2005, country: "Germany", dates: "1833-1897", bio: "Johannes Brahms was one of the most famous composers of all time. He is most famous for his four symphonies, but he wrote for many diverse ensembles. Brahms was a perfectionist in all that he did, and was known to occaisionally destroy some of his work to prevent it from being seen by the outside world.", excerpts: [
     brahmsAcademic, brahms1, brahms2, brahms3, brahms4, brahmsTragic
 ])

 let bruckner = Composer(id: 6, name: "Anton Bruckner", ipa: " 'antɔn ˈbʁʊknɐ", image: 2006, country: "Austria", dates: "1824-1896", bio: "Anton Bruckner was an Austrian organist, music theorist, and composer of the romantic era. He is best known for his symphonies and religious music. Bruckner was unlike other composers of his time, in that he was very a very humble man.", excerpts: [
     bruckner4, bruckner7, bruckner8, bruckner9
 ])

 let dvorak = Composer(id: 7, name: "Antonín Dvořák", ipa: "ˈɑn tɔ nyin ˈdvɔr ʒɑk", image: 2007, country: "Austrian Empire", dates: "1841-1904", bio: "Dvořák was one of the first Czech composers to recieve worldwide recognition. Dvořák was an admirer of Richard Wagner, and took influence from him especially in his Operas. He frequently included folk music in his compositions, and his music often had nationalistic themes.", excerpts: [
     dvorak8, dvorak9
 ])

 let franck = Composer(id: 8, name: "César Franck", ipa: "seɪˈzar frɑŋk", image: 2008, country: "United Kingdom of the Netherlands (Now Belgium)", dates: "1822 - 1890", bio: "Franck studied music in Paris at a young age. After his studies, he returned to Belgium and gained a terrible reputation for his oratorio \"Ruth\", and moved to Paris where he became an organist and teacher. Later in life, he became the organist for the Basilica of Saint Clotilde, where he remained for the rest of his life, composing in his free time pieces that are now considered standard repetoire.", excerpts: [
     franckD
 ])

 let haydn = Composer(id: 9, name: "Franz Joseph Haydn", ipa: "ˈfʁants ˈjoːzɛf ˈhaɪdn̩", image: 2009, country: "Austria", dates: "1732-1809", bio: "Haydn was a classical composer who is commonly known as \"The father of the Symphony\". He spent most of his life as a court musician for the Esterházy family. He was isolated in this role, with little to no contact with the rest of the music community, and was forced to create his own style because of this. Haydn was a prolific composer, producing 104 numbered symphonies and an immense amount of chamber music.", excerpts: [
     haydnCreation
 ])

 let holst = Composer(id: 10, name: "Gustav Holst", ipa: "ˈgʊs tɑv hoʊlst", image: 2010, country: "England", dates: "1874-1934", bio: "Holst was a popular English composer of the modern era. He aspired to become a concert pianist, but neuritis in his right arm prevented him. Against his father's wishes, he studied to become a composer. He was unable to support himself from his compositions alone, and started to play and teach the trombone professionally. He is most well known for his orchestral composition \"The Planets\".", excerpts: [
     holstPlanets
 ])

 let mahler = Composer(id: 11, name: "Gustav Mahler", ipa: "ˈgʊs tɑf ˈmɑ lər", image: 2011, country: "Austrian Empire", dates: "1860-1911", bio: "Mahler is one of the most popular composers of all time. In 2016, a BBC Music survey ranked three of his symphonies among the top ten symphonies of all time. His music continues to be among the top recorded and perfomed in all of classical music. During his day, he was also among one of the top conductors of his era, and was the first conductor of the New York Philharmonic Orchestra.", excerpts: [
     mahler2, mahler3, mahler5, mahler7
 ])

 let mozart = Composer(id: 12, name: "Wolfgang Amadeus Mozart", ipa: "ˈwʊlf gæŋ ˌæm əˈdeɪ əs ˈmoʊt sɑrt", image: 2012, country: "Germany", dates: "1756-1791", bio: "Mozart gained popularity as a pianist and composer at an early age. He gained employment as a court musician at the Salzburg court, but quickly lost interest and began traveling looking for other employment. In Vienna, he found great fame, but worked his whole life trying to achieve financial stability: a goal he was never able to achieve. Mozart's death is also very mysterious and controvercial.", excerpts: [
     mozartRequiem
 ])

 let mussorgsky = Composer(id: 13, name: "Modest Mussorgsky", ipa: "moʊˈdɛst mʊˈsɔrg ski", image: 2013, country: "Russia", dates: "1839-1881", bio: "Mussorgsky was one of the most important composers in Russia during his lifetime. He frequently incorporated folk music, and discarded western traditions in favor of Russian nationalism. Many of his works are most famous through arrangements by other composers.", excerpts: [
     mussorgskyPictures
 ])

 let ravel = Composer(id: 14, name: "Maurice Ravel", ipa: "moʊˈris rəˈvɛl", image: 2014, country: "France", dates: "1875-1937", bio: "Ravel was an impressionist French composer. He was a careful, and slow composer, and composed much less compared to many other composers. He was also one of the first composers to realize the potential of recorded music, and was one of the first composers to record their music and marked it to a larger audience this way.", excerpts: [
     ravelBolero, ravelDaphnis, ravelValse, ravelLEnfant
 ])

 let respighi = Composer(id: 15, name: "Ottorino Respighi", ipa: "ottoˈriːno reˈspiːɡi", image: 2015, country: "Italy", dates: "1879-1936", bio: "Respighi was an Italian violinist, composer, and musicologist. Hist interest in musicology led to the composition of his three most famous compositions: \"Fountains of Rome\", \"Pines of Rome\", and \"Roman Festivals\"", excerpts: [
     respighiFountains
 ])

 let rimskyKorsakov = Composer(id: 16, name: "Nikolai Rimsky-Korsakov", ipa: "nʲɪkəˈlaj ˈrʲimskʲɪj ˈkorsəkəf", image: 2016, country: "Russia", dates: "1844-1908", bio: "Nikolai Rimsky-Korsakov was one of the most famous Russian composers. He was a master orchestrator, publishing a textbook on the subject using musical examples solely from his own compositions, and his most famous compositions are his orchestral works. Rimsky-Korsakov also spent a large portion of his musical life in association with the Russian military.", excerpts: [
     rimskyKorsakovCapriccio, rimskyKorsakovGolden, rimskyKorsakovRussianEaster, rimskyKorsakovScheherazade
 ])

 let rossini = Composer(id: 17, name: "Gioachino Rossini", ipa: "dʒɔ ɑkˈki nɔ roʊˈsi ni", image: 2017, country: "Italy", dates: "1792-1868", bio: "Rossini was an Italian composer from the romantic era. His 39 operas gained him great success early in life, but he unexplainably gave up music almost entirely for the last 40 years of his life.", excerpts: [
     rossiniLaGazza, rossiniWilliamTell
 ])

 let saintSaens = Composer(id: 18, name: "Camille Saint-Saëns", ipa: "kamij sɛ̃ sɑ̃(s)", image: 2018, country: "France", dates: "1835-1921", bio: "Saint-Saëns was a French composer, conductor, organist, and pianist during the romantic era. Revered as a genius, he lived a mostly conventional carreer as a church organist. His most notable student was Gabriel Fauré.", excerpts: [
     saintSaens3
 ])

 let schubert = Composer(id: 19, name: "Franz Schubert", ipa: "ˈfʁant͡s ˈʃuːbɐt", image: 2019, country: "Austria", dates: "1797-1828", bio: "Schubert was a prolific Austrian composer during the late Classical and early Romantic eras. During his short lifetime he composed over 1500 works. During his lifetime, he recieved little fame and success. It was only after his lifetime when musicians such as Schumann, Mendelssohn, Liszt, and Brahms discovered and praised his music that it became well known and widely recieved.", excerpts: [
     schubert8, schubert9
 ])

 let schumann = Composer(id: 20, name: "Robert Schumann", ipa: "ˈrɒb ərt ˈʃu mɑn", image: 2020, country: "Germany", dates: "1810-1856", bio: "Schumann was one of the most popular composers of the romantic era. He gave up the study of law to become a concert pianist, but his dreams were crushed by a hand injury. He subsequently pursued a career in composition, and married his teacher's daughter, Clara Wieck. Schumann mainly composed for piano, but later in live began to compose lieder, orchestral works, and one opera.", excerpts: [
     schumann1, schumann2, schumann3, schumann4
 ])

 let smetana = Composer(id: 21, name: "Bedřich Smetana", ipa: "ˌbɛdərʒɪx ˈsmɛtənə", image: 2021, country: "Austrian Empire, Austria-Hugary (Now Czech Republic)", dates: "1824-1884", bio: "Smetana was a child prodigy who had his first composition performed at age six. His music became closely tied to sentiments and movements of independant statehood. He became completely deaf for the last ten years of his life.", excerpts: [
     smetanaBarteredBride
 ])

 let rStrauss = Composer(id: 22, name: "Richard Strauss", ipa: "ˈʁɪçaʁt ˈʃtʁaʊs", image: 2022, country: "Germany", dates: "1864-1949", bio: "Richard Strauss was one of the leading composers of the Romantic Era. He, along with Gustav Mahler, were considered successors of Richard Wagner. Although Strauss composed music for almost every classical genre, he is most famous for his tone poems. Strauss' compositional output began when he was just six years old, and continued almost eighty years later until his death.", excerpts: [
     straussAlpine, straussZarathustra, straussBourgeois, straussDeathAndTransfiguration, straussDonJuan, straussHeldenleben, straussSalome, straussEulenspiegel
 ])

 let stravinsky = Composer(id: 23, name: "Igor Stravinsky", ipa: "ˈi gɔr strəˈvɪn ski", image: 2023, country: "Russia", dates: "1882-1971", bio: "Igor Stravinsky was one of the most influential composers of the twentieth century. Stravinsky's music is very unique from that of other composers, and often contains russian folk melodies. Throughout his life, the kinds of compositions that he composed also changed dramatically, from symphonies, to chamber music, to ballets.", excerpts: [
     stravinskyFirebird
 ])

 let tchaikovsky = Composer(id: 24, name: "Pyotr Ilyich Tchaikovsky", ipa: "ˈpyɔtr iˈlyitʃ tʃaɪˈkɒfski", image: 2024, country: "Russia", dates: "1840-1893", bio: "Tchaikovsky was the first Russian composer to gain international fame. Tchaikovsky recieved a western European style music education, which seemed to counter the traditional Russian music practices. This dichotomy posed a great challenge for Tchaikovsky, one that affected his self confidence a lot. Although Tchaikovsky's music gained popular support, his life was deeply affected by depression and personal crises.", excerpts: [
     tchaikovsky4, tchaikovsky5, tchaikovsky6, tchaikovskyFrancesca
 ])

 let verdi = Composer(id: 25, name: "Giuseppe Verdi", ipa: "dʒuˈzɛppe ˈverdi", image: 2025, country: "Italy", dates: "1813-1901", bio: "Giuseppe Verdi was an Italian opera composer who took after Rossini, Bellini, and Donizetti. Rossini had sympathy for the Risorgimento movement for the unification of Italy, and some choruses from his early operas were in the spirit of this movement. Verdi participated briefly as an elected politician, and sought to establish himself as a landowner in his native region.", excerpts: [
     verdiForza, verdiNabucco
 ])

 let wagner = Composer(id: 26, name: "Richard Wagner", ipa: "ˈʁɪçaʁt ˈvaːɡnɐ", image: 2026, country: "Germany", dates: "1813-1883", bio: "Wagner is one of the most well known composers of all time. His music frequently appears in television shows and movies. He was most well known in his era for his operas, which usually run about four hours. Wagner was unusual as an opera composer because he himself wrote the liberetto for the operas he composed. Wagner had his own opera house constructed, which still stands to this day.", excerpts: [
     wagnerRheingold, wagnerFlying, wagnerValyrie, wagnerLohengrin, wagnerTannhauser
 ])
 */
