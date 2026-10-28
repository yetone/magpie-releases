cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1948"
  sha256 arm:   "a575fe025211a1f67d198770d4548cc7c29a32ef125e53c25e1891c8d0beec3e",
         intel: "7e67ff4934337cda03106725abf3137a475ef33ca8a104670e374271e1d19de0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
