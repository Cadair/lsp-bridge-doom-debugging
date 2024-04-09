;; A module for lsp-bridge

(use-package! lsp-bridge
  :config
  ;; disable logging for performance reasons
  (setq lsp-bridge-enable-log nil)
  (global-lsp-bridge-mode)
  (when (modulep! :lang python)
    (add-hook 'pyvenv-post-activate-hooks
              (lambda ()
                (lsp-bridge-restart-process))))
  )
