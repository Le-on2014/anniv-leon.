# Récap Boite Email Gmail

Génère un récap complet de la boite email de benoit.morel.0685902385@gmail.com et l'envoie comme brouillon à cette même adresse.

## Instructions

1. Utilise l'outil `mcp__Gmail__search_threads` avec la requête `in:inbox newer_than:30d` et `pageSize: 50` pour récupérer les fils de discussion récents.

2. Si le résultat est trop grand pour être lu directement, utilise bash avec `jq` pour extraire les champs clés : `subject`, `from`, `date`, `snippet` de chaque thread.

3. Organise les emails par date (aujourd'hui, hier, cette semaine, plus anciens) et par catégorie (urgent, dossiers notariaux, appels/rappels, newsletters, divers).

4. Crée un brouillon via `mcp__Gmail__create_draft` avec :
   - `to`: `["benoit.morel.0685902385@gmail.com"]`
   - `subject`: `📬 Récap boite email — [DATE DU JOUR]`
   - `htmlBody`: un tableau HTML bien structuré avec tous les emails, leurs expéditeurs, et un résumé du contenu de chaque message

5. Confirme à l'utilisateur que le brouillon a été créé et qu'il peut le trouver dans Gmail pour l'envoyer.
