// Auto-imported filters by 'gmailctl download'.
//
// WARNING: This functionality is experimental. Before making any
// changes, check that no diff is detected with the remote filters by
// using the 'diff' command.

// Uncomment if you want to use the standard library.
// local lib = import 'gmailctl.libsonnet';
{
  version: "v1alpha3",
  author: {
    name: "Christoph Görn",
    email: "goern@redhat.com"
  },
  // Note: labels management is optional. If you prefer to use the
  // GMail interface to add and remove labels, you can safely remove
  // this section of the config.
  labels: [
    {
      name: "admin"
    },
    {
      name: "aos/devel"
    },
    {
      name: "recruitment"
    },
    {
      name: "atomic"
    },
    {
      name: "aos"
    },
    {
      name: "announce"
    },
    {
      name: "announce/tech-talk"
    },
    {
      name: "managers"
    },
    {
      name: "memo-list"
    },
    {
      name: "managers/list"
    },
    {
      name: "announce/emea"
    },
    {
      name: "atomic/sme"
    },
    {
      name: "aos/openshift-sme"
    },
    {
      name: "announce/managers"
    },
    {
      name: "aos/openshift-announce"
    },
    {
      name: "fedora"
    },
    {
      name: "cockpit"
    },
    {
      name: "atomic/devel"
    },
    {
      name: "cockpit/devel"
    },
    {
      name: "cpaas"
    },
    {
      name: "cpaas/announce"
    },
    {
      name: "container"
    },
    {
      name: "container/tools"
    },
    {
      name: "container/buildsys-dev"
    },
    {
      name: "tensorflow"
    },
    {
      name: "aicoe-interns"
    },
    {
      name: "tensorflow/build"
    },
    {
      name: "mailing lists/operate-first"
    },
    {
      name: "aos/openshift-commons-sig-ml"
    },
    {
      name: "psi"
    },
    {
      name: "cloud-strategy"
    },
    {
      name: "psi/users"
    },
    {
      name: "psi/users/openshift"
    },
    {
      name: "psi/users/openstack"
    },
    {
      name: "tekton"
    },
    {
      name: "tekton/dev"
    },
    {
      name: "mailing lists/duesseldorf"
    },
    {
      name: "fedora/cloud"
    },
    {
      name: "mailing lists/rhel-next"
    },
    {
      name: "sa-dach"
    },
    {
      name: "mailing lists/stuttgart"
    },
    {
      name: "contra"
    },
    {
      name: "mailing lists/tech-list"
    },
    {
      name: "expenses/expenses:done"
    },
    {
      name: "Varangian"
    },
    {
      name: "summit"
    },
    {
      name: "hiring"
    },
    {
      name: "upshift"
    },
    {
      name: "GTD later"
    },
    {
      name: "expenses"
    },
    {
      name: "mailing lists"
    },
    {
      name: "microservices"
    },
    {
      name: "travel"
    },
    {
      name: "centos-devel"
    },
    {
      name: "thoth"
    },
    {
      name: "aos/announce"
    },
    {
      name: "thoth/sentry"
    },
    {
      name: "moc"
    }
  ],
  rules: [
    {
      filter: {
        query: "list:memo-list.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "memo-list"
        ]
      }
    },
    {
      filter: {
        query: "list:emea-announce.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "announce/emea"
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
        query: "list:aos-devel.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "aos/devel"
        ]
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
        and: [
          {
            to: "-me"
          },
          {
            query: "list:managers-announce.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "announce/managers"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:aos-announce.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "aos/announce"
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
        query: "list:\"syseng-staff.redhat.com\""
      },
      actions: {
        archive: true,
        markSpam: false
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:managers-list.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "managers/list"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:memo-list.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "memo-list"
        ]
      }
    },
    {
      filter: {
        query: "list:openshift-sme.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "aos/openshift-sme"
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
        and: [
          {
            to: "-me"
          },
          {
            query: "list:aos-devel.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "aos/devel"
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
        query: "list:managers-announce.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "announce/managers"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:openshift-announce.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "aos/openshift-announce"
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
        query: "list:tech-talk-announce.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "announce/tech-talk"
        ]
      }
    },
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
        and: [
          {
            to: "-me"
          },
          {
            query: "list:emea-announce.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "announce/emea"
        ]
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
        and: [
          {
            to: "-me"
          },
          {
            query: "list:announce-list.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "announce"
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
        query: "list:managers-list.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "managers/list"
        ]
      }
    },
    {
      filter: {
        query: "list:openshift-announce.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "aos/openshift-announce"
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
        query: "list:aos-announce.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "aos/announce"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:openshift-sme.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "aos/openshift-sme"
        ]
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
        query: "list:announce-list.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "announce"
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
        and: [
          {
            to: "-me"
          },
          {
            query: "list:tech-talk-announce.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "announce/tech-talk"
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
        and: [
          {
            to: "-me"
          },
          {
            query: "list:sa-dach.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "sa-dach"
        ]
      }
    },
    {
      filter: {
        query: "list:sa-dach.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "sa-dach"
        ]
      }
    },
    {
      filter: {
        query: "list:cockpit-devel.lists.fedorahosted.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "cockpit/devel"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:cloud.lists.fedorahosted.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "fedora/cloud"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:cockpit-devel.lists.fedorahosted.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "cockpit/devel"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:atomic-devel.lists.fedorahosted.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "atomic/devel"
        ]
      }
    },
    {
      filter: {
        query: "list:atomic-devel.lists.fedorahosted.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "atomic/devel"
        ]
      }
    },
    {
      filter: {
        query: "list:cloud.lists.fedorahosted.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "fedora/cloud"
        ]
      }
    },
    {
      filter: {
        query: "list:cp-announce.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "cpaas/announce"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:cp-announce.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "cpaas/announce"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:container-buildsys-dev.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "container/buildsys-dev"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:container-tools.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "container/tools"
        ]
      }
    },
    {
      filter: {
        query: "list:container-tools.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "container/tools"
        ]
      }
    },
    {
      filter: {
        query: "list:container-buildsys-dev.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "container/buildsys-dev"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:build.tensorflow.org"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "tensorflow/build"
        ]
      }
    },
    {
      filter: {
        query: "list:build.tensorflow.org"
      },
      actions: {
        markSpam: false,
        labels: [
          "tensorflow/build"
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
        and: [
          {
            to: "-me"
          },
          {
            query: "list:operate-first.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "mailing lists/operate-first"
        ]
      }
    },
    {
      filter: {
        query: "list:operate-first.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "mailing lists/operate-first"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:tech-list.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "mailing lists/tech-list"
        ]
      }
    },
    {
      filter: {
        query: "list:tech-list.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "mailing lists/tech-list"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:openshift-commons-sig-ml.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "aos/openshift-commons-sig-ml"
        ]
      }
    },
    {
      filter: {
        query: "list:openshift-commons-sig-ml.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "aos/openshift-commons-sig-ml"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:psi-openshift-users.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "psi/users/openshift"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:psi-openstack-users.redhat.com"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "psi/users/openstack"
        ]
      }
    },
    {
      filter: {
        query: "list:psi-openshift-users.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "psi/users/openshift"
        ]
      }
    },
    {
      filter: {
        query: "list:psi-openstack-users.redhat.com"
      },
      actions: {
        markSpam: false,
        labels: [
          "psi/users/openstack"
        ]
      }
    },
    {
      filter: {
        query: "list:\"demobuilder-list.redhat.com\""
      },
      actions: {
        archive: true
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
        query: "list:tekton-dev.tensorflow.org"
      },
      actions: {
        markSpam: false,
        labels: [
          "tekton/dev"
        ]
      }
    },
    {
      filter: {
        and: [
          {
            to: "-me"
          },
          {
            query: "list:tekton-dev.tensorflow.org"
          }
        ]
      },
      actions: {
        archive: true,
        markSpam: false,
        labels: [
          "tekton/dev"
        ]
      }
    },
    {
      filter: {
        query: "list:(devel.lists.fedoraproject.org)"
      },
      actions: {
        delete: true
      }
    }
  ]
}
