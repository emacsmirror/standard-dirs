(require 'directories)

(ert-deftest test-user-home-directory nil
  (should
   (equal user-home-directory
          (cond ((eq system-type 'gnu/linux)
                 (file-name-as-directory
                  (concat "/home/" (getenv "USER"))))))))

(ert-deftest test-user-cache-directory nil
  (should
   (equal user-cache-directory
          (cond ((eq system-type 'gnu/linux)
                 (file-name-as-directory
                  (concat "/home/"
                          (getenv "USER")
                          "/.cache")))))))

(provide 'directories-test)
;;; directories-test.el ends here
