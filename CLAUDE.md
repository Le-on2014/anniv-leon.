# CLAUDE.md – Instructions pour Claude Code

## Raccourci : Récapitulatif email

Quand l'utilisateur dit **"recap boite mail"**, **"récap email"**, ou **"envoie-moi un récap"** :

1. Utiliser `mcp__Gmail__search_threads` avec `query: "in:inbox newer_than:30d"` et `pageSize: 50`
2. Analyser tous les fils : urgences, dossiers actifs, RDV, appels manqués, non-prioritaires
3. Créer un brouillon HTML structuré via `mcp__Gmail__create_draft` à destination de `benoit.morel.0685902385@gmail.com`
4. Sujet du brouillon : `📋 RÉCAPITULATIF COMPLET DE VOTRE BOÎTE EMAIL – [date du jour]`

Le récapitulatif doit inclure : vue d'ensemble chiffrée, actions urgentes, dossiers actifs, agenda immédiat, appels à retourner, emails non prioritaires.
