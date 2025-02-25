  //  ---------------Navbar------------------------
  (() => {
    const openNav = document.querySelector(".open-menu"),
        closeNav = document.querySelector(".close-menu"),
        navMenu = document.querySelector(".nav-link-container"),
        background = document.querySelector(".background"),
        mediaSize = 992;

    // Open and close the main navigation menu
    openNav.addEventListener("click", toggleMenu);
    closeNav.addEventListener("click", toggleMenu);
    background.addEventListener("click", toggleMenu);
    function toggleMenu() {
        navMenu.classList.toggle("open");
        background.classList.toggle("active");
    }

    // Handle dropdown menu toggling
    navMenu.addEventListener("click", (event) => {
        if (event.target.hasAttribute("data-toggle") && window.innerWidth <= mediaSize) {
            event.preventDefault();
            const dropdownMenuBranch = event.target.parentElement;

            // If already active, collapse it
            if (dropdownMenuBranch.classList.contains("active")) {
                collapseDropdownMenu(dropdownMenuBranch);
            } else {
                // Collapse any other active dropdown
                if (navMenu.querySelector(".dropdown-menu-branch.active")) {
                    collapseDropdownMenu(navMenu.querySelector(".dropdown-menu-branch.active"));
                }

                // Expand the clicked dropdown
                dropdownMenuBranch.classList.add("active");
                const dropdownMenu = dropdownMenuBranch.querySelector(".dropdown-main-menu");
                dropdownMenu.style.maxHeight = dropdownMenu.scrollHeight + "px";
            }
        }
    });

    // Collapse dropdown menu helper function
    function collapseDropdownMenu(menuBranch = null) {
        if (menuBranch) {
            const dropdownMenu = menuBranch.querySelector(".dropdown-main-menu");
            dropdownMenu.style.maxHeight = null; // Reset max height to collapse smoothly
            menuBranch.classList.remove("active");
        }
    }

    // Reset dropdown menu on window resize for proper responsiveness
    window.addEventListener("resize", () => {
        if (window.innerWidth > mediaSize) {
            if (navMenu.classList.contains("open")) {
                toggleMenu();
            }
            if (navMenu.querySelector(".dropdown-menu-branch.active")) {
                collapseDropdownMenu(navMenu.querySelector(".dropdown-menu-branch.active"));
            }
        }
    });
})();


   // -----------------Banner Slider-------------------
   var swiper = new Swiper(".banner-slider", {
    loop: true,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
    autoplay: {
      delay: 5000,
      disableOnInteraction: false,
    },
    breakpoints: {
      320: {
        slidesPerView: 1,
        spaceBetween: 10,
      },
      640: {
        slidesPerView: 1,
        spaceBetween: 10,
      },
      1024: {
        slidesPerView: 1,
        spaceBetween: 10,
      },
      1440: {
        slidesPerView: 1,
        spaceBetween: 10,
      },
    },
  });
 
 
 // -----------------Our Team Slider-------------------
  var swiper = new Swiper(".our-team-slider", {
    loop: true,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
    autoplay: {
      delay: 3000,
      disableOnInteraction: false,
    },
    breakpoints: {
      320: {
        slidesPerView: 1,
        spaceBetween: 20,
      },
      640: {
        slidesPerView: 2,
        spaceBetween: 20,
      },
      1024: {
        slidesPerView: 3,
        spaceBetween: 20,
      },
      1440: {
        slidesPerView: 3,
        spaceBetween: 20,
      },
    },
  });

  // -----------------Counter------------------------
  function startCounter(element) {
    let target = parseInt(element.getAttribute("data-target"));
    let start = 0;
    let duration = 2000; // Counter animation duration in ms
    let increment = target / (duration / 10); // Calculate step increment
    let interval = setInterval(() => {
        start += increment;
        element.innerText = `+${Math.floor(start)}`;
        if (start >= target) {
            element.innerText = `+${target}`;
            clearInterval(interval);
        }
    }, 10);
}

let observer = new IntersectionObserver(entries => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            let counterElement = entry.target.querySelector(".counter");
            if (!counterElement.classList.contains("counted")) {
                counterElement.classList.add("counted"); // Prevents retriggering too fast
                startCounter(counterElement);
            }
        } else {
            entry.target.querySelector(".counter").classList.remove("counted"); // Allows restart when scrolling again
        }
    });
}, { threshold: 0.5 });

document.querySelectorAll(".facts-container").forEach(container => observer.observe(container));

// -----------------------------Video Play-----------------------------------
document.getElementById("playButton").addEventListener("click", function() {
  let thumbnail = document.getElementById("videoThumbnail");
  let playButton = document.getElementById("playButton");
  let videoFrame = document.getElementById("videoFrame");

  // Hide image and play button
  thumbnail.style.display = "none";
  playButton.style.display = "none";

  // Show video
  videoFrame.style.display = "block";

  // Start playing the video (For YouTube, append '?autoplay=1' to the src)
  videoFrame.src += "&autoplay=1";
});

// ----------------------Gallery Tab--------------------------------------
function openGallery(event, tabId) {
  // Hide all tab content
  document.querySelectorAll(".gallery-tab-content").forEach(content => content.classList.remove("active"));
  // Remove active class from all tabs
  document.querySelectorAll(".gallery-tab").forEach(tab => tab.classList.remove("active"));

  // Show the selected tab content
  document.getElementById(tabId).classList.add("active");
  // Set the clicked tab as active
  event.currentTarget.classList.add("active");
}

function openPopup(button) {
  const imageSrc = button.previousElementSibling.src; // Get the image source
  document.getElementById("popup-img").src = imageSrc; // Set popup image
  document.getElementById("popup").style.display = "flex"; // Show popup
}

function closePopup() {
  document.getElementById("popup").style.display = "none"; // Hide modal
}

// --------------------Video Show----------------------------
function openVideo(videoUrl) {
  const iframe = document.getElementById("video-frame");
  iframe.src = videoUrl; // Set video source
  document.getElementById("popup-video").style.display = "flex"; // Show popup
}

function closeVideo() {
  const iframe = document.getElementById("video-frame");
  iframe.src = ""; // Reset iframe to stop playback
  document.getElementById("popup-video").style.display = "none"; // Hide modal
}