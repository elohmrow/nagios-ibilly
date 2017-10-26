<html>
  <head>
  </head>
  <body>
  TODO
  <ul>
    <li>automatically create and start omd sites</li>
    <li>automatically register new hosts on omd sites</li>
    <li>custom plugins</li>
    <li>abstract out nagios and check_mk install by OS (check_mk_agent is done)</li>
    <li>RRDTool</li>
  </ul>
  <br /><br />

    shell/<br />
    &nbsp;&nbsp;- [bash] scripts for automating and starting nagios installs<br />
    playbooks/<br />
    &nbsp;&nbsp;- [ansible] scripts for automating and starting nagios installs<br />
    playbooks/roles/nagios/<br />
    &nbsp;&nbsp;- [ansible roles] for automating and starting nagios and Check_mk installs ... available OSs:
    Debian-based and Red Hat-based.<br />
    <br />
    * starting with https://github.com/elohmrow/nagios-ibilly/commit/359f53ca1c8b29f4db3ddea6fa3e3c12d4116239, [ansible role] no longer functionally identical to [ansible] and [bash] *
    <br /><br />
    * unless otherwise stated, [bash], [ansible], and [ansible role] functionality identical *
  </body>
</html>
