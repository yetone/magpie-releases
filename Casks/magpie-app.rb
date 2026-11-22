cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4668"
  sha256 arm:   "9b33c92a34c81c1a990d3257ddf987ac689a56321f7ae0ee97696456e5bcf008",
         intel: "73d67b0c312475907847358ca688150ac8986403e5d32863d9b7e95afbd01581"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
