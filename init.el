;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/layers/")
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     markdown
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ; osx
     ;; ivy
     (colors :variables
             colors-colorize-identifiers 'variables
             colors-enable-nyan-cat-progress-bar t)
     helm
     ;; smex
     auto-completion
     better-defaults
     evil-cleverparens
     vim-empty-lines
     emacs-lisp
     dash
     ;; git
     ;; markdown
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     clojure
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(two-column)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only-but-keep-unused))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 999
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state nil
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Menlo"
                               :size 18
                               :weight normal
                               :width normal
                               :powerline-scale 1.2)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.8
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'changed
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (set-cursor-color "#000000")

  ;; fix search history for /
  (setq-default evil-search-module 'evil-search)
  ; (setq-default adaptive-wrap-extra-indent 8)
  ;; '(evil-search-highlight-persist-all-windows t)
  ;; '(global-evil-search-highlight-persist t)

  ;; steal some colors from vim's mayansmoke
  (custom-set-variables
   '(spacemacs-theme-custom-colors
                          '((bg1 . "#f4f4e8"))))
  (custom-set-faces
   `(lazy-highlight ((t (:foreground "#ffffff" :background "#cc6666"))))
   `(isearch ((t (:foreground "#fefefc" :background "#a3a333")))))
  )

;; https://stackoverflow.com/a/25792276
(defun lunaryorn-new-buffer-frame ()
  "Create a new frame with a new empty buffer."
  (interactive)
  (let ((buffer (generate-new-buffer "untitled")))
    (set-buffer-major-mode buffer)
    (display-buffer buffer '(display-buffer-pop-up-frame . nil)))
  (toggle-frame-fullscreen))

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;; fix cider-last-sexp in evil mode (found in a spacemacs issue)
  ;;   https://github.com/syl20bnr/spacemacs/issues/646#issuecomment-106037404
  ;; original cider implementation
  ;;   https://github.com/clojure-emacs/cider/blob/17ee1cf760776678d23e80e4746b45aea60cc1e9/cider-interaction.el#L343
  ;; fix based on how evil fixes elisp
  ;;   https://github.com/emacs-evil/evil/blob/99192e6f3135f35941da9fceafa1401124fe3374/evil-integration.el#L316
  ;; should be obsoleted when this issue is done
  ;;   https://github.com/syl20bnr/spacemacs/issues/3103
  (defadvice cider-last-sexp (around evil activate)
    "In normal-state or motion-state, last sexp ends at point."
    (if (or (evil-normal-state-p) (evil-motion-state-p))
        (save-excursion
          (unless (or (eobp) (eolp)) (forward-char))
          ad-do-it)
      ad-do-it))

  ;; fix green highlighting when eval-ing last-sexp
  ;; original cider-eval-sexp-fu (comes with the clojure layer)
  ;;   https://github.com/clojure-emacs/cider-eval-sexp-fu/blob/5687e7b33e17f2be40b036dac82da4a5bc6705fb/cider-eval-sexp-fu.el#L38
  (defadvice cider-esf--bounds-of-last-sexp (around evil activate)
    "In normal-state or motion-state, last sexp ends at point."
    (if (or (evil-normal-state-p) (evil-motion-state-p))
        (cons (save-excursion
               (unless (or (eobp) (eolp)) (forward-char))
               ad-do-it))
      ad-do-it))

  (with-eval-after-load 'evil-cleverparens
    (define-key evil-normal-state-map "x" 'evil-delete-char)
    (define-key evil-normal-state-map "Y" 'evil-yank-line))

  (setq cider-auto-jump-to-error nil)
  (setq cider-auto-select-error-buffer nil)

  ;; evil operator that calls cider-eval-region
  (evil-define-operator cider-cp-eval (beg end)
    "Convert text to upper case."
    :move-point nil
    (cider-eval-region beg end))

  (define-key evil-normal-state-map "'" 'cider-cp-eval)
  ;; cider-eval-pprint-with-multiline-comment-handler

  (define-key evil-normal-state-map (kbd "<f3>") (kbd "' a f"))
  (define-key evil-normal-state-map (kbd "<f4>") (kbd "' a ("))
  (define-key evil-normal-state-map (kbd "<f5>") (kbd "' a p"))

  (define-key evil-normal-state-map (kbd "M-e") (kbd "d d 0 d s ("))

  ;; https://stackoverflow.com/questions/151945/how-do-i-control-how-emacs-makes-backup-files#151946:
  ;; Backups

  ;; fixed lockfiles using global gitignore
  ;; (setq create-lockfiles nil)
  (setq make-backup-files t)
  (setq version-control t     ;; Use version numbers for backups.
        kept-new-versions 10  ;; Number of newest versions to keep.
        kept-old-versions 0   ;; Number of oldest versions to keep.
        delete-old-versions t ;; Don't ask to delete excess backup versions.
        backup-by-copying t)  ;; Copy all files, don't rename them.
  (setq vc-make-backup-files t)
  ;; Default and per-save backups go here:
  (setq backup-directory-alist '(("" . "~/tmp/emacs/backups-per-save")))

  (defun force-backup-of-buffer ()
    ;; Make a special "per session" backup at the first save of each
    ;; emacs session.
    (when (not buffer-backed-up)
      ;; Override the default parameters for per-session backups.
      (let ((backup-directory-alist '(("" . "~/tmp/emacs/backups-per-session")))
            (kept-new-versions 3))
        (backup-buffer)))
    ;; Make a "per save" backup on each save.  The first save results in
    ;; both a per-session and a per-save backup, to keep the numbering
    ;; of per-save backups consistent.
    (let ((buffer-backed-up nil))
      (backup-buffer)))

  (add-hook 'before-save-hook  'force-backup-of-buffer)

  ;; XXX karabiner elements note
  ;; <f19> is caps lock
  ;; <f18> is tap right meta
  (spacemacs/toggle-evil-cleverparens-on)
  (add-hook 'smartparens-enabled-hook #'evil-cleverparens-mode)
  (add-hook 'clojure-mode-hook #'evil-cleverparens-mode)
  (add-hook 'clojure-mode-hook #'aggressive-indent-mode)

  ;; TODO automatically make M a prefix aka map all M-blah to M blah via <f18> tap
  ;; https://github.com/tekezo/Karabiner-Elements/issues/971

  ;; These setq's should be set by the custom-set-variables thing, but it doesn't work properly in spacemacs.
  (setq mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
  (setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
  (setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
  (setq scroll-step 1) ;; keyboard scroll one line at a time
  (setq scroll-margin 5)

  (blink-cursor-mode t)
  (setq blink-cursor-interval 0.3)
  (setq blink-cursor-blinks 1000000)

  ;; already set to not dotspacemacs-fullscreen-use-non-native
  ;; (setq ns-use-native-fullscreen nil)

  ;; (global-set-key (kbd "xxx") (lambda () (interactive) (some-command) (some-other-command)))

  ;;; NOTE In keybindings S- means SHIFT- and s- means CMD- (aka SUPER-)

  (define-key evil-normal-state-map  (kbd "M-9") 'evil-cp-wrap-next-round)
  (define-key evil-normal-state-map  (kbd "M-0") 'evil-cp-wrap-previous-round)

  ;; XXX
  ;; (define-key evil-insert-state-map  (kbd "<tab>") (kbd "  "))

  ;; Separate kill/yank buffer from os
  ;; TODO
  ;;   * copy/paste selection in insert mode
  ;;   * shift-select in normal mode
  ;;   * check cmd-x
  ;;   * make pasting create an undo point
  (setq x-select-enable-clipboard nil)
  (define-key evil-visual-state-map (kbd "s-c") (kbd "\"+y"))
  (define-key evil-visual-state-map (kbd "s-x") (kbd "\"+d"))
  (define-key evil-normal-state-map  (kbd "s-v") (kbd "\"+P"))
  (define-key evil-visual-state-map  (kbd "s-v") (kbd "\"+p"))
  (define-key evil-insert-state-map  (kbd "s-v") (kbd "+"))
  (define-key evil-ex-completion-map (kbd "s-v") (kbd "+"))
  (define-key evil-ex-search-keymap  (kbd "s-v") (kbd "+"))

  ;; XXX (define-key evil-normal-state-map (kbd "c-q") (kbd "c-v"))

  (global-set-key (kbd "<s-f1>") 'dash-at-point)
  ;; " f19 is caps lock via karabiner-elements
  (global-set-key (kbd "<f19>") 'other-window)
  (global-set-key (kbd "s-]") 'other-window)
  (global-set-key (kbd "s-[") 'other-window)
  (global-set-key (kbd "<M-tab>") 'other-window)

  (define-key evil-normal-state-map (kbd "<RET>") 'spacemacs/alternate-buffer)
  (global-set-key (kbd "<M-S-tab>") 'spacemacs/alternate-buffer)
  ;; (define-key evil-normal-state-map (kbd "<DEL>") 'evil-switch-to-windows-last-buffer)
  (global-set-key (kbd "<s-return>") 'toggle-frame-fullscreen)

  ;; TODO delete frame after deleting last window
  (global-set-key (kbd "s-w") 'delete-window)
  (global-set-key (kbd "s-W") 'delete-frame)
  (global-set-key (kbd "s-n") 'lunaryorn-new-buffer-frame)
  (define-key evil-normal-state-map "`w" 'delete-window)
  (define-key evil-normal-state-map "`W" 'delete-frame)
  (define-key evil-normal-state-map "`n" 'lunaryorn-new-buffer-frame)
  (define-key evil-normal-state-map "`s" 'save-buffer)
  (define-key evil-normal-state-map (kbd "` <right>") 'ns-next-frame)
  (define-key evil-normal-state-map (kbd "` <left>") 'ns-prev-frame)

  (define-key evil-normal-state-map "0" 'mwim-beginning-of-code-or-line-or-comment)
  (define-key evil-normal-state-map "--" 'spacemacs/comment-or-uncomment-lines)
  (define-key evil-visual-state-map "--" 'spacemacs/comment-or-uncomment-lines)

  ;; let mapleader = "`"
  (define-key evil-normal-state-map "`v" 'split-window-right-and-focus)
  (define-key evil-normal-state-map "`h" 'split-window-below-and-focus)
  (global-set-key (kbd "s-d") 'split-window-right-and-focus)
  (global-set-key (kbd "s-D") 'split-window-right-and-focus)

  (global-set-key (kbd "s-r") 'helm-projectile-find-file)
  (global-set-key (kbd "s-R") 'helm-projectile-find-dir)
  (define-key evil-normal-state-map "`r" 'helm-projectile-find-file)
  (define-key evil-normal-state-map "`R" 'helm-projectile-find-dir)

  ;; not working
  (define-key evil-normal-state-map (kbd "<f2>") 'evil-search-highlight-persist-remove-all)

  (define-key evil-insert-state-map  (kbd "C-SPC") (kbd "C-n"))
  (define-key evil-insert-state-map  (kbd "M-SPC") (kbd "C-n"))

  ;; TODO fix selection when in visual mode
  (global-set-key [C-down] 'move-text-down)
  (global-set-key [C-up] 'move-text-up)

  ;; TODO keep cursor position instead of jumping to beginning of line
  (define-key evil-normal-state-map [C-right] ">>")
  (define-key evil-visual-state-map [C-left] "<gv")
  (define-key evil-visual-state-map [C-right] ">gv")
  (define-key evil-normal-state-map [C-left] "<<")
  (define-key evil-insert-state-map [C-right] ">>2l")
  (define-key evil-insert-state-map [C-left] "<<2h")

  (define-key evil-normal-state-map "gb" "'[V']")

  ;; " maximize split, restore, all equal
  ;; " center window when jumping to results instead of showing on the last line of the buffer
  ;; " better listchars, indent wrapped lines but don't show markers
  ;; set whichwrap=<,>,h,l,b,s,~,[,]
  ;; set iskeyword=@,48-57,128-167,224-235,_  "default: @,48-57,_,192-255
  ;; set listchars=tab:»·,trail:·,extends:>,precedes:<
  ;; set breakat=\ ^I!@*-+;:,./?   " when wrapping, break at these characters
  ;; set showbreak=\ \ \ \ \ \ \ \ " what to show at the start of a wrapped line
  ;; nn  <silent> <Leader>a         :set wrap!<CR>
  ;; nn  <silent> <Leader>l         :set list!<CR>
  ;; nn  <silent> <Leader>n         :set number!<CR>
  ;; " helpers to use _ like a word boundary cr car cir etc
  ;; " helpers to use <space> like a word boundary c<space> ca<space> ci<space>
  ;; " remove empty or otherwise dead buffers when moving away from them
  ;; tab insert spaces

  ;; XXX
  ;; https://github.com/noctuid/lispyville
  ;; https://www.reddit.com/r/emacs/comments/3sfmkz/could_this_be_a_pareditsmartparens_killer/cwxocld/


  (setq custom-file (expand-file-name "custom.el" dotspacemacs-directory))
  (load custom-file)
)
