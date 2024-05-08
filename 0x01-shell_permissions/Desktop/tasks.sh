#8. James Bond
touch 8-James_Bond
file=8-James_Bond
if [[ -f "$file" ]]; then
  echo -e '#!/bin/bash\nchmod 007 hello' > 8-James_Bond
  chmod u+x 8-James_Bond


  CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"

  echo -n "8. James Bond..."
  sleep 1
  echo -e "\\r${CHECK_MARK} 8. James Bond"
fi

9. John Doe
touch 9-John_Doe
file=9-John_Doe
if [[ -f "$file" ]]; then
  echo -e '#!/bin/bash\nchmod 753 hello' > 9-John_Doe
  chmod u+x 9-John_Doe


  CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"

  echo -n "9. John Doe..."
  sleep 1
  echo -e "\\r${CHECK_MARK} 9. John Doe"
fi

#10. Look in the mirror
touch 10-mirror_permissions
file=10-mirror_permissions
if [[ -f "$file" ]]; then
  echo -e '#!/bin/bash\nchmod --reference=olleh hello' > 10-mirror_permissions
  chmod u+x 10-mirror_permissions


  CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"

  echo -n "10. Look in the mirror..."
  sleep 1
  echo -e "\\r${CHECK_MARK} 10. Look in the mirror"
fi

#11. Directories
touch 11-directories_permissions
file=11-directories_permissions
if [[ -f "$file" ]]; then
  echo -e '#!/bin/bash\nchmod -R ugo+X .' > 11-directories_permissions
  chmod u+x 11-directories_permissions

  CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"

  echo -n "11. Directories..."
  sleep 1
  echo -e "\\r${CHECK_MARK} 11. Directories"
fi

#12. More directories
touch 12-directory_permissions
file=12-directory_permissions
if [[ -f "$file" ]]; then
  echo -e '#!/bin/bash\nmkdir -m 751 my_dir' > 12-directory_permissions
  chmod u+x 12-directory_permissions

  CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"

  echo -n "12. More directories..."
  sleep 1
  echo -e "\\r${CHECK_MARK} 12. More directories"
fi

#13. Change group
touch 13-change_group
file=13-change_group
if [[ -f "$file" ]]; then
  echo -e '#!/bin/bash\nchgrp school hello' > 13-change_group
  chmod u+x 13-change_group


  CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"

  echo -n "13. Change group..."
  sleep 1
  echo -e "\\r${CHECK_MARK} 13. Change group"
fi

#14. Owner and group
touch 100-change_owner_and_group
file=100-change_owner_and_group
if [[ -f "$file" ]]; then
  echo -e '#!/bin/bash\nchown -hR vincent:staff .' > 100-change_owner_and_group
  chmod u+x 100-change_owner_and_group

  CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"

  echo -n "14. Copy HTML files..."
  sleep 1
  echo -e "\\r${CHECK_MARK} 14. Copy HTML files"
fi

#15. Symbolic links
touch 101-symbolic_link_permissions
file=101-symbolic_link_permissions
if [[ -f "$file" ]]; then
  echo -e '#!/bin/bash\nchown -h vincent:staff _hello' > 101-symbolic_link_permissions
  chmod u+x 101-symbolic_link_permissions

  CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"

  echo -n "15. Symbolic links..."
  sleep 1
  echo -e "\\r${CHECK_MARK} 15. Symbolic links"
fi

#16. If only
touch 102-if_only
file=102-if_only
if [[ -f "$file" ]]; then
  echo -e '#!/bin/bash\nchown --from=guillaume betty hello' > 102-if_only
  chmod u+x 102-if_only

  CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"

  echo -n "16. If only..."
  sleep 1
  echo -e "\\r${CHECK_MARK} 16. If only"
fi

#17. Star Wars
touch 103-Star_Wars
file=103-Star_Wars
if [[ -f "$file" ]]; then
  echo -e '#!/bin/bash\ntelnet towel.blinkenlights.nl' > 103-Star_Wars
  chmod u+x 103-Star_Wars


  CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"

  echo -n "17. Star Wars..."
  sleep 1
  echo -e "\\r${CHECK_MARK} 17. Star Wars"
fi
