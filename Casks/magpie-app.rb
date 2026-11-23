cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4722"
  sha256 arm:   "ec3b673496d08d139aec91323c37de0206908741e46889756f5e3c52de692e17",
         intel: "77e31d28d15460338f201d19c2b5a6c5f6836e5924417ffa60791b5dbec52bda"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
