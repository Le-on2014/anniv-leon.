# Récapitulatif complet de la boîte mail

Génère un récapitulatif complet de la boîte mail de benoit.morel.0685902385@gmail.com et l'envoie sous forme de brouillon Gmail à benoit.morel.0685902385@gmail.com.

## Instructions

1. Utilise l'outil `mcp__Gmail__search_threads` avec la requête `in:inbox newer_than:30d` et `pageSize: 50` pour récupérer tous les fils récents.

2. Classe les fils en 4 catégories :
   - 🔴 **URGENT** — délais imminents, mises en demeure, relances sans réponse
   - 🟠 **RENDEZ-VOUS & ÉCHANGES À SUIVRE** — RDV confirmés ou à confirmer, rappels téléphoniques
   - 🟢 **DOSSIERS EN COURS** — dossiers actifs sans urgence immédiate
   - ⚪ **ADMINISTRATIF & DIVERS** — factures, newsletters, notifications

3. Pour chaque fil, indique :
   - Le sujet
   - L'expéditeur et la date du dernier message
   - Un résumé en 1-2 phrases de l'état du dossier

4. Crée un brouillon Gmail via `mcp__Gmail__create_draft` avec :
   - `to`: `["benoit.morel.0685902385@gmail.com"]`
   - `subject`: `📬 RÉCAP COMPLET BOITE MAIL – [DATE DU JOUR]`
   - Un corps HTML bien structuré avec tableaux et couleurs par catégorie

5. Confirme à l'utilisateur que le brouillon est disponible dans Gmail.
