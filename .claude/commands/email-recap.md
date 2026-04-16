# Récapitulatif complet de la boîte email

Génère un récapitulatif complet de la boîte email benoit.morel.0685902385@gmail.com et crée un brouillon d'email récapitulatif à envoyer à benoit.morel.0685902385@gmail.com.

Étapes à suivre :

1. Utilise `mcp__Gmail__search_threads` avec la query `in:inbox newer_than:30d` et pageSize 50 pour récupérer tous les fils de la boîte de réception des 30 derniers jours.

2. Pour chaque fil, extrais :
   - Le sujet
   - L'expéditeur
   - La date
   - Le snippet (extrait)
   - Le nombre de messages

3. Organise les fils par ordre chronologique décroissant, en les regroupant par période :
   - Aujourd'hui
   - Cette semaine
   - Ce mois
   - Plus anciens

4. Pour les fils urgents ou avec beaucoup de messages (>10), mets-les en évidence.

5. Crée un brouillon HTML structuré avec `mcp__Gmail__create_draft` :
   - Destinataire : benoit.morel.0685902385@gmail.com
   - Objet : "📋 Récapitulatif complet de votre boîte email – [DATE DU JOUR]"
   - Corps HTML avec tableau des emails groupés par période, avec colonnes : Sujet | Résumé | Nb messages
   - Mettre en rouge/urgent les dossiers marqués URGENT ou avec >15 messages
   - Mettre en jaune les RDV du jour

6. Confirme à l'utilisateur que le brouillon a été créé et qu'il peut l'envoyer depuis Gmail.
