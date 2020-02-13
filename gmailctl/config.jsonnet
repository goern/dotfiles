local toMe = {
  or: [
    { to: 'cgoern@redhat.com' },
    { to: 'goern@redhat.com' },
  ],
};

local label_archive(filter, label) =
   [
    {
      filter: filter,
      actions: {
        archive: true,
        markSpam: false,
        labels: [ label ]
      }
    }
   ]
;

local fedora_mailing_list(name, label = '') =
    local labels =
        if label == '' then
           [ std.join('/', std.splitLimit(name, '-', 1) ) ]
        else
           [ label ]
    ;

    [
        {
          filter: {
            and: [
              { list: name + '.lists.fedorahosted.com' },
            ],
          },
          actions: {
            archive: false,
            markSpam: false,
            labels: labels
          }
        },
        {
          filter: {
            and: [
              { list: name + '.lists.fedorahosted.com' },
              { to: '-me' },
            ],
          },
          actions: {
            archive: true,
            markSpam: false,
            labels: labels
          }
        }
    ]
;

local rh_mailing_list(name, label = '') =
    local labels =
        if label == '' then
           [ std.join('/', std.splitLimit(name, '-', 1) ) ]
        else
           [ label ]
    ;

    [
        {
          filter: {
            and: [
              { list: name + '.redhat.com' },
            ],
          },
          actions: {
            archive: false,
            markSpam: false,
            labels: labels
          }
        },
        {
          filter: {
            and: [
              { list: name + '.redhat.com' },
              { to: '-me' },
            ],
          },
          actions: {
            archive: true,
            markSpam: false,
            labels: labels
          }
        }
    ]
;

local tensorflow_mailing_list(name, label = '') =
    local labels =
        if label == '' then
           [ std.join('/', std.splitLimit(name, '-', 1) ) ]
        else
           [ label ]
    ;

    [
        {
          filter: {
            and: [
              { list: name + '.tensorflow.org' },
            ],
          },
          actions: {
            archive: false,
            markSpam: false,
            labels: labels
          }
        },
        {
          filter: {
            and: [
              { list: name + '.tensorflow.org' },
              { to: '-me' },
            ],
          },
          actions: {
            archive: true,
            markSpam: false,
            labels: labels
          }
        }
    ]
;

local lib = import 'gmailctl.libsonnet';

