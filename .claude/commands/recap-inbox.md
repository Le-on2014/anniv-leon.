Génère un récapitulatif complet de la boîte mail de benoit.morel.0685902385@gmail.com et envoie-le par email.

Voici les étapes à suivre exactement :

1. Utilise l'outil `mcp__Gmail__search_threads` pour récupérer les threads récents de la boîte de réception :
   - Cherche les emails non lus : query `is:unread in:inbox`
   - Cherche aussi les emails importants des 7 derniers jours : query `in:inbox newer_than:7d`
   - pageSize: 20 pour chaque requête

2. Compile un récapitulatif structuré en HTML contenant :
   - **Résumé** : nombre total d'emails non lus, nombre d'emails importants
   - **Emails non lus** : liste avec expéditeur, sujet, extrait du message, date
   - **Emails récents (7 jours)** : liste avec expéditeur, sujet, extrait, date
   - Trie par date décroissante (plus récent en premier)

3. Utilise `mcp__Gmail__create_draft` pour créer un brouillon avec :
   - to: ["benoit.morel.0685902385@gmail.com"]
   - subject: "📬 Récapitulatif de ta boîte mail - [DATE DU JOUR]"
   - htmlBody: le récapitulatif formaté en HTML propre et lisible

4. Confirme à l'utilisateur que le brouillon a été créé et qu'il peut l'envoyer depuis Gmail.
