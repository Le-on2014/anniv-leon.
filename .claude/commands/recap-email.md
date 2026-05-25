# Récapitulatif complet de la boîte email

Génère un récapitulatif complet de la boîte email benoit.morel.0685902385@gmail.com et envoie-le par email à cette même adresse.

## Étapes à suivre

1. **Rechercher les emails non lus** dans la boîte de réception
2. **Rechercher les emails récents** (7 derniers jours)
3. **Rechercher les emails importants** marqués comme importants
4. **Compiler le récapitulatif** en français avec toutes les informations
5. **Créer un brouillon email** avec le récapitulatif complet

### Instructions détaillées

**Étape 1 — Collecte des données**

Effectue ces 4 recherches Gmail en parallèle :
- `is:unread in:inbox` (pageSize: 20) → emails non lus
- `in:inbox newer_than:7d` (pageSize: 20) → emails récents de la semaine
- `is:important in:inbox` (pageSize: 10) → emails importants
- `is:starred` (pageSize: 10) → emails étoilés

**Étape 2 — Compilation du récapitulatif**

Compile toutes les données collectées et rédige un email de récapitulatif en français avec la structure suivante :

```
Objet : 📬 Récapitulatif de ta boîte email — [DATE DU JOUR]

Bonjour Benoit,

Voici ton récapitulatif complet de la boîte benoit.morel.0685902385@gmail.com
généré le [DATE ET HEURE].

━━━━━━━━━━━━━━━━━━━━━━━━━━
📨 EMAILS NON LUS (X)
━━━━━━━━━━━━━━━━━━━━━━━━━━
Pour chaque email non lu :
• [Date] De : [Expéditeur] — Sujet : [Sujet]
  [Extrait du message]

━━━━━━━━━━━━━━━━━━━━━━━━━━
📅 EMAILS DE LA SEMAINE (X)
━━━━━━━━━━━━━━━━━━━━━━━━━━
Pour chaque email de la semaine :
• [Date] De : [Expéditeur] — Sujet : [Sujet]

━━━━━━━━━━━━━━━━━━━━━━━━━━
⭐ EMAILS IMPORTANTS / ÉTOILÉS (X)
━━━━━━━━━━━━━━━━━━━━━━━━━━
Pour chaque email important ou étoilé :
• [Date] De : [Expéditeur] — Sujet : [Sujet]

━━━━━━━━━━━━━━━━━━━━━━━━━━
📊 RÉSUMÉ GÉNÉRAL
━━━━━━━━━━━━━━━━━━━━━━━━━━
• Total non lus : X
• Total reçus cette semaine : X
• Emails importants : X
• Emails étoilés : X

Ce récapitulatif a été généré automatiquement par Claude Code.
```

**Étape 3 — Création du brouillon**

Utilise `mcp__Gmail__create_draft` pour créer le brouillon avec :
- `to`: ["benoit.morel.0685902385@gmail.com"]
- `subject`: "📬 Récapitulatif de ta boîte email — [date du jour]"
- `htmlBody`: version HTML du récapitulatif (avec balises HTML pour la mise en forme)
- `body`: version texte brut du récapitulatif

**Étape 4 — Confirmation**

Informe l'utilisateur que le brouillon a été créé et lui demande d'aller dans Gmail pour le relire et l'envoyer (ou envoie-le directement si un outil d'envoi est disponible).

> Note : Le brouillon sera disponible dans la section "Brouillons" de Gmail à l'adresse benoit.morel.0685902385@gmail.com
