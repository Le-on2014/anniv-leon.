# Récapitulatif de boîte mail

Génère un récapitulatif complet de la boîte Gmail benoit.morel.0685902385@gmail.com et l'envoie par email à cette même adresse.

## Instructions

1. Utilise l'outil `mcp__Gmail__search_threads` pour récupérer les fils actifs des 30 derniers jours dans la boîte :
   - D'abord : `query: "in:inbox newer_than:30d"` avec `pageSize: 50`
   - Ensuite : `query: "is:unread"` pour repérer les messages non lus

2. Analyse et classe chaque fil par catégorie :
   - 🔴 **Actions requises** : messages qui attendent une réponse ou une action de ta part (rappels téléphoniques, documents à envoyer, questions sans réponse)
   - 🟠 **Dossiers notariaux** : dossiers professionnels en cours (ventes, donations, baux, etc.)
   - 🔵 **Newsletters & informations** : lettres d'information, newsletters automatiques

3. Crée un brouillon HTML structuré avec `mcp__Gmail__create_draft` :
   - **to** : `benoit.morel.0685902385@gmail.com`
   - **subject** : `📬 Récapitulatif de ta boîte mail — [jour] [date]`
   - Corps en HTML avec :
     - Un bandeau "En bref" (nombre de fils, messages non lus, actions à faire)
     - Un tableau par catégorie, chaque ligne = un fil avec : expéditeur, sujet, résumé en 1-2 phrases, date
     - Un footer indiquant la date de génération

4. Confirme à l'utilisateur que le brouillon a été créé et affiche un résumé des points clés.

## Notes
- Adresse email de l'utilisateur : benoit.morel.0685902385@gmail.com
- L'email est créé en **brouillon** (pas envoyé automatiquement) pour que l'utilisateur puisse le relire avant envoi
- Langue : français
