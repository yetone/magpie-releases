cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3953"
  sha256 arm:   "e19eafb2e94409d7b6e185ad7a008ebb0d7d45dc21e17d17f2108f26a7ea86ef",
         intel: "d9767d489327ab3b918b6689a9d939e338ece7956f75dc759b2d86f14d16541c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
