# Récap Boîte Email

Lis la boîte Gmail et crée un brouillon récap complet à envoyer à benoit.morel.0685902385@gmail.com.

## Étapes

1. Récupère les 50 derniers threads de la boîte de réception avec `mcp__Gmail__search_threads` (query: `in:inbox`, pageSize: 50)
2. Classe les emails par catégorie :
   - **NON LUS IMPORTANTS** : emails avec labels UNREAD + IMPORTANT
   - **EN ATTENTE** : emails INBOX lus qui nécessitent une action
   - **RAPPELS MANQUÉS** : notifications d'appel (noreply@thelem.fr)
   - **RÉSERVATIONS** : emails Airbnb/locations
   - **DOSSIERS NOTARIAUX** : emails liés aux dossiers en cours
3. Pour chaque email important, note : expéditeur, sujet, date, action requise
4. Crée un brouillon avec `mcp__Gmail__create_draft` :
   - `to`: ["benoit.morel.0685902385@gmail.com"]
   - `subject`: "📬 Récap Boîte Email — [DATE DU JOUR]"
   - `htmlBody`: récap complet et structuré en HTML avec sections colorées
5. Indique à l'utilisateur que le brouillon est prêt dans Gmail

## Format du récap HTML

```html
<h2>📬 Récap Boîte Email — [date]</h2>
<p><strong>Total inbox :</strong> X emails • X non lus</p>

<h3 style="color:#c0392b">🔴 Non lus importants (X)</h3>
<ul>
  <li><strong>[Expéditeur]</strong> — [Sujet] <em>([heure])</em><br>[résumé 1 ligne + action requise]</li>
</ul>

<h3 style="color:#e67e22">🟠 Rappels manqués (X)</h3>
<ul>
  <li><strong>[Nom]</strong> — [Objet de l'appel] — À rappeler</li>
</ul>

<h3 style="color:#27ae60">🟢 En attente / À traiter (X)</h3>
<ul>
  <li><strong>[Expéditeur]</strong> — [Sujet] — [Action]</li>
</ul>

<h3 style="color:#2980b9">🔵 Réservations (X)</h3>
<ul>
  <li>[Détails réservation]</li>
</ul>

<hr>
<p><em>Récap généré automatiquement par Claude Code</em></p>
```