{
  version: "v1alpha3",
  author: {
    name: "YOUR NAME HERE (auto imported)",
    email: "your-email@gmail.com"
  },
  rules: [
    {
      filter: {
        from: "aws-receivables-support@email.amazon.com"
      },
      actions: {
        markRead: true,
        markSpam: false,
        category: "updates",
        labels: [
          "expenses"
        ]
      }
    },
    {
      filter: {
        from: "kundenservice@egencia.de"
      },
      actions: {
        archive: true,
        markSpam: false,
        category: "updates",
        labels: [
          "travel"
        ]
      }
    },
    {
      filter: {
        query: "list:\"cloud-strategy.redhat.com\""
      },
      actions: {
        archive: true,
        labels: [
          "cloud-strategy"
        ]
      }
    },
    {
      filter: {
        from: "kaizen@lists.massopen.cloud"
      },
      actions: {
        markSpam: false,
        markImportant: false,
        category: "updates",
        labels: [
          "moc"
        ]
      }
    },
    {
      filter: {
        query: "list:continuous-infra.redhat.com"
      },
      actions: {
        labels: [
          "contra"
        ]
      }
    },
    {
      filter: {
        from: "notifications@github.com"
      },
      actions: {
        markRead: true
      }
    },
    {
      filter: {
        query: "list:(duesseldorf-list.redhat.com)"
      },
      actions: {
        labels: [
          "mailing lists/duesseldorf"
        ]
      }
    },
    {
      filter: {
        query: "list:\"syseng-staff.redhat.com\""
      },
      actions: {
        archive: true,
        markSpam: false
      }
    },
    {
      filter: {
        query: "list:(*.thoth-station.github.com)"
      },
      actions: {
        markRead: true,
        category: "updates",
        labels: [
          "thoth/thoth-zuul"
        ]
      }
    },
    {
      filter: {
        query: "list:(upshift.redhat.com)"
      },
      actions: {
        labels: [
          "upshift"
        ]
      }
    },
    {
      filter: {
        query: "list:\"cdk-internal.redhat.com\""
      },
      actions: {
        archive: true,
        markSpam: false
      }
    },
    {
      filter: {
        query: "list:(centos-devel.centos.org)"
      },
      actions: {
        archive: true,
        labels: [
          "centos-devel"
        ]
      }
    },
    {
      filter: {
        query: "list:sde-ci.redhat.com"
      },
      actions: {
        archive: true,
        markSpam: false
      }
    },
    {
      filter: {
        query: "list:(*.thoth-station.github.com)"
      },
      actions: {
        archive: true,
        markRead: true,
        markSpam: false,
        markImportant: false,
        category: "updates",
        labels: [
          "thoth/thoth-zuul"
        ]
      }
    },
    {
      filter: {
        from: "kundenservice@egencia.de"
      },
      actions: {
        markSpam: false,
        markImportant: false,
        category: "updates",
        labels: [
          "travel"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            from: "workflow@redhat.com"
          },
          {
            subject: "Action Required: Expense",
            isEscaped: true
          }
        ]
      },
      actions: {
        star: true,
        markImportant: true,
        category: "personal",
        labels: [
          "admin"
        ]
      }
    },
    {
      filter: {
        query: "list:(microservices.redhat.com)"
      },
      actions: {
        category: "forums",
        labels: [
          "microservices"
        ]
      }
    },
    {
      filter: {
        query: "list:\"atomic-sme.redhat.com\""
      },
      actions: {
        archive: true,
        labels: [
          "atomic/sme"
        ]
      }
    },
    {
      filter: {
        query: "list:(devops-strategy.redhat.com)"
      },
      actions: {
        archive: true,
        markRead: true,
        markSpam: false
      }
    },
    {
      filter: {
        query: "list:aicoe-interns.redhat.com"
      },
      actions: {
        labels: [
          "aicoe-interns"
        ]
      }
    },
    {
      filter: {
        query: "list:\"stuttgart-list.redhat.com\""
      },
      actions: {
        archive: true,
        labels: [
          "mailing lists/stuttgart"
        ]
      }
    },
    {
      filter: {
        query: "list:\"rhel-next.redhat.com\""
      },
      actions: {
        archive: true,
        markRead: true,
        labels: [
          "mailing lists/rhel-next"
        ]
      }
    },
    {
      filter: {
        query: "list:\"atomic-host-dev.redhat.com\""
      },
      actions: {
        archive: true,
        labels: [
          "atomic"
        ]
      }
    },
    {
      filter: {
        query: "list:\"demobuilder-list.redhat.com\""
      },
      actions: {
        archive: true,
      }
    },
    {
      filter: {
        query: "list:(thoth.thoth-station.getsentry.com)"
      },
      actions: {
        markRead: true,
        category: "updates",
        labels: [
          "thoth/sentry"
        ]
      }
    },
    {
      filter: {
        query: "list:(*.thoth-station.github.com)"
      },
      actions: {
        markRead: true,
        category: "updates"
      }
    },
    {
      filter: {
        from: "mojo-notify@redhat.com"
      },
      actions: {
        archive: true,
        category: "updates",
        labels: [
          "GTD later"
        ]
      }
    },
    {
      filter: {
        from: "thoth-zuul[bot]"
      },
      actions: {
        archive: true,
        category: "updates",
        labels: [
          "thoth/zuul"
        ]
      }
    }
  ] +
  rh_mailing_list('announce-list', 'announce') +
  rh_mailing_list('tech-talk-announce', 'announce/tech-talk') +
  rh_mailing_list('emea-announce', 'announce/emea') +
  rh_mailing_list('managers-announce', 'announce/managers') +
  rh_mailing_list('managers-list', 'managers/list') +
  rh_mailing_list('memo-list', 'memo-list') +
  rh_mailing_list('openshift-announce', 'aos/openshift-announce') +
  rh_mailing_list('openshift-commons-sig-ml', 'aos/openshift-commons-sig-ml') +
  rh_mailing_list('aos-announce', 'aos/announce') +
  rh_mailing_list('aos-devel', 'aos/devel') +
  rh_mailing_list('openshift-sme', 'aos/openshift-sme') + 
  rh_mailing_list('sa-dach', 'sa-dach') +
  rh_mailing_list('cp-announce', 'cpaas/announce') +
  rh_mailing_list('container-buildsys-dev', 'container/buildsys-dev') +
  rh_mailing_list('container-tools', 'container/tools') +
  rh_mailing_list('operate-first', 'mailing lists/operate-first') +
  rh_mailing_list('tech-list', 'mailing lists/tech-list') +
  rh_mailing_list('psi-openstack-users', 'psi/users/openstack') +
  rh_mailing_list('psi-openshift-users', 'psi/users/openshift') +
  fedora_mailing_list('cockpit-devel') +
  fedora_mailing_list('cloud', 'fedora/cloud') +
  fedora_mailing_list('atomic-devel') +
  tensorflow_mailing_list('build', 'tensorflow/build'), 
  labels: [
    { name: "expenses/expenses:done" },
    { name: "summit" },

  ] + lib.rulesLabels(self.rules),
}
