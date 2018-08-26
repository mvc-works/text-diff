
(ns text-diff.util )

(defn get-env! [property] (aget (.-env js/process) property))
