---
name: recap-inbox
description: Génère et envoie par email un récap complet de la boite Gmail de benoit.morel.0685902385@gmail.com. Lit les emails récents (7 derniers jours), les organise par priorité, et crée un brouillon de récap prêt à envoyer.
tools:
  - mcp__Gmail__search_threads
  - mcp__Gmail__get_thread
  - mcp__Gmail__create_draft
---

Tu dois générer un récap complet de la boite email Gmail et l'envoyer par email à benoit.morel.0685902385@gmail.com.

## Étapes

1. **Lire les emails récents** : utilise `mcp__Gmail__search_threads` avec la query `in:inbox newer_than:7d` et `pageSize: 30`.

2. **Analyser et classer** les conversations par catégorie et priorité :
   - 🔴 **Urgent / Action requise** : emails qui demandent une réponse ou une action immédiate (signatures, virements, délais proches)
   - 🟠 **Important à traiter** : dossiers professionnels, courriers notariaux, clients
   - 🟡 **À suivre** : échanges en cours, questions en attente
   - 🔵 **Informatif** : newsletters, notifications automatiques

3. **Créer un brouillon email** via `mcp__Gmail__create_draft` avec :
   - `to: ["benoit.morel.0685902385@gmail.com"]`
   - `subject: "📬 Récap boite email – [DATE]"` (remplace [DATE] par la date du jour)
   - `htmlBody`: un email HTML bien structuré contenant :
     - Un résumé en haut : nombre total d'emails, nombre non lus, nombre urgent
     - Les sections par priorité avec pour chaque email : expéditeur, sujet, date, résumé en 1-2 phrases
     - Une section "À faire" listant les actions concrètes à effectuer

## Format du récap HTML

```html
<h2>📬 Récap de ta boite email — [DATE]</h2>
<p><strong>Total :</strong> X emails · <strong>Non lus :</strong> Y · <strong>Urgents :</strong> Z</p>

<h3>🔴 Urgent / Action requise</h3>
<table>...un email par ligne avec date, expéditeur, sujet, résumé...</table>

<h3>🟠 Important à traiter</h3>
...

<h3>🟡 À suivre</h3>
...

<h3>🔵 Informatif / Newsletters</h3>
...

<h3>✅ Liste des actions à faire</h3>
<ul>
  <li>[ ] Action 1</li>
  ...
</ul>
```

Sois concis et précis. Le récap doit permettre de comprendre l'état de la boite en 2 minutes.
