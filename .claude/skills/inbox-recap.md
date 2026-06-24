# Skill: inbox-recap

Génère un récapitulatif complet de la boîte mail Gmail et l'envoie sous forme de brouillon à benoit.morel.0685902385@gmail.com.

## Instructions

Quand l'utilisateur invoque `/inbox-recap` :

1. **Rechercher les emails récents** avec les requêtes suivantes en parallèle :
   - `in:inbox newer_than:7d` (tous les threads de la semaine, pageSize 50)
   - `in:inbox is:unread` (messages non lus)
   - `in:inbox is:starred` (messages étoilés)

2. **Analyser et classer les threads** en catégories :
   - 🔴 Non lus / urgents (label UNREAD + IMPORTANT)
   - 📁 Dossiers en cours (sujets notariaux, juridiques, professionnels)
   - 💰 Factures / finances
   - 📅 RDV / actions en attente
   - 📰 Newsletters / informations
   - ✅ Traités / pour info

3. **Créer un brouillon HTML** avec `mcp__Gmail__create_draft` vers `benoit.morel.0685902385@gmail.com` contenant :
   - Date et heure du récapitulatif
   - Nombre total de threads / non lus
   - Tableau récapitulatif par catégorie avec expéditeur, sujet, extrait
   - Section "Actions requises" pour les emails demandant une réponse
   - Section "À surveiller" pour les dossiers en cours

4. **Confirmer** à l'utilisateur que le brouillon a été créé dans Gmail (prêt à envoyer).

## Note
Les outils Gmail disponibles permettent de créer des brouillons (`mcp__Gmail__create_draft`) mais pas d'envoyer directement. Le brouillon apparaît dans Gmail > Brouillons, prêt à être envoyé d'un clic.
