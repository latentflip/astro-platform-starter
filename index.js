const deploy_id = window.location.hash.slice(1) || "DEPLOY_ID";

const doFetch = (deploy_id) => {
  return fetch(`/lazy.sha.html?dpl=${deploy_id}`)
    .then((res) => res.text())
    .then((text) => {
      alert("fetched:" + text);
      return text;
    });
};

doFetch(deploy_id).catch((err) => {
  console.error("error fetching lazy:", err);
});

window.doFetch = doFetch;
