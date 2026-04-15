<!DOCTYPE html>  
<html lang="fr" style="background:#0a0a0a;">  
<head>  
<meta charset="UTF-8">  
<meta name="viewport" content="width=device-width, initial-scale=1.0">  
<meta name="theme-color" content="#0a0a0a">  
<!-- Style critique en premier : fond noir AVANT tout chargement -->  
<style>  
  html, body { background: #0a0a0a !important; }  
  body { opacity: 0; }  
</style>  
<title>Anniversaire de Léon</title>  
<link href="[https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Nunito:wght@400;700;800;900&display=swap](https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Nunito:wght@400;700;800;900&display=swap)" rel="stylesheet">  
<style>  
  * { margin: 0; padding: 0; box-sizing: border-box; }  
  
  body {  
    font-family: 'Nunito', Arial, sans-serif;  
    background: #0a0a0a;  
    color: #fff;  
    min-height: 100vh;  
    transition: opacity 0.3s ease;  
  }  
  
  /* ─── INTRO ─── */  
  #intro {  
    position: fixed;  
    inset: 0;  
    background: #0a0a0a;  
    z-index: 999;  
    display: flex;  
    flex-direction: column;  
    align-items: center;  
    justify-content: center;  
    gap: 6px;  
  }  
  #intro.out {  
    transition: opacity 0.8s ease;  
    opacity: 0;  
    pointer-events: none;  
  }  
  
  .i-line {  
    position: absolute;  
    left: 0; right: 0;  
    height: 1px;  
    background: rgba(255,255,255,0.1);  
  }  
  .i-line.t { top: 20%; }  
  .i-line.b { bottom: 20%; }  
  
  .i-label {  
    font-size: clamp(0.75rem, 3vw, 1rem);  
    font-weight: 700;  
    color: rgba(255,255,255,0.4);  
    letter-spacing: 0.35em;  
    text-transform: uppercase;  
    opacity: 0;  
    animation: up 0.7s ease 0.4s forwards;  
  }  
  .i-anniv {  
    font-family: 'Bebas Neue', Impact, sans-serif;  
    font-size: clamp(3rem, 12vw, 6rem);  
    color: #fff;  
    letter-spacing: 0.07em;  
    line-height: 1;  
    opacity: 0;  
    animation: up 0.7s ease 0.8s forwards;  
  }  
  .i-de {  
    font-size: clamp(0.75rem, 2.5vw, 0.95rem);  
    color: rgba(255,255,255,0.3);  
    letter-spacing: 0.4em;  
    text-transform: uppercase;  
    opacity: 0;  
    margin: 8px 0;  
    animation: up 0.7s ease 1.3s forwards;  
  }  
  .i-leon {  
    font-family: 'Bebas Neue', Impact, sans-serif;  
    font-size: clamp(5rem, 22vw, 11rem);  
    color: #fff;  
    letter-spacing: 0.03em;  
    line-height: 1;  
    opacity: 0;  
    animation: up 0.8s ease 1.7s forwards;  
  }  
  .i-emojis {  
    font-size: 2rem;  
    opacity: 0;  
    margin-top: 16px;  
    letter-spacing: 0.25em;  
    animation: up 0.6s ease 2.6s forwards;  
  }  
  
  @keyframes up {  
    from { opacity: 0; transform: translateY(16px); }  
    to   { opacity: 1; transform: translateY(0); }  
  }  
  
  /* ─── CARTE ─── */  
  #carte {  
    display: none;  
    opacity: 0;  
    background: #0a0a0a;  
    min-height: 100vh;  
    transition: opacity 0.7s ease;  
  }  
  #carte.visible { display: block; }  
  #carte.show    { opacity: 1; }  
  
  .inner {  
    max-width: 460px;  
    margin: 0 auto;  
    padding: 30px 16px 60px;  
  }  
  
  /* En-tête */  
  .entete {  
    margin-bottom: 24px;  
    padding-bottom: 20px;  
    border-bottom: 1px solid rgba(255,255,255,0.1);  
  }  
  .entete-tag {  
    font-size: 0.65rem;  
    font-weight: 800;  
    letter-spacing: 0.2em;  
    text-transform: uppercase;  
    color: rgba(255,255,255,0.4);  
    margin-bottom: 8px;  
  }  
  .entete-titre {  
    font-family: 'Bebas Neue', Impact, sans-serif;  
    font-size: clamp(2.5rem, 10vw, 4.5rem);  
    color: #fff;  
    letter-spacing: 0.05em;  
    line-height: 1;  
  }  
  .entete-accroche {  
    margin-top: 10px;  
    font-size: 0.9rem;  
    color: rgba(255,255,255,0.5);  
    line-height: 1.6;  
  }  
  
  /* Cases */  
  .case {  
    background: #1c1c1c;  
    border: 1px solid #2e2e2e;  
    border-radius: 16px;  
    margin-bottom: 10px;  
    padding: 18px 20px;  
    /* Flexbox robuste sans débordement */  
    display: flex;  
    flex-direction: row;  
    align-items: flex-start;  
    gap: 14px;  
    width: 100%;  
  }  
  
  .case-ico {  
    font-size: 1.8rem;  
    line-height: 1.2;  
    flex: 0 0 auto; /* ne rétrécit pas */  
  }  
  
  .case-body {  
    flex: 1 1 auto;  
    min-width: 0; /* évite le débordement du texte */  
  }  
  
  .case-label {  
    font-size: 0.6rem;  
    font-weight: 800;  
    letter-spacing: 0.18em;  
    text-transform: uppercase;  
    color: rgba(255,255,255,0.38);  
    margin-bottom: 5px;  
    display: block;  
  }  
  
  .case-val {  
    font-size: 1rem;  
    font-weight: 900;  
    color: #fff;  
    line-height: 1.4;  
    display: block;  
    word-wrap: break-word;  
  }  
  
  .case-sub {  
    font-size: 0.82rem;  
    font-weight: 500;  
    color: rgba(255,255,255,0.48);  
    line-height: 1.5;  
    margin-top: 4px;  
    display: block;  
    word-wrap: break-word;  
  }  
  
  /* Confirmation */  
  .confirm {  
    background: #1c1c1c;  
    border: 1px solid #2e2e2e;  
    border-radius: 16px;  
    padding: 22px 16px;  
    text-align: center;  
    margin-top: 10px;  
    width: 100%;  
  }  
  .confirm-label {  
    font-size: 0.65rem;  
    font-weight: 700;  
    letter-spacing: 0.18em;  
    text-transform: uppercase;  
    color: rgba(255,255,255,0.38);  
    margin-bottom: 10px;  
    display: block;  
  }  
  .confirm-num {  
    font-family: 'Bebas Neue', Impact, sans-serif;  
    font-size: 3rem;  
    letter-spacing: 0.14em;  
    color: #fff;  
    display: block;  
  }  
  .confirm-note {  
    font-size: 0.78rem;  
    color: rgba(255,255,255,0.35);  
    margin-top: 6px;  
    display: block;  
  }  
