
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |text-diff
  :entries $ {} $ :default
    {} (:description |Browser-app)
      :init-fn 'text-diff.main/main!
      :mode :js
      :reload-fn 'text-diff.main/reload!
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
      :type-slots $ {}
  :files $ {}
    'text-diff.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ option:unwrap $ get reel :store
                states $ option:unwrap $ get store :states
              div
                {} $ :style $ merge ui/global ui/row
                textarea $ {}
                  :value $ option:unwrap $ get store :content
                  :placeholder |Content
                  :style $ merge ui/expand ui/textarea $ {} (:height 320)
                  :on-input $ fn (e d!)
                    hint-fn $ {}
                      :args $ [] 'respo.schema/RespoEvent 'Dynamic
                      :return 'Dynamic
                    d! :content $ :value e
                =< |8px nil
                div
                  {} $ :style ui/expand
                  comp-md "|This is some content with `code`"
                  =< |8px nil
                  button $ {} (:style ui/button)
                    :inner-text $ str |run
                    :on-click $ fn (e d!)
                      println $ option:unwrap $ get store :content
                when dev? $ comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns text-diff.comp.container
          :require
            [] hsl.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp >> <> div button textarea span input
            [] respo.comp.space :refer $ [] =<
            [] reel.comp.reel :refer $ [] comp-reel
            [] respo-md.comp.md :refer $ [] comp-md
            [] text-diff.config :refer $ [] dev?
    'text-diff.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cdn?
            cond
                exists? js/window
                , false
              (exists? js/process)
                = |true js/process.env.cdn
              :else false
          :examples $ []
          :schema $ :: 'Dynamic
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {}
              :dev-ui |http://localhost:8100/main-fonts.css
              :release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css
              :cdn-url |http://cdn.tiye.me/calcit-workflow/
              :title |Calcit
              :icon |http://cdn.tiye.me/logo/mvc-works.png
              :storage-key |workflow
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns text-diff.config
    'text-diff.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch!
            js/window.addEventListener |beforeunload persist-storage!
            ; flipped js/setInterval 60000 persist-storage!
            let
                raw $ js/localStorage.getItem $ option:unwrap (get config/site :storage-key)
              when (string? raw)
                dispatch! $ :: :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
          :examples $ []
          :schema $ :: 'Dynamic
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'Dynamic
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! (? e)
            js/localStorage.setItem
              option:unwrap $ get config/site :storage-key
              format-cirru-edn $ option:unwrap $ get @*reel :store
            , &unit
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
        'snippets $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn snippets () (println config/cdn?)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns text-diff.main
          :require
            [] respo.core :refer $ [] render! clear-cache! realize-ssr!
            [] text-diff.comp.container :refer $ [] comp-container
            [] text-diff.updater :refer $ [] updater
            [] text-diff.schema :as schema
            [] reel.util :refer $ [] listen-devtools!
            [] reel.core :refer $ [] reel-updater refresh-reel
            reel.schema :as reel-schema
            [] text-diff.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    'text-diff.schema $ %{} 'FileEntry
      :defs $ {} $ 'store
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {}
              :states $ {}
              :content |
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns text-diff.schema
    'text-diff.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s) (update-states store cursor s)
              (:content c) (assoc store :content c)
              (:hydrate-storage d) d
              _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns text-diff.updater
          :require $ [] respo.cursor :refer $ [] update-states
