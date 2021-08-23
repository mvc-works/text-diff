
{} (:package |text-diff)
  :configs $ {} (:init-fn |text-diff.main/main!) (:reload-fn |text-diff.main/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
    :version nil
  :files $ {}
    |text-diff.config $ {}
      :ns $ quote (ns text-diff.config)
      :defs $ {}
        |cdn? $ quote
          def cdn? $ cond
              exists? js/window
              , false
            (exists? js/process) (= "\"true" js/process.env.cdn)
            :else false
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/calcit-workflow/") (:title "\"Calcit") (:icon "\"http://cdn.tiye.me/logo/mvc-works.png") (:storage-key "\"workflow")
    |text-diff.schema $ {}
      :ns $ quote (ns text-diff.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
            :content |
    |text-diff.updater $ {}
      :ns $ quote
        ns text-diff.updater $ :require
          [] respo.cursor :refer $ [] update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case-default op
              do (println "\"Unknown op:" op) store
              :states $ update-states store op-data
              :content $ assoc store :content op-data
              :hydrate-storage op-data
    |text-diff.comp.container $ {}
      :ns $ quote
        ns text-diff.comp.container $ :require
          [] hsl.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp >> <> div button textarea span input
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] respo-md.comp.md :refer $ [] comp-md
          [] text-diff.config :refer $ [] dev?
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
              div
                {} $ :style (merge ui/global ui/row)
                textarea $ {}
                  :value $ :content store
                  :placeholder "\"Content"
                  :style $ merge ui/expand ui/textarea
                    {} $ :height 320
                  :on-input $ fn (e d!)
                    d! :content $ :value e
                =< |8px nil
                div
                  {} $ :style ui/expand
                  comp-md "|This is some content with `code`"
                  =< |8px nil
                  button $ {} (:style ui/button)
                    :inner-text $ str |run
                    :on-click $ fn (e d! m!)
                      println $ :content store
                when dev? $ comp-reel (>> states :reel) reel ({})
    |text-diff.main $ {}
      :ns $ quote
        ns text-diff.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] text-diff.comp.container :refer $ [] comp-container
          [] text-diff.updater :refer $ [] updater
          [] text-diff.schema :as schema
          [] reel.util :refer $ [] listen-devtools!
          [] reel.core :refer $ [] reel-updater refresh-reel
          reel.schema :as reel-schema
          [] text-diff.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |persist-storage! $ quote
          defn persist-storage! (? e)
            .setItem js/localStorage (:storage-key config/site)
              format-cirru-edn $ :store @*reel
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch!
            .addEventListener js/window |beforeunload persist-storage!
            ; repeat! 60 persist-storage!
            let
                raw $ .getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |snippets $ quote
          defn snippets () $ println config/cdn?
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when config/dev? $ println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