</style>  
</head>  
<body>  
  
<!-- INTRO -->  
<div id="intro">  
  <div class="i-line t"></div>  
  <div class="i-line b"></div>  
  <div class="i-label">🎂 Invitation</div>  
  <div class="i-anniv">Anniversaire</div>  
  <div class="i-de">— de —</div>  
  <div class="i-leon">Léon</div>  
  <div class="i-emojis">🎉 🎊 🎈</div>  
</div>  
  
<!-- CARTE -->  
<div id="carte">  
  <div class="inner">  
  
    <div class="entete">  
      <div class="entete-tag">🎂 Anniversaire de Léon</div>  
      <div class="entete-titre">Tu es invité !</div>  
      <div class="entete-accroche">Viens fêter mon anniversaire avec moi 🎉</div>  
    </div>  
  
    <div class="case">  
      <div class="case-ico">📅</div>  
      <div class="case-body">  
        <span class="case-label">Date</span>  
        <span class="case-val">Samedi 30 mai 2025</span>  
      </div>  
    </div>  
  
    <div class="case">  
      <div class="case-ico">🕙</div>  
      <div class="case-body">  
        <span class="case-label">Horaires</span>  
        <span class="case-val">10h30 — 13h00</span>  
      </div>  
    </div>  
  
    <div class="case">  
      <div class="case-ico">🎯</div>  
      <div class="case-body">  
        <span class="case-label">Lieu</span>  
        <span class="case-val">Laser World Montparnasse</span>  
        <span class="case-sub">168 Boulevard du Montparnasse, 75014 Paris</span>  
      </div>  
    </div>  
  
    <div class="case">  
      <div class="case-ico">🍽️</div>  
      <div class="case-body">  
        <span class="case-label">Repas</span>  
        <span class="case-val">Repas inclus !</span>  
        <span class="case-sub">Un repas vous sera offert sur place — rien à prévoir</span>  
      </div>  
    </div>  
  
    <div class="confirm">  
      <span class="confirm-label">📱 Confirme ta présence au</span>  
      <span class="confirm-num">06 26 54 88 75</span>  
      <span class="confirm-note">Réponds-moi pour qu'on t'attende 💬</span>  
    </div>  
  
  </div>  
</div>  
  
<script>  
  // Afficher le body dès que le DOM est prêt (fond noir déjà posé)  
  document.body.style.opacity = '1';  
  
  // Intro 6s puis carte  
  setTimeout(function () {  
    var intro = document.getElementById('intro');  
    var carte = document.getElementById('carte');  
    intro.classList.add('out');  
    carte.classList.add('visible');  
    setTimeout(function () { carte.classList.add('show'); }, 50);  
    setTimeout(function () {  
      if (intro.parentNode) intro.parentNode.removeChild(intro);  
    }, 900);  
  }, 6000);  
</script>  
  
</body>  
</html>  
