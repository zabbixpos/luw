#!/bin/bash
cat <<EOF
        <script>
         if (document.execCommand("ClearAuthenticationCache"))
         {
           document.location = "/";
         } else {
           var request = new XMLHttpRequest();
           request.open("get", "/cgi-bin/luw-enter/luw-enter.sh", "logout", "logout");
           request.send();
           document.location = "/";
         }
</script>
EOF