# Récapitulatif complet et visuel de la boîte email

Génère un récapitulatif HTML enrichi (graphiques, stats, couleurs) de la boîte email benoit.morel.0685902385@gmail.com et crée un brouillon à envoyer à benoit.morel.0685902385@gmail.com.

## Étapes

1. **Récupération des données** via `mcp__Gmail__search_threads` :
   - `in:inbox newer_than:30d` pageSize 50 → tous les fils récents
   - `in:inbox is:unread` pageSize 50 → fils non lus
   - `in:inbox after:YYYY/MM/DD` (date du jour) → fils actifs aujourd'hui

2. **Calcul des statistiques** :
   - Nombre total de messages reçus aujourd'hui (hors messages envoyés par benoit.morel.0685902385@gmail.com)
   - Nombre de fils non lus aujourd'hui
   - Top expéditeur du jour (celui qui a envoyé le plus de messages)
   - Répartition par heure (ex: 08h: 1, 14h: 6, 15h: 10, etc.)
   - Répartition par catégorie : Successions, Ventes immobilières, Sociétés/Holding, Projets immobiliers, Administration, RH/Divers

3. **Création du brouillon HTML** via `mcp__Gmail__create_draft` :
   - **Destinataire** : benoit.morel.0685902385@gmail.com
   - **Objet** : `📊 Récapitulatif Email | [JOUR] [DATE] | [N] msgs reçus · [N] non lus`

   **Structure du corps HTML** (utiliser uniquement des styles inline compatibles email) :

   ```
   HEADER dégradé bleu avec titre et date

   STATS TILES (3 blocs colorés côte à côte) :
   - Bleu foncé  : nombre de mails reçus aujourd'hui
   - Rouge       : nombre de fils non lus
   - Orange      : top expéditeur du jour (nom + nb mails)

   GRAPHIQUE 1 — "Volume par heure" :
   Barres horizontales CSS (table avec largeur %) 
   Mettre en rouge le pic de la journée

   GRAPHIQUE 2 — "Top expéditeurs du jour" :
   Barres horizontales pour les 3-5 premiers expéditeurs

   RÉPARTITION PAR CATÉGORIE :
   Tableau avec badges colorés par type de dossier

   SECTION FILS NON LUS (rouge, encadré)

   SECTION AUJOURD'HUI (liste détaillée, code couleur par catégorie)
   - Jaune  : RDV du jour
   - Rouge  : urgences
   - Bleu   : ventes immobilières
   - Violet : sociétés/holding

   SECTION CETTE SEMAINE

   SECTION DOSSIERS ACTIFS

   FOOTER : "Généré par Claude Code · /email-recap"
   ```

4. **Confirmer** : indiquer à l'utilisateur que le brouillon est prêt dans Gmail (aller dans Brouillons et cliquer Envoyer).

## Note importante
L'outil Gmail disponible permet uniquement de créer des brouillons (`mcp__Gmail__create_draft`).
L'envoi effectif doit être fait manuellement depuis Gmail en ouvrant le brouillon.
