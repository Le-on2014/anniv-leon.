Génère un récap complet de la boîte email de benoit.morel.0685902385@gmail.com et envoie-le en brouillon à cette même adresse.

Étapes à suivre :
1. Utilise `mcp__Gmail__search_threads` avec `query: "in:inbox"` et `pageSize: 50` pour récupérer tous les fils de discussion.
2. Analyse les résultats et classe les emails en 3 catégories :
   - 🔴 URGENT / Action requise (réponse ou action attendue aujourd'hui ou en retard)
   - 🟡 Dossiers actifs en cours de suivi
   - ⚫ Dossiers anciens / en veille
3. Pour chaque email, note : le dossier/sujet, l'expéditeur, et l'action ou la situation en cours.
4. Utilise `mcp__Gmail__create_draft` pour créer un brouillon destiné à `benoit.morel.0685902385@gmail.com` avec :
   - Sujet : `📋 RÉCAP COMPLET BOITE EMAIL — [date du jour]`
   - Corps HTML bien formaté avec un tableau par catégorie
5. Confirme que le brouillon a bien été créé avec son ID.
