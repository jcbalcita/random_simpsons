const filterGoldenSeasonEpisodes = row => {
  const episodeNumber = parseInt(row.children[0].innerText)
  return episodeNumber > 13 && episodeNumber < 179
}

const episodeRows = Array.from(document.getElementsByClassName('vevent')).filter(filterGoldenSeasonEpisodes);

let season = 1;

const episodes = {}

episodeRows.forEach(r => {
  const overall_episode_number = parseInt(r.children[0].innerText);
  const season_episode_number = parseInt(r.children[1].innerText);
  const title = r.children[2].innerText;
  const writer = r.children[4].innerText;
  const original_air_date = r.children[5].innerText;

  if (season_episode_number === 1) {
    season++;
  }

  const episodeInfo = {
    season,
    season_episode_number,
    title,
    writer,
    original_air_date
  }

  episodes[overall_episode_number] = episodeInfo;
});

JSON.stringify(episodes);