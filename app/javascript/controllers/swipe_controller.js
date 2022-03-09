import { Controller } from "stimulus";
import Hammer from 'hammerjs';
import { csrfToken } from "@rails/ujs";
import Swal from 'sweetalert2';


export default class extends Controller {
  static targets = [ "card" , "like", "dislike" ]

  connect() {
    this._initCards();
    this._initSwipe();

    this.swipeHorizontal = false;
    this.swipeVertical   = false;

    this.likeEvent = new Event('liked');
    this.dislikeEvent = new Event('disliked');
  }

  liked(elementId) {
    document.dispatchEvent(this.likeEvent);
    console.log(`liked id ${elementId}`)
    // TODO your code when liked
      fetch(`/job_offers/${elementId}/user_likes`,
      {
        method: "POST",
        headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken() },
      })
        .then(response => response.json())
        .then(data => {
          console.log(data.status);
          console.log(data.match);
          if (data.status === "match") {
            Swal.fire({title: "It's a match!",
            text: 'Le recruteur a quelques questions pour vous',
            imageUrl: 'https://avatars.githubusercontent.com/u/95220236?v=4',
            imageWidth: 88,
            imageHeight: 88,
            imageAlt: 'Custom image',
            showCloseButton: true,
            className: "alert-design"}).then(()=> {
              console.log(data.match);
              window.location.href = `/matches/${data.match}`;
            });;
          }
        })
  }

  disliked(elementId) {
    document.dispatchEvent(this.dislikeEvent);
    console.log(`disliked id ${elementId}`)
    // TODO your code when disliked
  }

  _initCards(card, index) {
    const cards = this._activeCards()

    cards.forEach((card, index) => {
      card.style.zIndex = cards.length - index;
      card.style.transform = 'scale(' + (20 - index) / 20 + ') translateY(-' + 30 * index + 'px)';
      card.style.opacity = (10 - index) / 10;
    });
    console.log('coucou');
    this.element.classList.add('loaded');
    this.swipeHorizontal = false;
    this.swipeVertical = false;
  }

  _initSwipe() {
    this.cardTargets.forEach((el) => {
      const hammertime = new Hammer(el);

      this._listenToPan(hammertime, el)
      this._listenToPanEnd(hammertime, el)

    });
  }

  _listenToPan(hammertime, el) {
    hammertime.on('pan', (event) => {
      console.log(event.deltaX, event.deltaY)
      if (this.swipeHorizontal === false && this.swipeVertical === false)  {
        console.log('ca commence a pan')
        if (event.deltaX === 0 || event.center.x === 0 && event.center.y === 0) return;
        if (event.deltaY > 60 || event.deltaY < -60) {
          this.swipeVertical = true
          return;
        }
        window.lol = event

        if (event.deltaX > 60 || event.deltaX < -60) {
          this._forbidScroll(el)
          this.swipeHorizontal = true
          console.log('lol')
        }

        if (event.additionalEvent === 'panleft') {
          this.dislikeTarget.style.opacity = 1
          this.likeTarget.style.opacity = 0

          this._resetIcons()
        } else {
          this.dislikeTarget.style.opacity = 0
          this.likeTarget.style.opacity = 1

          this._resetIcons()
        }

        // this._forbidScroll(el)

        el.classList.add('moving');
        el.classList.toggle('tinder_love', event.deltaX > 0);
        el.classList.toggle('tinder_nope', event.deltaX < 0);
      }
      if (this.swipeHorizontal === true) {
        const rotate = event.deltaX * 0.03 * event.deltaY / 80;
        console.log()
        event.target.style.transform = `translate(${event.deltaX}px, ${event.deltaY}px) rotate(${rotate}deg)`;
      }
    });
  }

  _listenToPanEnd(hammertime, el) {
    hammertime.on('panend', (event) => {
      console.log('jai lache')
      this.swipeHorizontal = false;
      this.swipeVertical = false;
      this._enableScroll(el)
      el.classList.remove('moving', 'tinder_love', 'tinder_nope');

      const moveOutWidth = document.body.clientWidth;
      const keep = Math.abs(event.deltaX) < 80 //|| Math.abs(event.velocityX) < 0.5;

      if (!keep && event.additionalEvent === 'panright') {
        this.liked(event.target.dataset.id)
      } else if (!keep && event.additionalEvent === 'panleft') {
        this.disliked(event.target.dataset.id)
      }

      event.target.classList.toggle('removed', !keep);

      if (keep) {
        event.target.style.transform = '';
      } else {
        const endX = Math.max(Math.abs(event.velocityX) * moveOutWidth, moveOutWidth);
        const toX = event.deltaX > 0 ? endX : -endX;
        const endY = Math.abs(event.velocityY) * moveOutWidth;
        const toY = event.deltaY > 0 ? endY : -endY;
        const xMulti = event.deltaX * 0.03;
        const yMulti = event.deltaY / 80;
        const rotate = xMulti * yMulti;

        event.target.style.transform = `translate(${toX}px, ${toY + event.deltaY}px) rotate(${rotate}deg)`;
        this._initCards();
      }
    });
  }

  _createButtonListener(love, event) {
    const cards = this._activeCards()
    const moveOutWidth = document.body.clientWidth * 1.5;
    if (!cards.length) return false;

    const card = cards[0];
    const minus = love ? '' : '-'

    card.style.transform = `translate(${minus}${moveOutWidth}px, -100px) rotate(${minus}30deg)`;
    card.classList.add('removed');


    this._initCards();
    event.preventDefault();
  }

  _activeCards() {
    return this.cardTargets.filter(e => !e.classList.contains('removed'));
  }

  _resetIcons() {
    setTimeout(() => {
      this.likeTarget.style.opacity = 0
      this.dislikeTarget.style.opacity = 0
    }, 500);
  }

  _forbidScroll(card) {
    card.style.overflow = 'hidden'
  }

  _enableScroll(card) {
    card.style.overflow = 'scroll'
  }
}
