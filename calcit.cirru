
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |text-diff
  :entries $ {} $ :default
    {} (:description |Browser-app) (:init-fn 'text-diff.main/main!) (:mode :js) (:reload-fn 'text-diff.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'text-diff.schema/Op
  :files $ {}
    'text-diff.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control)
            let
                store $ :store reel
              div
                {} $ :style $ .merge ui/global ui/row
                textarea $ {}
                  :value $ :content store
                  :placeholder |Content
                  :style $ .merge ui/expand ui/textarea $ {} (:height 320)
                  :on-input $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn text-diff.schema/Op $ -> Unit
                      -> Unit
                    let
                        value $ :value e
                      if (string? value)
                        d! $ text-diff.schema/Op :content value
                        raise |Expected-string-input-value
                space-x 8
                div
                  {} $ :style ui/expand
                  comp-md "|This is some content with `code`" $ {}
                  space-x 8
                  button $ {} (:style ui/button)
                    :inner-text $ str |run
                    :on-click $ fn (e d!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn text-diff.schema/Op $ -> Unit
                        -> Unit
                      println $ :content store
                if dev?
                  Some $ comp-controlled-reel reel ({}) on-control
                  , None
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State text-diff.schema/Op text-diff.schema/Store)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns text-diff.comp.container
          :require (respo-ui.core :as ui)
            respo.core :refer $ defcomp <> div button textarea span input
            respo.comp.space :refer $ space-x
            reel.comp.reel :refer $ comp-controlled-reel
            respo-md.comp.md :refer $ comp-md
            text-diff.config :refer $ dev?
    'text-diff.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cdn? (detect-cdn?)
          :examples $ []
          :schema $ quote Bool
        'detect-cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn detect-cdn? ()
            cond
                exists? js/window
                , false
              (exists? js/process)
                let
                    raw js/process.env.cdn
                  if (js-present? raw)
                    = |true $ expect-string |process.env.cdn raw
                    , false
              true false
          :examples $ []
          :schema $ quote $ Fn (-> Bool) (:features :js-ffi)
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/calcit-workflow/) (:title |Calcit) (:icon |http://cdn.tiye.me/logo/mvc-works.png) (:storage-key |workflow)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns text-diff.config
          :require $ js-ffi.contract :refer $ expect-string
    'text-diff.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            typed/State :base schema/store :store schema/store :records ([]) :pointer None :stopped? false :display? false :merged? false
          :examples $ []
          :schema $ quote $ Ref (typed/State schema/Op schema/Store)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            reset! *reel $ match op
              (reel.typed/Control control) (typed/apply-control updater @*reel control)
              (text-diff.schema/Op action)
                typed/record-op updater @*reel action (generate-id!) (shared/now-ms)
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/ResolvedOp (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            add-watch! *reel :changes $ fn (r p)
              hint-fn $ Fn (typed/State schema/Op schema/Store) (typed/State schema/Op schema/Store) (-> Unit)
              render-app!
              , &unit
            listen-devtools! |a on-control!
            match
              browser/storage-get $ .unwrap $ get config/site :storage-key
              (:some raw)
                dispatch! $ schema/Op :hydrate-storage $ schema/decode-store (parse-cirru-edn raw)
              (:none) &unit
            browser/add-event-listener! |beforeunload $ fn (event) (persist-storage!)
            println "|App started."
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ respo-browser/query-selector |.app
          :examples $ []
          :schema $ quote $ Fn (-> respo.dom/DomElement) (:features :js-ffi)
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control) (dispatch! control)
          :examples $ []
          :schema $ quote $ Fn typed/Control (-> Unit)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            browser/storage-set!
              .unwrap $ get config/site :storage-key
              format-cirru-edn $ &struct:to-map $ :store @*reel
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev)
                  hint-fn $ Fn (typed/State schema/Op schema/Store) (typed/State schema/Op schema/Store) (-> Unit)
                  render-app!
                  , &unit
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! (mount-target)
              fn () $ comp-container @*reel on-control!
              fn (op)
                hint-fn $ Fn schema/Op $ -> Unit
                dispatch! op
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'snippets $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn snippets () (println config/cdn?)
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns text-diff.main
          :require
            respo.core :refer $ render-with! clear-cache!
            text-diff.comp.container :refer $ comp-container
            text-diff.updater :refer $ updater
            text-diff.schema :as schema
            text-diff.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :as browser
            respo.ffi.browser :as respo-browser
            reel.typed :as typed
            js-ffi.shared :as shared
            reel.util :refer $ listen-devtools!
    'text-diff.schema $ %{} 'FileEntry
      :defs $ {}
        'CursorKey $ %{} 'CodeEntry
          :doc "|State cursor keys accepted by this app: Tag, String and Number. State payloads stay open."
          :code $ quote $ defunion CursorKey Tag String Number
          :examples $ []
          :schema $ quote UnionDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (List text-diff.schema/CursorKey) Dynamic
            :content String
            :hydrate-storage text-diff.schema/Store
          :examples $ []
          :schema $ quote EnumDef
        'ResolvedOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ResolvedOp text-diff.schema/Op reel.typed/Control
          :examples $ []
          :schema $ quote UnionDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ Map text-diff.schema/CursorKey Dynamic
            :content String
          :examples $ []
          :schema $ quote StructDef
        'decode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-store (data)
            decode-map-as
              if (struct? data) (&struct:to-map data) data
              , text-diff.schema/Store
          :examples $ []
          :schema $ quote $ Fn Input (-> Store) (:generics Input)
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states ({}) :content |
          :examples $ []
          :schema $ quote Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns text-diff.schema
    'text-diff.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor data)
                assoc store :states $ decode-map-as
                  update-state-tree (:states store) cursor data
                  Map text-diff.schema/CursorKey Dynamic
              (:content content) (assoc store :content content)
              (:hydrate-storage stored) stored
          :examples $ []
          :schema $ quote $ Fn text-diff.schema/Store text-diff.schema/Op String Number (-> text-diff.schema/Store)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns text-diff.updater
          :require $ respo.cursor :refer $ update-state-tree
