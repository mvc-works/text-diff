
{}
  :configs $ {} (:reload-fn |text-diff.main/reload!) (:port 6001) (:output |src) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
    :init-fn |text-diff.main/main!
    :extension |.cljs
  :ir $ {} (:package |text-diff)
    :files $ {}
      |text-diff.config $ {}
        :defs $ {}
          |cdn? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |9RM4tZ4okA)
              |j $ {} (:text |cdn?) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |WrkWOQw_bj)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |cond) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |HfFnF74aaH)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |exists?) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |rWvB7a-BK6)
                          |j $ {} (:text |js/window) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |Bip59OdxiB)
                        :type :expr
                        :at 1544873887168
                        :by |rJG4IHzWf
                        :id |5FyvPxZHZQ
                      |j $ {} (:text |false) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |fpGEB9Lxk0)
                    :type :expr
                    :at 1544873887168
                    :by |rJG4IHzWf
                    :id |H4CD8BoV9R
                  |r $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |exists?) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |AQzq6hgdwW)
                          |j $ {} (:text |js/process) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |rasbU6lVBQ)
                        :type :expr
                        :at 1544873887168
                        :by |rJG4IHzWf
                        :id |MUHEZV1fJy
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |=) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |PZOibZsLN9C)
                          |j $ {} (:text "|\"true") (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |ZdyzBf5GbL5)
                          |r $ {} (:text |js/process.env.cdn) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |NCvHTnvee8P)
                        :type :expr
                        :at 1544873887168
                        :by |rJG4IHzWf
                        :id |KhHDSOBz9Vi
                    :type :expr
                    :at 1544873887168
                    :by |rJG4IHzWf
                    :id |P8yR9FwKKf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:else) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |ZglnnMdBFOo)
                      |j $ {} (:text |false) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |SGrp6kA7itv)
                    :type :expr
                    :at 1544873887168
                    :by |rJG4IHzWf
                    :id |azAjKbw0e0L
                :type :expr
                :at 1544873887168
                :by |rJG4IHzWf
                :id |KMohe96ljT
            :type :expr
            :at 1544873887168
            :by |rJG4IHzWf
            :id |d2hK2S1JOD
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf) (:id |YFw1U8z4Tf)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf) (:id |aWMTO74W56)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |=) (:type :leaf) (:at 1629720355099) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"dev") (:type :leaf) (:at 1629720355968) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |get-env) (:type :leaf) (:at 1629720357655) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"mode") (:type :leaf) (:at 1629720358927) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1629720356232
                    :by |rJG4IHzWf
                :type :expr
                :at 1629720354979
                :by |rJG4IHzWf
            :type :expr
            :at 1544873875614
            :by |rJG4IHzWf
            :id |soffpzT3iV
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1518157345496) (:by |root) (:id |Hy-Of025IG)
              |j $ {} (:text |site) (:type :leaf) (:at 1518157327696) (:by |root) (:id |SyfufCnc8G)
              |r $ {}
                :data $ {}
                  |yT $ {}
                    :data $ {}
                      |T $ {} (:text |:icon) (:type :leaf) (:at 1527868458476) (:by |root) (:id |HJxzN3kyxmleaf)
                      |j $ {} (:text "|\"http://cdn.tiye.me/logo/mvc-works.png") (:type :leaf) (:at 1527868478815) (:by |root) (:id |rJeUB2k1xQ)
                    :type :expr
                    :at 1527868457696
                    :by |root
                    :id |HJxzN3kyxm
                  |yf $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956719115) (:by |rJG4IHzWf) (:id |uzAHSBrxME)
                      |j $ {} (:text "|\"workflow") (:type :leaf) (:at 1544956719115) (:by |rJG4IHzWf) (:id |3M_DNn-aUN)
                    :type :expr
                    :at 1544956719115
                    :by |rJG4IHzWf
                    :id |E81qVD65QI
                  |T $ {} (:text |{}) (:type :leaf) (:at 1518157346643) (:by |root) (:id |HyZ5XCh58M)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:dev-ui) (:type :leaf) (:at 1527526864597) (:by |root) (:id |HkeSAB3K1Xleaf)
                      |x $ {} (:text "|\"http://localhost:8100/main-fonts.css") (:type :leaf) (:at 1556700447561) (:by |rJG4IHzWf) (:id |GHE5A-5h_P)
                    :type :expr
                    :at 1527526861413
                    :by |root
                    :id |HkeSAB3K1X
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:release-ui) (:type :leaf) (:at 1527526868617) (:by |root) (:id |rygq0H3YJmleaf)
                      |j $ {} (:text "|\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:type :leaf) (:at 1556700443008) (:by |rJG4IHzWf) (:id |HklT1LntyQ)
                    :type :expr
                    :at 1527526865931
                    :by |root
                    :id |rygq0H3YJm
                  |w $ {}
                    :data $ {}
                      |T $ {} (:text |:cdn-url) (:type :leaf) (:at 1528008962775) (:by |root) (:id |Syt-WGZgQleaf)
                      |j $ {} (:text "|\"http://cdn.tiye.me/calcit-workflow/") (:type :leaf) (:at 1528008965359) (:by |root) (:id |Bye6-ZzbxX)
                    :type :expr
                    :at 1528008960614
                    :by |root
                    :id |Syt-WGZgQ
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |:title) (:type :leaf) (:at 1527868457305) (:by |root) (:id |HJlgNn11gmleaf)
                      |j $ {} (:text "|\"Calcit") (:type :leaf) (:at 1540053963607) (:by |root) (:id |S1eWS2JJlm)
                    :type :expr
                    :at 1527868456422
                    :by |root
                    :id |HJlgNn11gm
                :type :expr
                :at 1518157327696
                :by |root
                :id |Hy7OfCnqUG
            :type :expr
            :at 1545933382603
            :by |root
            :id |i6pfoMgwq
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1527788237503
          :by |root
          :id |Hk7B0z3pJX
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1527788237503) (:by |root) (:id |SkZHRz3TJ7)
            |j $ {} (:text |text-diff.config) (:type :leaf) (:at 1527788237503) (:by |root) (:id |HJzrRGhp1X)
          :type :expr
          :at 1527788237503
          :by |root
          :id |BJlrAf2TyX
      |text-diff.schema $ {}
        :defs $ {}
          |store $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |def) (:time 1499755354983) (:type :leaf) (:id |ryBoejdY5arb)
              |j $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |H1Iils_Y96BZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Bkuogo_F9pr-)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |:states) (:time 1499755354983) (:type :leaf) (:id |By5oeoOY5pBb)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Hyhixo_F9prb)
                        :time 1499755354983
                        :type :expr
                        :id |H1iieoOKqTSZ
                    :time 1499755354983
                    :type :expr
                    :id |BkYogiuK9TBZ
                  |r $ {}
                    :data $ {}
                      |T $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359514709) (:type :leaf) (:id |BJ0oxjdFq6rb)
                      |j $ {} (:author |rJG4IHzWf) (:text ||) (:time 1512359516026) (:type :leaf) (:id |BJy2go_tcaBZ)
                    :time 1499755354983
                    :type :expr
                    :id |B1aixsdK9pHb
                :time 1499755354983
                :type :expr
                :id |ryviloOFc6B-
            :time 1499755354983
            :type :expr
            :id |HkEjgouFcpBW
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |rkmjesdF9Trb
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |HyWslouK56HZ)
            |j $ {} (:author |root) (:text |text-diff.schema) (:time 1499755354983) (:type :leaf) (:id |SkGsgsOtcTBb)
          :time 1499755354983
          :type :expr
          :id |rJxieodtqarW
      |text-diff.updater $ {}
        :defs $ {}
          |updater $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |H1U1esuY5TBZ)
              |j $ {} (:author |root) (:text |updater) (:time 1499755354983) (:type :leaf) (:id |SJwJxj_Y5aHZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |r1YyxidF96rW)
                  |j $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |r1cJxouK5aSZ)
                  |r $ {} (:author |root) (:text |op-data) (:time 1499755354983) (:type :leaf) (:id |Bkj1ljdY5Tr-)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1519489491135) (:by |root) (:id |S1gUCbfy_G)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1519489492110) (:by |root) (:id |ryzsAWMkdG)
                :time 1499755354983
                :type :expr
                :id |SkdkeiOK5TBZ
              |v $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |case-default) (:time 1499755354983) (:type :leaf) (:at 1629720241575) (:by |rJG4IHzWf) (:id |ry61gjOFqpH-)
                  |j $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |HyAylout56Hb)
                  |l $ {}
                    :data $ {}
                      |D $ {} (:text |do) (:type :leaf) (:at 1629720230326) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |println) (:type :leaf) (:at 1629720231893) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"Unknown op:") (:type :leaf) (:at 1629720236771) (:by |rJG4IHzWf)
                          |r $ {} (:text |op) (:type :leaf) (:at 1629720237616) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1629720230618
                        :by |rJG4IHzWf
                      |T $ {} (:text |store) (:type :leaf) (:at 1629720229497) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1629720229691
                    :by |rJG4IHzWf
                  |n $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |:states) (:time 1507399855618) (:type :leaf) (:id |HJxX2OqUh-)
                      |j $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |update-states) (:time 1507399857991) (:type :leaf) (:at 1629720251113) (:by |rJG4IHzWf) (:id |rylOn_5I2Z)
                          |j $ {} (:author |root) (:text |store) (:time 1507399858922) (:type :leaf) (:id |ByE92uq82b)
                          |n $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720247338) (:text |op-data)
                        :time 1507399856471
                        :type :expr
                        :id |Sk-_hdqU2b
                    :time 1507399852251
                    :type :expr
                    :id |ryNh_5L3b
                  |r $ {}
                    :data $ {}
                      |T $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359657160) (:type :leaf) (:id |S1lxeout56HW)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |rJG4IHzWf) (:text |assoc) (:time 1512359666053) (:type :leaf) (:id |BkfgesdF9TH-)
                          |j $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |HJQeloOt5TrZ)
                          |r $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359660859) (:type :leaf) (:id |HkNexodK9Tr-)
                          |v $ {} (:author |rJG4IHzWf) (:text |op-data) (:time 1512359663126) (:type :leaf) (:id |B1eIlwHzbz)
                        :time 1499755354983
                        :type :expr
                        :id |SJ-gxidtcTrZ
                    :time 1499755354983
                    :type :expr
                    :id |S1kexiuF9arZ
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157657108) (:by |root) (:id |SkNl1ac8zleaf)
                      |j $ {} (:text |op-data) (:type :leaf) (:at 1518157553355) (:by |root) (:id |SJzueyp5Iz)
                    :type :expr
                    :at 1518157547521
                    :by |root
                    :id |SkNl1ac8z
                :time 1499755354983
                :type :expr
                :id |BJ2yxjOKqpHb
            :time 1499755354983
            :type :expr
            :id |SkS1lout5aBb
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |HJ41lsuY5pSZ
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |SkG1lo_t9pHZ)
            |j $ {} (:author |root) (:text |text-diff.updater) (:time 1499755354983) (:type :leaf) (:id |B17kxjdFq6r-)
            |r $ {} (:author |root)
              :data $ {}
                |T $ {} (:author |root) (:text |:require) (:time 1507399864640) (:type :leaf) (:id |H1xR2d5Uh-)
                |j $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399865654) (:type :leaf) (:id |rkf-6u9InW)
                    |j $ {} (:author |root) (:text |respo.cursor) (:time 1507399873143) (:type :leaf) (:id |Hkefpu983W)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507399874041) (:type :leaf) (:id |rkrYaO5UnZ)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507399874938) (:type :leaf) (:id |BJBqpOq8hZ)
                        |j $ {} (:author |root) (:text |update-states) (:time 1507399875675) (:type :leaf) (:at 1629720386120) (:by |rJG4IHzWf) (:id |rJbi6_c83-)
                      :time 1507399874214
                      :type :expr
                      :id |BkUcpdc83b
                  :time 1507399864883
                  :type :expr
                  :id |r17bT_cLnZ
              :time 1507399862664
              :type :expr
              :id |rykTu9L2Z
          :time 1499755354983
          :type :expr
          :id |B1Z1gjdFqaBZ
      |text-diff.comp.container $ {}
        :defs $ {}
          |comp-container $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defcomp) (:time 1499755354983) (:type :leaf) (:id |Hy6-sOYqaSb)
              |j $ {} (:author |root) (:text |comp-container) (:time 1499755354983) (:type :leaf) (:id |HyC-jOFq6r-)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |reel) (:time 1507461830530) (:type :leaf) (:id |r1gMj_KqTSZ)
                :time 1499755354983
                :type :expr
                :id |H1yfo_t9aB-
              |v $ {} (:author |root)
                :data $ {}
                  |D $ {} (:author |root) (:text |let) (:time 1507461833421) (:type :leaf) (:id |SkGx0cFPh-)
                  |L $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |store) (:time 1507461835738) (:type :leaf) (:id |SyMAqtD2W)
                          |j $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |:store) (:time 1507461837276) (:type :leaf) (:id |r1GEC5Kv3Z)
                              |j $ {} (:author |root) (:text |reel) (:time 1507461838285) (:type :leaf) (:id |B1NBC5tPh-)
                            :time 1507461836110
                            :type :expr
                            :id |S1XN05tw3-
                        :time 1507461834650
                        :type :expr
                        :id |Hy7CcFP3W
                      |j $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |states) (:time 1509727105928) (:type :leaf) (:id |rkgYtjzqAWleaf)
                          |j $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |:states) (:time 1509727107223) (:type :leaf) (:id |HJE9tjzqAb)
                              |j $ {} (:author |root) (:text |store) (:time 1509727108033) (:type :leaf) (:id |SySiYoMc0-)
                            :time 1509727106316
                            :type :expr
                            :id |HJBcYszqCZ
                        :time 1509727104820
                        :type :expr
                        :id |rkgYtjzqAW
                    :time 1507461834351
                    :type :expr
                    :id |SyeGC5tw3-
                  |T $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |div) (:time 1499755354983) (:type :leaf) (:id |B1zMoOFc6HZ)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Bk4GoOt5aSZ)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:author |root) (:text |:style) (:time 1499755354983) (:type :leaf) (:id |Bk8ModK9pHW)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:author |root) (:text |merge) (:time 1499755354983) (:type :leaf) (:id |BydGiOKqpHW)
                                  |j $ {} (:author |root) (:text |ui/global) (:time 1499755354983) (:type :leaf) (:at 1521129814235) (:by |root) (:id |rktMsOY56HW)
                                  |r $ {} (:author |root) (:text |ui/row) (:time 1499755354983) (:type :leaf) (:id |H1qGodF96BW)
                                :time 1499755354983
                                :type :expr
                                :id |rJDfsutcaBb
                            :time 1499755354983
                            :type :expr
                            :id |BkBzj_F5TrW
                        :time 1499755354983
                        :type :expr
                        :id |Hy7Gj_YcaSb
                      |n $ {} (:author |rJG4IHzWf)
                        :data $ {}
                          |T $ {} (:author |rJG4IHzWf) (:text |textarea) (:time 1512359503438) (:type :leaf) (:at 1552321295613) (:by |rJG4IHzWf) (:id |r1gIUBGZGleaf)
                          |j $ {} (:author |rJG4IHzWf)
                            :data $ {}
                              |T $ {} (:author |rJG4IHzWf) (:text |{}) (:time 1512359504843) (:type :leaf) (:id |BkuIIrG-M)
                              |j $ {} (:author |rJG4IHzWf)
                                :data $ {}
                                  |T $ {} (:author |rJG4IHzWf) (:text |:value) (:time 1512359505740) (:type :leaf) (:id |HJZF88rMWM)
                                  |j $ {} (:author |rJG4IHzWf)
                                    :data $ {}
                                      |T $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359519072) (:type :leaf) (:id |S1gIv8BGWz)
                                      |j $ {} (:author |rJG4IHzWf) (:text |store) (:time 1512359611230) (:type :leaf) (:id |rJuP8SM-z)
                                    :time 1512359518303
                                    :type :expr
                                    :id |SJZ8P8HGWM
                                :time 1512359505095
                                :type :expr
                                :id |rJMKLLHzWf
                              |n $ {} (:author |rJG4IHzWf)
                                :data $ {}
                                  |T $ {} (:author |rJG4IHzWf) (:text |:placeholder) (:time 1512359565393) (:type :leaf) (:id |rk79IrG-Mleaf)
                                  |j $ {} (:author |rJG4IHzWf) (:text "|\"Content") (:time 1512359571859) (:type :leaf) (:at 1552321072612) (:by |rJG4IHzWf) (:id |S1wB58rz-G)
                                :time 1512359562842
                                :type :expr
                                :id |rk79IrG-M
                              |p $ {} (:author |rJG4IHzWf)
                                :data $ {}
                                  |T $ {} (:author |rJG4IHzWf) (:text |:style) (:time 1512359618050) (:type :leaf) (:id |HyKT8SzWGleaf)
                                  |j $ {} (:author |rJG4IHzWf)
                                    :data $ {}
                                      |D $ {} (:author |rJG4IHzWf) (:text |merge) (:time 1512359675059) (:type :leaf) (:id |BkZGbvrz-f)
                                      |L $ {} (:text |ui/expand) (:type :leaf) (:at 1555609489873) (:by |rJG4IHzWf) (:id |eUdxyfGXi)
                                      |T $ {} (:author |rJG4IHzWf) (:text |ui/textarea) (:time 1512359621430) (:type :leaf) (:id |Sk45pIBM-z)
                                      |j $ {} (:author |rJG4IHzWf)
                                        :data $ {}
                                          |T $ {} (:author |rJG4IHzWf) (:text |{}) (:time 1512359676048) (:type :leaf) (:id |ByBQ-vBMbz)
                                          |r $ {} (:author |rJG4IHzWf)
                                            :data $ {}
                                              |T $ {} (:author |rJG4IHzWf) (:text |:height) (:time 1512359679785) (:type :leaf) (:id |H1PWwHMWMleaf)
                                              |j $ {} (:author |rJG4IHzWf) (:text |320) (:time 1512359697836) (:type :leaf) (:id |Bk7dZPBf-M)
                                            :time 1512359678671
                                            :type :expr
                                            :id |H1PWwHMWM
                                        :time 1512359675605
                                        :type :expr
                                        :id |H1NWDSG-M
                                    :time 1512359674211
                                    :type :expr
                                    :id |SyeG-vSz-z
                                :time 1512359616676
                                :type :expr
                                :id |HyKT8SzWG
                              |r $ {} (:author |rJG4IHzWf)
                                :data $ {}
                                  |T $ {} (:author |rJG4IHzWf) (:text |:on-input) (:time 1512359552820) (:type :leaf) (:at 1515731637149) (:by |root) (:id |BkzwY8BzWf)
                                  |r $ {}
                                    :data $ {}
                                      |D $ {} (:text |fn) (:type :leaf) (:at 1629720371051) (:by |rJG4IHzWf)
                                      |L $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1629720371575) (:by |rJG4IHzWf)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1629720372048) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1629720371292
                                        :by |rJG4IHzWf
                                      |T $ {}
                                        :data $ {}
                                          |T $ {} (:text |d!) (:type :leaf) (:at 1629720366496) (:by |rJG4IHzWf) (:id |Skea92SNzleaf)
                                          |r $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359653355) (:type :leaf) (:id |ryTyDSz-M)
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:author |rJG4IHzWf) (:text |:value) (:time 1512359559399) (:type :leaf) (:id |SkgCtISf-M)
                                              |j $ {} (:author |rJG4IHzWf) (:text |e) (:time 1512359559645) (:type :leaf) (:at 1629720368953) (:by |rJG4IHzWf) (:id |BkBy5ISzWf)
                                            :type :expr
                                            :at 1629720369336
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1515731639686
                                        :by |root
                                        :id |Skea92SNz
                                    :type :expr
                                    :at 1629720370517
                                    :by |rJG4IHzWf
                                :time 1512359551423
                                :type :expr
                                :id |HyfRnq2SVf
                            :time 1512359504511
                            :type :expr
                            :id |BkxOILSfZf
                        :time 1512359496483
                        :type :expr
                        :id |r1gIUBGZG
                      |r $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |=<) (:time 1499755354983) (:type :leaf) (:id |Hy2MidYq6BZ)
                          |j $ {} (:author |root) (:text ||8px) (:time 1499755354983) (:type :leaf) (:id |BJTfsuYcprZ)
                          |r $ {} (:author |root) (:text |nil) (:time 1499755354983) (:type :leaf) (:id |r1CGiuYc6SW)
                        :time 1499755354983
                        :type :expr
                        :id |HyiGjuK9pBW
                      |v $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |div) (:time 1499755354983) (:type :leaf) (:id |SkgmidY5pBb)
                          |f $ {} (:author |rJG4IHzWf)
                            :data $ {}
                              |T $ {} (:author |rJG4IHzWf) (:text |{}) (:time 1512359526843) (:type :leaf) (:id |B10P8SGbM)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1535563522569) (:by |rJG4IHzWf) (:id |7wBsICOkFG)
                                  |j $ {} (:text |ui/expand) (:type :leaf) (:at 1555609487202) (:by |rJG4IHzWf) (:id |PhfagsoO8u)
                                :type :expr
                                :at 1535563521753
                                :by |rJG4IHzWf
                                :id |MBHcP4mjcr
                            :time 1512359526483
                            :type :expr
                            :id |SkgCvUSzWf
                          |l $ {}
                            :data $ {}
                              |T $ {} (:text |comp-md) (:type :leaf) (:at 1519699101706) (:by |root) (:id |Sylrj4Hz_zleaf)
                              |j $ {} (:text "||This is some content with `code`") (:type :leaf) (:at 1519699121173) (:by |root) (:id |rye8s4rfuG)
                            :type :expr
                            :at 1519699101175
                            :by |root
                            :id |rJf0NrzdG
                          |o $ {}
                            :data $ {}
                              |T $ {} (:author |root) (:text |=<) (:time 1499755354983) (:type :leaf) (:id |Hy2MidYq6BZ)
                              |j $ {} (:author |root) (:text ||8px) (:time 1499755354983) (:type :leaf) (:id |BJTfsuYcprZ)
                              |r $ {} (:author |root) (:text |nil) (:time 1499755354983) (:type :leaf) (:id |r1CGiuYc6SW)
                            :time 1499755354983
                            :type :expr
                            :id |SytMrHM_M
                          |r $ {}
                            :data $ {}
                              |T $ {} (:author |root) (:text |button) (:time 1499755354983) (:type :leaf) (:id |rJEmjOt9aBb)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |r1LXouYcTH-)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:author |root) (:text |:style) (:time 1499755354983) (:type :leaf) (:id |ry_msOY9aS-)
                                      |j $ {} (:author |root) (:text |ui/button) (:time 1499755354983) (:type :leaf) (:id |BJtXs_t9TrW)
                                    :time 1499755354983
                                    :type :expr
                                    :id |r1DQi_F5aHb
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:author |root) (:text |:inner-text) (:time 1499755354983) (:type :leaf) (:id |Bys7i_t5aH-)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:author |root) (:text |str) (:time 1499755354983) (:type :leaf) (:id |rJ6Qi_FqaHW)
                                          |j $ {} (:author |rJG4IHzWf) (:text ||run) (:time 1512359538414) (:type :leaf) (:id |SkRmodt56HW)
                                        :time 1499755354983
                                        :type :expr
                                        :id |rk3QsOYcpH-
                                    :time 1499755354983
                                    :type :expr
                                    :id |rkcmouFqaBb
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:author |root) (:text |:on-click) (:time 1499755354983) (:type :leaf) (:at 1515731664266) (:by |root) (:id |HyvNj_Y5pHb)
                                      |j $ {} (:author |rJG4IHzWf)
                                        :data $ {}
                                          |T $ {} (:author |rJG4IHzWf) (:text |fn) (:time 1512359578445) (:type :leaf) (:id |By_EouKq6HZ)
                                          |j $ {} (:author |rJG4IHzWf)
                                            :data $ {}
                                              |T $ {} (:author |rJG4IHzWf) (:text |e) (:time 1512359578853) (:type :leaf) (:id |r1mziUSMWf)
                                              |j $ {} (:author |rJG4IHzWf) (:text |d!) (:time 1512359579539) (:type :leaf) (:id |HJ-QsUSfZG)
                                              |r $ {} (:author |rJG4IHzWf) (:text |m!) (:time 1512359580680) (:type :leaf) (:id |H1eEjLHMbf)
                                            :time 1512359578681
                                            :type :expr
                                            :id |rk7i8SzZM
                                          |r $ {} (:author |rJG4IHzWf)
                                            :data $ {}
                                              |T $ {} (:author |rJG4IHzWf) (:text |println) (:time 1512359582042) (:type :leaf) (:id |r1WSi8HMZfleaf)
                                              |j $ {} (:author |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359588770) (:type :leaf) (:id |rJSIiLSMWM)
                                                  |j $ {} (:author |rJG4IHzWf) (:text |store) (:time 1512359600216) (:type :leaf) (:id |SyE6jISMWM)
                                                :time 1512359587492
                                                :type :expr
                                                :id |rJosLBGZf
                                            :time 1512359581078
                                            :type :expr
                                            :id |r1WSi8HMZf
                                        :time 1512359578073
                                        :type :expr
                                        :id |rylMi8rfbG
                                    :time 1499755354983
                                    :type :expr
                                    :id |r1lcR9nS4z
                                :time 1499755354983
                                :type :expr
                                :id |Bkr7juYqar-
                            :time 1499755354983
                            :type :expr
                            :id |rkX7odKcaSW
                        :time 1499755354983
                        :type :expr
                        :id |BkJ7sOtcpS-
                      |x $ {}
                        :data $ {}
                          |D $ {} (:text |when) (:type :leaf) (:at 1521954057510) (:by |root) (:id |rJgM6oE5f)
                          |L $ {} (:text |dev?) (:type :leaf) (:at 1521954059290) (:by |root) (:id |H1fGajVqz)
                          |T $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |comp-reel) (:time 1507461815046) (:type :leaf) (:id |rJc29KD2-leaf)
                              |b $ {}
                                :data $ {}
                                  |D $ {} (:text |>>) (:type :leaf) (:at 1629720221949) (:by |rJG4IHzWf)
                                  |T $ {} (:author |root) (:text |states) (:time 1509727101297) (:type :leaf) (:id |B1BYoG90Z)
                                  |j $ {} (:text |:reel) (:type :leaf) (:at 1629720222618) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1629720221251
                                :by |rJG4IHzWf
                              |j $ {} (:author |root) (:text |reel) (:time 1507461840459) (:type :leaf) (:id |rJx_05Fw3Z)
                              |r $ {} (:author |root)
                                :data $ {}
                                  |T $ {} (:author |root) (:text |{}) (:time 1507461841342) (:type :leaf) (:id |Bkt05FDhW)
                                :time 1507461840980
                                :type :expr
                                :id |B1xKR5Fw3b
                            :time 1507461809635
                            :type :expr
                            :id |rJc29KD2-
                        :type :expr
                        :at 1521954055333
                        :by |root
                        :id |SyWJfaiV5z
                    :time 1499755354983
                    :type :expr
                    :id |SyWfsuY5THW
                :time 1507461832154
                :type :expr
                :id |r1-eRcYv3-
            :time 1499755354983
            :type :expr
            :id |BJ2WiOF9pBW
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |rksbjOYqpSZ
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |rJgjuY5pSb)
            |j $ {} (:author |root) (:text |text-diff.comp.container) (:time 1499755354983) (:type :leaf) (:id |HybjuF9pS-)
            |v $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1519699088805) (:by |root) (:id |ryKcErMdGleaf)
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1519699092590) (:by |root) (:id |HJMtqNBGuf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519699093410) (:by |root) (:id |Syl69VHMuM)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1519699093922) (:by |root) (:id |HJwaqVHM_M)
                        |j $ {} (:text |comp-md) (:type :leaf) (:at 1519699096732) (:by |root) (:id |BJf0cVSMdz)
                      :type :expr
                      :at 1519699093683
                      :by |root
                      :id |S1R54BfuG
                  :type :expr
                  :at 1519699088529
                  :by |root
                  :id |ryKcErMdG
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1521954061645) (:by |root) (:id |SJxSfaoE5fleaf)
                    |j $ {} (:text |text-diff.config) (:type :leaf) (:at 1527788377809) (:by |root) (:id |rkb8MTo45G)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1521954064826) (:by |root) (:id |H1SuzTjV5M)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1521954065219) (:by |root) (:id |S1MtGTiE5G)
                        |j $ {} (:text |dev?) (:type :leaf) (:at 1521954067604) (:by |root) (:id |HkUKG6oNcG)
                      :type :expr
                      :at 1521954065004
                      :by |root
                      :id |S1QtM6j4cz
                  :type :expr
                  :at 1521954061310
                  :by |root
                  :id |SJxSfaoE5f
                |T $ {} (:author |root) (:text |:require) (:time 1499755354983) (:type :leaf) (:id |H1egs_K9pSZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |S1Mgj_K9TBZ)
                    |j $ {} (:author |root) (:text |hsl.core) (:time 1499755354983) (:type :leaf) (:id |HkQgiutcTBW)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |HkVxodtqTrW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |BkLgidF56rb)
                        |j $ {} (:author |root) (:text |hsl) (:time 1499755354983) (:type :leaf) (:id |SkPxidY56H-)
                      :time 1499755354983
                      :type :expr
                      :id |SyHeiOYcTr-
                  :time 1499755354983
                  :type :expr
                  :id |ryWeiOtqTBW
                |r $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJtgouK5pBZ)
                    |j $ {} (:author |root) (:text |respo-ui.core) (:time 1499755354983) (:type :leaf) (:at 1516527080962) (:by |root) (:id |HJ5eouFqaHb)
                    |r $ {} (:author |root) (:text |:as) (:time 1499755354983) (:type :leaf) (:id |HJoxsuF5pr-)
                    |v $ {} (:author |root) (:text |ui) (:time 1499755354983) (:type :leaf) (:id |r1hgjuY5TH-)
                  :time 1499755354983
                  :type :expr
                  :id |Sydli_Ycarb
                |v $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |r1BodKcprZ)
                    |j $ {} (:author |root) (:text |respo.core) (:time 1499755354983) (:type :leaf) (:at 1540958704705) (:by |root) (:id |ryLoOY5pHb)
                    |r $ {} (:author |root) (:text |:refer) (:time 1508946162679) (:type :leaf) (:id |SJDjOYqaHW)
                    |v $ {}
                      :data $ {}
                        |xT $ {} (:author |rJG4IHzWf) (:text |textarea) (:time 1512359490531) (:type :leaf) (:id |BJtB8rGbG)
                        |yT $ {} (:text |input) (:type :leaf) (:at 1552321107012) (:by |rJG4IHzWf) (:id |0iu83JiiXq)
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |S1KidKq6r-)
                        |j $ {} (:author |root) (:text |defcomp) (:time 1499755354983) (:type :leaf) (:id |B1cs_Fq6B-)
                        |n $ {} (:author |root) (:text |>>) (:time 1509727116530) (:type :leaf) (:at 1629720215858) (:by |rJG4IHzWf) (:id |BJlz9oM90-)
                        |r $ {} (:author |root) (:text |<>) (:time 1499755354983) (:type :leaf) (:id |SJsiOY5pr-)
                        |v $ {} (:author |root) (:text |div) (:time 1499755354983) (:type :leaf) (:id |SJ2oOY96S-)
                        |x $ {} (:author |root) (:text |button) (:time 1499755354983) (:type :leaf) (:id |BkpiOFq6S-)
                        |y $ {} (:author |root) (:text |span) (:time 1499755354983) (:type :leaf) (:id |r1Aj_YqaB-)
                      :time 1499755354983
                      :type :expr
                      :id |H1do_K5aS-
                  :time 1499755354983
                  :type :expr
                  :id |SJgC3cjTTW
                |x $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJH-s_t96rb)
                    |j $ {} (:author |root) (:text |respo.comp.space) (:time 1499755354983) (:type :leaf) (:id |SyUbi_t5pH-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |S1v-s_KcTHZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |rkFWouKcTr-)
                        |j $ {} (:author |root) (:text |=<) (:time 1499755354983) (:type :leaf) (:id |Hy5WjdY5TS-)
                      :time 1499755354983
                      :type :expr
                      :id |rJd-iOKc6rZ
                  :time 1499755354983
                  :type :expr
                  :id |Sy4-oOt96SZ
                |y $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507461846175) (:type :leaf) (:id |SkACcYv2-leaf)
                    |j $ {} (:author |root) (:text |reel.comp.reel) (:time 1507461855480) (:type :leaf) (:id |HJfRR5KPh-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507461856264) (:type :leaf) (:id |ryOyjtwnb)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507461856706) (:type :leaf) (:id |HJ8u1otP3W)
                        |j $ {} (:author |root) (:text |comp-reel) (:time 1507461858342) (:type :leaf) (:id |r1bt1sKwhZ)
                      :time 1507461856484
                      :type :expr
                      :id |BJwOyitPhW
                  :time 1507461845717
                  :type :expr
                  :id |SkACcYv2-
              :time 1499755354983
              :type :expr
              :id |SJkgodY9TSW
          :time 1499755354983
          :type :expr
          :id |H1o_Y9ar-
      |text-diff.main $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |HkDssOFcaBb)
              |j $ {} (:author |root) (:text |render-app!) (:time 1499755354983) (:type :leaf) (:id |Sy_osdKc6Hb)
              |r $ {}
                :data $ {}
                :time 1499755354983
                :type :expr
                :id |B1YjiOY5TSb
              |v $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |render!) (:time 1499755354983) (:type :leaf) (:at 1629720277015) (:by |rJG4IHzWf) (:id |B12oiuFcTH-)
                  |j $ {} (:author |root) (:text |mount-target) (:time 1499755354983) (:type :leaf) (:id |BJpssOY5arW)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |comp-container) (:time 1499755354983) (:type :leaf) (:id |ry12out96SZ)
                      |j $ {} (:author |root) (:text |@*reel) (:time 1507400119272) (:type :leaf) (:id |S1ehi_tcTSW)
                    :time 1499755354983
                    :type :expr
                    :id |SkCijOK9TBW
                  |v $ {} (:text |dispatch!) (:type :leaf) (:at 1629720280543) (:by |rJG4IHzWf)
                :time 1499755354983
                :type :expr
                :id |Hkisi_K9aBb
            :time 1499755354983
            :type :expr
            :id |rkIjoOt9TSZ
          |persist-storage! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1533919517365) (:by |rJG4IHzWf) (:id |l8fLwAhlXR)
              |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf) (:id |PFTnUVG8by)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |?) (:type :leaf) (:at 1629720284205) (:by |rJG4IHzWf)
                  |j $ {} (:text |e) (:type :leaf) (:at 1629720284557) (:by |rJG4IHzWf)
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
                :id |gTW5Lkw-h0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |.setItem) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf) (:id |nsY38PgyDG)
                  |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf) (:id |7jurgAg3V2)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956703087) (:by |rJG4IHzWf) (:id |jG6Dp3dm3f)
                      |j $ {} (:text |config/site) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf) (:id |JixB_KjhS8)
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                    :id |MDyLngin9s
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |format-cirru-edn) (:type :leaf) (:at 1629720291866) (:by |rJG4IHzWf) (:id |XBtA7AMJT-)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:store) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf) (:id |lYQrjrMTKZR)
                          |j $ {} (:text |@*reel) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf) (:id |v41oSodX6pD)
                        :type :expr
                        :at 1533919515671
                        :by |rJG4IHzWf
                        :id |9jTwRVi6Cv
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                    :id |GgQoLRZ9sO
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
                :id |r_PVAAH3MQ
            :type :expr
            :at 1533919515671
            :by |rJG4IHzWf
            :id |sYYH8-JwjZ
          |mount-target $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |def) (:time 1499755354983) (:type :leaf) (:id |S1oAjut5TBZ)
              |j $ {} (:author |root) (:text |mount-target) (:time 1499755354983) (:type :leaf) (:id |rJ2Cj_t5aBZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |.querySelector) (:time 1499755354983) (:type :leaf) (:id |HyRCs_tqpH-)
                  |j $ {} (:author |root) (:text |js/document) (:time 1499755354983) (:type :leaf) (:id |ryy1ejdFq6SW)
                  |r $ {} (:author |root) (:text ||.app) (:time 1499755354983) (:type :leaf) (:id |B1gygs_t56rW)
                :time 1499755354983
                :type :expr
                :id |HJpAjOY5arZ
            :time 1499755354983
            :type :expr
            :id |B1qRjdF9aH-
          |*reel $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defatom) (:time 1499755354983) (:type :leaf) (:at 1629720377348) (:by |rJG4IHzWf) (:id |Hym2s_F9Tr-)
              |j $ {} (:author |root) (:text |*reel) (:time 1499755354983) (:type :leaf) (:id |rJEhsuY5arW)
              |r $ {} (:author |root)
                :data $ {}
                  |D $ {} (:author |root) (:text |->) (:time 1507399778895) (:type :leaf) (:id |Bkx5wOq83b)
                  |T $ {} (:author |root) (:text |reel-schema/reel) (:time 1507399776350) (:type :leaf) (:id |SkvhsuKqaBW)
                  |j $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |assoc) (:time 1507399781682) (:type :leaf) (:id |ByMjD_cL2b)
                      |j $ {} (:author |root) (:text |:base) (:time 1507401405076) (:type :leaf) (:id |SJb0w_qL3b)
                      |r $ {} (:author |root) (:text |schema/store) (:time 1507399787471) (:type :leaf) (:id |S1xdu5U3Z)
                    :time 1507399779656
                    :type :expr
                    :id |H1hvucUnZ
                  |r $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |assoc) (:time 1507399781682) (:type :leaf) (:id |ByMjD_cL2b)
                      |j $ {} (:author |root) (:text |:store) (:time 1507399793097) (:type :leaf) (:id |SJb0w_qL3b)
                      |r $ {} (:author |root) (:text |schema/store) (:time 1507399787471) (:type :leaf) (:id |S1xdu5U3Z)
                    :time 1507399779656
                    :type :expr
                    :id |S1P__5I3b
                :time 1507399777531
                :type :expr
                :id |HJ9Pd5U3-
            :time 1499755354983
            :type :expr
            :id |Hkf2sOYqpBb
          |main! $ {}
            :data $ {}
              |yD $ {} (:author |root)
                :data $ {}
                  |T $ {} (:author |root) (:text |listen-devtools!) (:time 1507461739167) (:type :leaf) (:id |Hyg2E5tPhbleaf)
                  |j $ {} (:author |root) (:text ||a) (:time 1507461691211) (:type :leaf) (:id |HkffSqFv2W)
                  |r $ {} (:author |root) (:text |dispatch!) (:time 1507461693919) (:type :leaf) (:id |SJEBqYD2W)
                :time 1507461684494
                :type :expr
                :id |Hyg2E5tPhb
              |yL $ {}
                :data $ {}
                  |T $ {} (:text |.addEventListener) (:type :leaf) (:at 1518157450281) (:by |root) (:id |BJg8VR398Gleaf)
                  |j $ {} (:text |js/window) (:type :leaf) (:at 1518157453505) (:by |root) (:id |rkmqRncIf)
                  |r $ {} (:text ||beforeunload) (:type :leaf) (:at 1518157458163) (:by |root) (:id |Sk8cAnqUz)
                  |v $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf) (:id |DXNDmmlb_Uw)
                :type :expr
                :at 1518157357847
                :by |root
                :id |BJg8VR398G
              |yN $ {}
                :data $ {}
                  |D $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720256975) (:text |;)
                  |T $ {} (:text |repeat!) (:type :leaf) (:at 1544956062322) (:by |rJG4IHzWf) (:id |Uj_o1cI2Aleaf)
                  |b $ {} (:text |60) (:type :leaf) (:at 1544956066171) (:by |rJG4IHzWf) (:id |loq5zFZcF)
                  |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919535136) (:by |rJG4IHzWf) (:id |5tb38oDl_z)
                :type :expr
                :at 1533919529874
                :by |rJG4IHzWf
                :id |Uj_o1cI2A
              |yP $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1518157495438) (:by |root) (:id |rJ6n03q8Gleaf)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |raw) (:type :leaf) (:at 1518157496930) (:by |root) (:id |Byz1aA3c8z)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.getItem) (:type :leaf) (:at 1518157501316) (:by |root) (:id |HyG-T0258G)
                              |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1518157504638) (:by |root) (:id |ByMHTA2cUz)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956709260) (:by |rJG4IHzWf) (:id |ByWtTAn9UM)
                                  |j $ {} (:text |config/site) (:type :leaf) (:at 1527788293499) (:by |root) (:id |S1lhTCh9Uf)
                                :type :expr
                                :at 1518157506313
                                :by |root
                                :id |HJc60h9Iz
                            :type :expr
                            :at 1518157497615
                            :by |root
                            :id |ryGaR29Lf
                        :type :expr
                        :at 1518157495826
                        :by |root
                        :id |rJgl6A2cLz
                    :type :expr
                    :at 1518157495644
                    :by |root
                    :id |SJxpRh9Iz
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |when) (:type :leaf) (:at 1533919640958) (:by |rJG4IHzWf) (:id |B1WMCAhcUfleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1518157515786) (:by |root) (:id |BkbQRRh5Iz)
                          |j $ {} (:text |raw) (:type :leaf) (:at 1518157516878) (:by |root) (:id |Hk-V0R3cLf)
                        :type :expr
                        :at 1518157515117
                        :by |root
                        :id |B1MmRA2cIz
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |dispatch!) (:type :leaf) (:at 1518157523818) (:by |root) (:id |BJWt0A39Lf)
                          |j $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157669936) (:by |root) (:id |H1l3RR3cIz)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629720298133) (:by |rJG4IHzWf) (:id |Byly1p9Uf)
                              |j $ {} (:text |raw) (:type :leaf) (:at 1518157531240) (:by |root) (:id |rkmJyacIz)
                            :type :expr
                            :at 1518157527987
                            :by |root
                            :id |SJWx1yac8M
                        :type :expr
                        :at 1518157521635
                        :by |root
                        :id |BycA03cLG
                    :type :expr
                    :at 1518157514334
                    :by |root
                    :id |B1WMCAhcUf
                :type :expr
                :at 1518157492640
                :by |root
                :id |rJ6n03q8G
              |yT $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |println) (:time 1499755354983) (:type :leaf) (:id |H1dAiOtqpBZ)
                  |j $ {} (:author |root) (:text "||App started.") (:time 1499755354983) (:type :leaf) (:id |Byt0idYcaHW)
                :time 1499755354983
                :type :expr
                :id |H1vRoOF5pSZ
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |ByW6ouF5Trb)
              |j $ {} (:author |root) (:text |main!) (:time 1499755354983) (:type :leaf) (:id |H1Gpo_YqaHb)
              |r $ {}
                :data $ {}
                :time 1499755354983
                :type :expr
                :id |BkX6juY5aB-
              |t $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1544874434638) (:by |rJG4IHzWf) (:id |fLSIEmUmdNleaf)
                  |j $ {} (:text "|\"Running mode:") (:type :leaf) (:at 1544874509800) (:by |rJG4IHzWf) (:id |0HlR_PDYlS)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1544874440190) (:by |rJG4IHzWf) (:id |3fvetGvON)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1544874446442) (:by |rJG4IHzWf) (:id |HYiJmMsGb)
                      |r $ {} (:text "|\"dev") (:type :leaf) (:at 1544874449063) (:by |rJG4IHzWf) (:id |7h04nvm3O)
                      |v $ {} (:text "|\"release") (:type :leaf) (:at 1544874452316) (:by |rJG4IHzWf) (:id |5vdb_eETfT)
                    :type :expr
                    :at 1544874440404
                    :by |rJG4IHzWf
                    :id |bDTVUn7FFd
                :type :expr
                :at 1544874433785
                :by |rJG4IHzWf
                :id |fLSIEmUmdN
              |x $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |render-app!) (:time 1499755354983) (:type :leaf) (:id |SJoas_K9arW)
                :time 1499755354983
                :type :expr
                :id |B1qaj_K5aSZ
              |y $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |add-watch) (:time 1499755354983) (:type :leaf) (:id |HJRTs_F56Hb)
                  |j $ {} (:author |root) (:text |*reel) (:time 1507399915531) (:type :leaf) (:id |rky0s_YqaBZ)
                  |r $ {} (:author |root) (:text |:changes) (:time 1499755354983) (:type :leaf) (:id |H1lRsOY56H-)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |fn) (:time 1499755354983) (:type :leaf) (:id |ryz0jOtcTrW)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |r) (:type :leaf) (:at 1629720259352) (:by |rJG4IHzWf)
                          |j $ {} (:text |p) (:type :leaf) (:at 1629720259862) (:by |rJG4IHzWf)
                        :time 1499755354983
                        :type :expr
                        :id |B1QCi_t9pS-
                      |r $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |render-app!) (:time 1499755354983) (:type :leaf) (:id |BkHCsOY5aBb)
                        :time 1499755354983
                        :type :expr
                        :id |SJV0jdKqprW
                    :time 1499755354983
                    :type :expr
                    :id |H1bCidtcaSb
                :time 1499755354983
                :type :expr
                :id |r1p6oOFcTrZ
            :time 1499755354983
            :type :expr
            :id |Hkl6i_F5aBb
          |snippets $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1551977434239) (:by |rJG4IHzWf) (:id |LjwGneGQGj)
              |j $ {} (:text |snippets) (:type :leaf) (:at 1551977434239) (:by |rJG4IHzWf) (:id |d38jefjMIi)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1551977434239
                :by |rJG4IHzWf
                :id |1WAFrys6Uc
              |v $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1551977458023) (:by |rJG4IHzWf) (:id |PoeyMJVBRleaf)
                  |j $ {} (:text |config/cdn?) (:type :leaf) (:at 1551977477010) (:by |rJG4IHzWf) (:id |Hv_pOSHpr1)
                :type :expr
                :at 1551977444630
                :by |rJG4IHzWf
                :id |PoeyMJVBR
            :type :expr
            :at 1551977434239
            :by |rJG4IHzWf
            :id |8TFOSiL-WH
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |rJ5_idt5TBW)
              |j $ {} (:author |root) (:text |dispatch!) (:time 1499755354983) (:type :leaf) (:id |B1i_oOY9pHW)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |HyT_suY56Bb)
                  |j $ {} (:author |root) (:text |op-data) (:time 1499755354983) (:type :leaf) (:id |S1AdidYc6Hb)
                :time 1499755354983
                :type :expr
                :id |BJhOjOYqpSW
              |t $ {}
                :data $ {}
                  |D $ {} (:text |when) (:type :leaf) (:at 1547437687530) (:by |root) (:id |aGDIF3y8rk)
                  |L $ {} (:text |config/dev?) (:type :leaf) (:at 1547437691006) (:by |root) (:id |L9TkjnHBLn)
                  |T $ {}
                    :data $ {}
                      |j $ {} (:text |println) (:type :leaf) (:at 1518156276516) (:by |root) (:id |Bkg3x9n5UG)
                      |r $ {} (:text "|\"Dispatch:") (:type :leaf) (:at 1547437698992) (:by |root) (:id |rJpx93cUG)
                      |v $ {} (:text |op) (:type :leaf) (:at 1518156280471) (:by |root) (:id |ryzgb92qIz)
                    :type :expr
                    :at 1518156274050
                    :by |root
                    :id |rkqgqhqUM
                :type :expr
                :at 1547437686766
                :by |root
                :id |eDq-EM-Uh
              |v $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |reset!) (:time 1499755354983) (:type :leaf) (:id |H1w9iOt56S-)
                  |j $ {} (:author |root) (:text |*reel) (:time 1507399899641) (:type :leaf) (:id |rJOcjdYqaHW)
                  |r $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |reel-updater) (:time 1507399887573) (:type :leaf) (:id |HkB0Oc8n-leaf)
                      |j $ {} (:author |root) (:text |updater) (:time 1507399888500) (:type :leaf) (:id |r1eu0dqL2Z)
                      |r $ {} (:author |root) (:text |@*reel) (:time 1507399891576) (:type :leaf) (:id |r1tRdqU3W)
                      |v $ {} (:author |root) (:text |op) (:time 1507399892687) (:type :leaf) (:id |S1e3CO9I3W)
                      |x $ {} (:author |root) (:text |op-data) (:time 1507399894594) (:type :leaf) (:id |HklaCd58nb)
                    :time 1507399884621
                    :type :expr
                    :id |rkLeq39LG
                :time 1499755354983
                :type :expr
                :id |BJg_echcIM
            :time 1499755354983
            :type :expr
            :id |SytOodK9pSZ
          |reload! $ {}
            :data $ {}
              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |defn)
              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |reload!)
              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629720314113)
                :data $ {}
              |v $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |if)
                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629720314113)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |nil?)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |build-errors)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |do) (:type :leaf) (:at 1629720314113) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |remove-watch) (:type :leaf) (:at 1629720314113) (:by |rJG4IHzWf)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1629720314113) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1629720314113) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1629720314113
                        :by |rJG4IHzWf
                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629720314113)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |clear-cache!)
                      |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629720314113)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |add-watch)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |*reel)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |:changes)
                          |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629720314113)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |fn)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629720314113)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |reel)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |prev)
                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629720314113)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |render-app!)
                      |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629720314113)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |reset!)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |*reel)
                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629720314113)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |refresh-reel)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |@*reel)
                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |schema/store)
                              |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |updater)
                      |y $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629720314113)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |hud!)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text "|\"ok~")
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text "|\"Ok")
                    :type :expr
                    :at 1629720314113
                    :by |rJG4IHzWf
                  |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629720314113)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |hud!)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text "|\"error")
                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720314113) (:text |build-errors)
                :type :expr
                :at 1629720314113
                :by |rJG4IHzWf
            :type :expr
            :at 1629720314113
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |SkGujdK5aSW
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |S1ESouY9pSW)
            |j $ {} (:author |root) (:text |text-diff.main) (:time 1499755354983) (:type :leaf) (:id |HJHriOFcTHZ)
            |r $ {}
              :data $ {}
                |yyj $ {}
                  :data $ {}
                    |T $ {} (:text "|\"./calcit.build-errors") (:type :leaf) (:at 1629720322063) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1629720322063) (:by |rJG4IHzWf)
                    |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720322063) (:text |build-errors)
                  :type :expr
                  :at 1629720322063
                  :by |rJG4IHzWf
                |yyr $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629720322063)
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720322063) (:text "|\"bottom-tip")
                    |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720322063) (:text |:default)
                    |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720322063) (:text |hud!)
                |yT $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJ0DiuF5aSZ)
                    |j $ {} (:author |root) (:text |text-diff.schema) (:time 1499755354983) (:type :leaf) (:id |rJJOoOY5pS-)
                    |r $ {} (:author |root) (:text |:as) (:time 1499755354983) (:type :leaf) (:id |rye_i_FqTBb)
                    |v $ {} (:author |root) (:text |schema) (:time 1499755354983) (:type :leaf) (:id |SJbujOK96rW)
                  :time 1499755354983
                  :type :expr
                  :id |BJawo_tcaHW
                |yj $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399674614) (:type :leaf) (:id |Byez-dqLhbleaf)
                    |j $ {} (:author |root) (:text |reel.util) (:time 1507399678694) (:type :leaf) (:id |r1-XZO5LnW)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507399680625) (:type :leaf) (:id |BkuW_qLnZ)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507399681518) (:type :leaf) (:id |ByeF-uqI3W)
                        |j $ {} (:author |root) (:text |listen-devtools!) (:time 1507399682662) (:type :leaf) (:at 1518156292092) (:by |root) (:id |Syxc-_cI3b)
                      :time 1507399680857
                      :type :expr
                      :id |ByZK-uq83b
                  :time 1507399674125
                  :type :expr
                  :id |Byez-dqLhb
                |yr $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399684313) (:type :leaf) (:id |HyxhW_582-leaf)
                    |j $ {} (:author |root) (:text |reel.core) (:time 1507399687162) (:type :leaf) (:id |rkT-OcUn-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507399688098) (:type :leaf) (:id |Bkr1MOqL2Z)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507399688928) (:type :leaf) (:id |BkEgM_qU3W)
                        |j $ {} (:author |root) (:text |reel-updater) (:time 1507399691010) (:type :leaf) (:id |Bk--G_q8h-)
                        |q $ {} (:text |refresh-reel) (:type :leaf) (:at 1518156288482) (:by |root) (:id |By_Z935Uz)
                      :time 1507399688322
                      :type :expr
                      :id |BkHgM_q8hW
                  :time 1507399683930
                  :type :expr
                  :id |HyxhW_582-
                |yu $ {}
                  :data $ {}
                    |T $ {} (:text |reel.schema) (:type :leaf) (:at 1629720350499) (:by |rJG4IHzWf)
                    |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720350499) (:text |:as)
                    |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629720350499) (:text |reel-schema)
                  :type :expr
                  :at 1629720350499
                  :by |rJG4IHzWf
                |yy $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1527788303612) (:by |root) (:id |SkewMXh6y7leaf)
                    |j $ {} (:text |text-diff.config) (:type :leaf) (:at 1527788304925) (:by |root) (:id |SkbOz72T17)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788306048) (:by |root) (:id |SJNYz7n6Jm)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788306884) (:by |root) (:id |ry7cM73ak7)
                  :type :expr
                  :at 1527788302920
                  :by |root
                  :id |SkewMXh6y7
                |T $ {} (:author |root) (:text |:require) (:time 1499755354983) (:type :leaf) (:id |SkPHjOK96rZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |ByKHidF56r-)
                    |j $ {} (:author |root) (:text |respo.core) (:time 1499755354983) (:type :leaf) (:id |H15HidK9Tr-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |ByiSsOF9THZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |rJ6BiuF96BZ)
                        |j $ {} (:author |root) (:text |render!) (:time 1499755354983) (:type :leaf) (:id |rJAri_KcTS-)
                        |r $ {} (:author |root) (:text |clear-cache!) (:time 1499755354983) (:type :leaf) (:id |Hkk8sOFq6rb)
                        |v $ {} (:author |root) (:text |realize-ssr!) (:time 1499755354983) (:type :leaf) (:id |Byx8i_F9TH-)
                      :time 1499755354983
                      :type :expr
                      :id |rJhBiuK5aHb
                  :time 1499755354983
                  :type :expr
                  :id |Hk_HouY9prW
                |v $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HkYUj_t9pBW)
                    |j $ {} (:author |root) (:text |text-diff.comp.container) (:time 1499755354983) (:type :leaf) (:id |SyqIj_Y9aHZ)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |BkoIjut9pHW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HkTLj_FcpBW)
                        |j $ {} (:author |root) (:text |comp-container) (:time 1499755354983) (:type :leaf) (:id |Hy0IidKqTr-)
                      :time 1499755354983
                      :type :expr
                      :id |Sy2IsOYqaSZ
                  :time 1499755354983
                  :type :expr
                  :id |Sy_IiOKqprZ
                |y $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |ryDvs_K96rb)
                    |j $ {} (:author |root) (:text |text-diff.updater) (:time 1508556737455) (:type :leaf) (:id |B1_vsuK96r-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |BJKvodKcTB-)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJjDjuFqpSb)
                        |j $ {} (:author |root) (:text |updater) (:time 1499755354983) (:type :leaf) (:id |SJhwiOY5TB-)
                      :time 1499755354983
                      :type :expr
                      :id |Hy5woOKqTHb
                  :time 1499755354983
                  :type :expr
                  :id |SyLDodYcTS-
              :time 1499755354983
              :type :expr
              :id |BJ8SodF9prb
          :time 1499755354983
          :type :expr
          :id |rkQBo_Yc6Hb
  :users $ {}
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |rJG4IHzWf $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |rJG4IHzWf) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
