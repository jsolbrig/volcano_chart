# volcano

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.6.0-devel](https://img.shields.io/badge/AppVersion-1.6.0--devel-informational?style=flat-square)

**Homepage:** <https://volcano.sh>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Jeremy Solbrig | <jeremy.solbrig@colostate.edu> |  |

## Source Code

* <https://github.com/volcano-sh/volcano>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| controllers.image.pullPolicy | string | `"IfNotPresent"` |  |
| controllers.image.registry | string | `"wolf.cira.colostate.edu:444"` |  |
| controllers.image.repository | string | `"volcanosh/vc-controller-manager"` |  |
| controllers.image.tag | string | `"5cfe62d01d27a5b6482ae6a9458b9451b7e5bc3e"` |  |
| scheduler.image.pullPolicy | string | `"IfNotPresent"` |  |
| scheduler.image.registry | string | `"wolf.cira.colostate.edu:444"` |  |
| scheduler.image.repository | string | `"volcanosh/vc-scheduler"` |  |
| scheduler.image.tag | string | `"5cfe62d01d27a5b6482ae6a9458b9451b7e5bc3e"` |  |
| webhookManager.image.pullPolicy | string | `"IfNotPresent"` |  |
| webhookManager.image.registry | string | `"wolf.cira.colostate.edu:444"` |  |
| webhookManager.image.repository | string | `"volcanosh/vc-webhook-manager"` |  |
| webhookManager.image.tag | string | `"5cfe62d01d27a5b6482ae6a9458b9451b7e5bc3e"` |  |
| webhookManager.managedNamespaces[0] | string | `"volcano"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.10.0](https://github.com/norwoodj/helm-docs/releases/v1.10.0)
