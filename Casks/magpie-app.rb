cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2040"
  sha256 arm:   "c876c79343a325ff5998f25b2a3e598cbddf089e96c82af53dbd283a01a56549",
         intel: "80ff5b991305dbe3e832a17d4b3d5bf91f48e94f8cc1be812095ac05ea05d413"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
